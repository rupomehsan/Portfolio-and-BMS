<?php 
include "DB.php";

class user{

	private $table='user_table';
	private $firstname;
	private $lastname;
	private $email;
	private $phone;
	private $message;
	private $date;



	public function  firstname($firstname){
		$this->firstname= $firstname;
	}
	public function lastname($lastname){
		$this->lastname= $lastname;
	}
	public function  phone($phone){
		$this->phone= $phone;
	}
	public function  email($email){
		$this->email= $email;
	}
	public function  message($message){
		$this->message= $message;
	}
	public function  date($date){
		$this->date= $date;
	}




public function insert(){

	$sql= "INSERT INTO $this->table (user_firstname,user_lastname,user_email,user_phone,user_massage,post_time) VALUES (:firstname,:lastname,:email,:phone,:message,:postime)";
	$stmt= DB::prepare($sql);
	$stmt->bindParam(':firstname',$this->firstname);
	$stmt->bindParam(':lastname',$this->lastname);
	$stmt->bindParam(':email',$this->email);
	$stmt->bindParam(':phone',$this->phone);
	$stmt->bindParam(':message',$this->message);
	$stmt->bindParam(':postime',$this->date);
	return $stmt->execute();
}

public function readbyid($id){
	$sql="SELECT * FROM $this->table WHERE user_id=:id";
	$stmt=DB::prepare($sql);
	$stmt->bindParam(':id',$id);
	$stmt->execute();
	return $stmt->fetch();
}
public function readAll($table){
	$sql="SELECT * FROM  $table limit 2";
	$stmt=DB::prepare($sql);
	$stmt->execute();
	return $stmt->fetchAll();
}
public function readAllpost($table){
	$sql="SELECT * FROM  $table";
	$stmt=DB::prepare($sql);
	$stmt->execute();
	return $stmt->fetchAll();
}


// public function readAll(){
// 	$sql="SELECT * FROM  $this->table";
// 	$stmt=DB::prepare($sql);
// 	$stmt->execute();
// 	return $stmt->fetchAll();
// }



	

}


?>
