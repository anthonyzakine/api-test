<?php 
	class StudentsModel{
			public $db;

			public function __construct($db){
				$this->db = $db;
			}
			public function getAll(){
				$query = $this->db->query('
				SELECT 
					*
				FROM 
					students
				ORDER BY 
					first_name ASC
				');

				$students = $query->fetchAll();
				return $students;
			}
			public function getAllStudentsById($id){
				$query = $this->db->query('
				SELECT 
					*
				FROM 
					students
				WHERE 
					id = "'.$id.'"
				');

				$student = $query->fetch();
				return $student;
			}
		}