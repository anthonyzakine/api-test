<?php 
	class PromotionsModel{
		public $db;

		public function __construct($db){
			$this->db = $db;
		}

		public function getAll(){
			$query = $this->db->query('
				SELECT
				*
				FROM
					years
			');

			$promotions = $query->fetchAll();
			return $promotions;
		}
		public function getOneById($id){
			$query = $this->db->query('
				SELECT 
					*
				FROM 
					years
				WHERE 
					id = "'.$id.'"
			');

			$promotion = $query->fetch();
			
			return $promotion;
		}
		public function getAllStudentsByPromotions($id){
			$id = (int)$id;

			$prepare = $this->db->prepare('
				SELECT 
					s.*
				FROM 
					years AS y
				LEFT JOIN 
					students AS s
				ON 
					y.id = s.id_year
				WHERE 
					y.id= :id
			');
			$prepare->bindValue('id',$id);
			$prepare->execute();

			$students = $prepare->fetchAll();
			return $students;
		}


	}