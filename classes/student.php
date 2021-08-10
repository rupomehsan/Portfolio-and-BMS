<?php
include "DB.php";

class student{

    private $table='doner_table';
	private $name;
	private $email;
	private $address;
	private $phone;
	private $social;
	private $gender;
	private $status;
	private $blood;
	private $division;
	private $image;
	private $search;
	private $srdivision;
	private $logname;
	private $logpass;
	private $date;


	public function  setName($name){
		$this->name= $name;
	}
	public function setEmail($email){
		$this->email= $email;
	}
	public function  setPhone($phone){
		$this->phone= $phone;
	}
	public function  setAddress($address){
		$this->address= $address;
	}
	public function  setSocial($social){
		$this->social= $social;
	}
	public function  setGender($gender){
		$this->gender= $gender;
	}
	public function  setStatus($status){
		$this->status= $status;
	}
	public function  setBlood($blood){
		$this->blood= $blood;
	}

	public function  setDivision($division){
			$this->division= $division;
		}
	public function  setImage($image){
			$this->image= $image;
		}
	public function  setsearch($search){
			$this->search= $search;
		}
	public function  setsrdivision($srdivision){
		$this->srdivision= $srdivision;
	}
	public function  setLogname($logname){
		$this->logname= $logname;
	}
	public function  setLogpass($logpass){
		$this->logpass= $logpass;
	}
	public function  setDate($date){
		$this->date= $date;
	}




public function insert(){

	$sql= "INSERT INTO $this->table (user_name,user_email,user_phone,user_address,user_social,user_gender,user_status,user_blood,user_division,user_image,user_time) VALUES (:name,:email,:phone,:address,:social,:gender,:status,:blood,:division,:image,:usrdate)";
	$stmt= DB::prepare($sql);
	$stmt->bindParam(':name',$this->name);
	$stmt->bindParam(':email',$this->email);
	$stmt->bindParam(':phone',$this->phone);
	$stmt->bindParam(':address',$this->address);
	$stmt->bindParam(':social',$this->social);
	$stmt->bindParam(':gender',$this->gender);
	$stmt->bindParam(':status',$this->status);
	$stmt->bindParam(':blood',$this->blood);
	$stmt->bindParam(':division',$this->division);
	$stmt->bindParam(':image',$this->image);
	$stmt->bindParam(':usrdate',$this->date);
	return $stmt->execute();
}


public function readAll($table){


	$sql="SELECT * FROM  $table ORDER BY user_id DESC ";
	$stmt=DB::prepare($sql);
	$stmt->execute();
	return $stmt->fetchAll();
}


public function readbyid($id){
	$sql="SELECT * FROM $this->table WHERE user_id=:id";
	$stmt=DB::prepare($sql);
	$stmt->bindParam(':id',$id);
	$stmt->execute();
	return $stmt->fetch();
}

public function searchall($table){
   
    $search=$this->search;
    $srdivision=$this->srdivision;
    // var_dump($search);

	$sql="SELECT * FROM  $table  WHERE (user_name LIKE '%$search%' OR user_blood LIKE '%$search%' OR user_phone LIKE '%$search%' or user_division LIKE '%$search%'  or user_address LIKE '%$search%') and user_division LIKE '%$srdivision%' ";
	//var_dump($sql);
	//die;
	$stmt=DB::prepare($sql);
	$stmt->execute();
	return $stmt->fetchAll();
}



public function femalenum($phone){
	   $result=substr($phone,0,4);
	   $result.="****";
	   $result.=substr($phone,7,4);
	   	return $result;
}
public function nullvelu($data){
	   $result="N/A";
	   	return $result;
}



// public function pagination($table){
// 	$limit=25;
// 	$page=isset($_GET['page'])?$_GET['page']:1;
// 	$start=($page-1)*$limit;
// 	$sql="SELECT * FROM  $table limit $start,$limit";
// 	$stmt=DB::prepare($sql);
// 	$stmt->execute();
// 	return $stmt;
// }


public function login($table){


	$sql="SELECT * FROM $table WHERE user_name=:logname AND user_password=:logpass ";
	$stmt=DB::prepare($sql);
	$stmt->bindParam(':logname',$this->logname);
	$stmt->bindParam(':logpass',$this->logpass);
	$stmt->execute();
	return $stmt;
}






}


?>
