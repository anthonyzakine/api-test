<?php

	require_once __DIR__.'/../vendor/autoload.php';
	require_once __DIR__.'/../models/promotions.class.php';
	require_once __DIR__.'/../models/students.class.php';

	$app = new Silex\Application();
	use Symfony\Component\HttpFoundation\Request;
	use Symfony\Component\Validator\Constraints;

	// SERIVCES
	$app->register(new Silex\Provider\FormServiceProvider());
	$app->register(new Silex\Provider\TranslationServiceProvider());
	$app->register(new Silex\Provider\ValidatorServiceProvider());
	$app->register(new Silex\Provider\TwigServiceProvider(), array(
		'twig.path' => __DIR__.'/../views',
	));

	// URL GENERATOR
	$app->register(new Silex\Provider\UrlGeneratorServiceProvider());

	$app->register(new Silex\Provider\DoctrineServiceProvider(), array(
		'db.options' => array (
        	'driver'    => 'pdo_mysql',
        	'host'      => 'localhost',
        	'dbname'    => 'partiel_silex',
        	'user'      => 'root',
        	'password'  => 'root',
        	'charset'   => 'utf8'
    	),
	));

// 	$app->register(new Silex\Provider\DoctrineServiceProvider(), array(
//     'db.options' => array (
//         'mysql_read' => array(
//             'driver'    => 'pdo_mysql',
//             'host'      => 'azakinechttest.mysql.db',
//             'dbname'    => 'azakinechttest',
//             'user'      => 'azakinechttest',
//             'password'  => 'Testtest01',
//             'charset'   => 'utf8',
//         ),
//         'mysql_write' => array(
//             'driver'    => 'pdo_mysql',
//             'host'      => 'azakinechttest.mysql.db',
//             'dbname'    => 'azakinechttest',
//             'user'      => 'azakinechttest',
//             'password'  => 'Testtest01',
//             'charset'   => 'utf8',
//         ),
//     ),
// ));

	// $app->register(new Silex\Provider\DoctrineServiceProvider(), array(
	// 	'db.options' => array (
 //        	'driver'    => 'pdo_mysql',
 //        	'host'      => 'azakinechttest.mysql.db',
 //        	'dbname'    => 'azakinechttest',
 //        	'user'      => 'azakinechttest',
 //        	'password'  => 'Testtest01',
 //        	'charset'   => 'utf8'
 //    	),
	// ));

	$app['db']->setFetchMode(PDO::FETCH_OBJ);

	// Model
	$promotionsModel = new PromotionsModel($app['db']);
	$studentsModel = new StudentsModel($app['db']);

	// Mail 
	$app->register(new Silex\Provider\SwiftmailerServiceProvider(), array(
	    'swiftmailer.options' => array(
	        'host'       => 'smtp.gmail.com',
	        'port'       => 465,
	        'username'   => 'hetic.p2018.smtp@gmail.com',
	        'password'   => 'heticp2018smtp',
	        'encryption' => 'ssl',
	        'auth_mode'  => 'login'
	    )
	));

	// Options 
	$app['debug'] = true;

	// ROOT
	$app->get('/', function (Request $request) use($app) {
	    $data = array();
	    return $app['twig']->render('pages/home.twig', $data);
	})
	->bind('home');

	$app->get('/promotions', function () use($app, $promotionsModel) {
		$promotions = $promotionsModel->getAll();
	    $data = array(
	    	'promotions' => $promotions,
	    );
	    return $app['twig']->render('pages/promotions.twig', $data);
	})
	->bind('promotions');

	$app->get('/promotion/{id}', function($id) use ($app, $promotionsModel){
    	$promotion = $promotionsModel->getOneById($id);
    	$students = $promotionsModel->getAllStudentsByPromotions($id);
    	$data = array(
    		'students' => $students,
    		'promotion' => $promotion,
    		'id' => $id,
    	);
		return $app['twig']->render('pages/promotion.twig',$data);
	})
	->assert('id','\d+')
	->bind('promotion');
	
	$app->get('/students', function() use ($app, $studentsModel){
    	$students = $studentsModel->getAll();
    	$data = array(
    		'students' => $students,
    	);
		return $app['twig']->render('pages/students.twig',$data);
	})
	->bind('students');	

	$app->get('/student/{id}', function($id) use ($app, $studentsModel){
    	$student = $studentsModel->getAllStudentsById($id);
    	$data = array(
    		'student' => $student,
    		'id' => $id,
    	);
		return $app['twig']->render('pages/student.twig',$data);
	})
	->assert('id','\d+')
	->bind('student');

	$app->get('/contact', function (Request $request) use($app) {
	    $form_builder = $app['form.factory']->createBuilder();
		$form_builder->setMethod('post');
		$form_builder->setAction($app['url_generator']->generate('contact'));
		$form_builder->add(
	        'first_name',
	        'text',
	        array(
	            'label'     => 'Votre nom',
	            'trim'       => true,
	            'max_length' => 50,
	            'required'   => true,
	        )
	    );
	    $form_builder->add(
	        'email',
	        'email',
	        array(
	            'label'     => 'Votre email',
	            'trim'       => true,
	            'max_length' => 50,
	            'required'   => true,
	        )
	    );
	    $form_builder->add(
	        'message',
	        'text',
	        array(
	            'label'     => 'Votre message',
	            'trim'       => true,
	            'max_length' => 500,
	            'required'   => true,
	        )
	    );
	    $form_builder->add('submit', 'submit');
	    $contact_form = $form_builder->getForm();
	    $contact_form->handleRequest($request);
	    if($contact_form->isSubmitted()){
	        $form_data = $contact_form->getData();
	        if($contact_form->isValid()){
            	$message = \Swift_Message::newInstance();
	            $message->setSubject('Message d\'Hetic');
	            $message->setFrom(array('yohan.atlan@hetic.net'));
	            $message->setTo($form_data['email']);
	            $message->setBody('Bonjour '.$form_data['first_name'].' votre demande a bien été prise en compte !');

	            $app['mailer']->send($message);

	            return $app->redirect($app['url_generator']->generate('home'));
	        }
	    }
	    $data = array(
			'contact_form' => $contact_form->createView(),
		);
	    return $app['twig']->render('pages/contact.twig', $data);
	})
	->bind('contact');

	// PAGE 404
	$app->error(function() use ($app){
		$data = array();
		return $app['twig']->render('pages/error.twig',$data);
	});

	$app->run();