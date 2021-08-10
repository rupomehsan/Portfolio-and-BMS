<?php 


class blog{

	
	private $firstname;
	private $lastname;
	private $comments;
	private $date;


	public function  setfirstname($firstname){
		$this->firstname= $firstname;
	}
	public function setlastname($lastname){
		$this->lastname= $lastname;
	}

	public function setcomments($comments){
		$this->comments= $comments;
	}
	public function setdate($date){
		$this->date= $date;
	}
	
 public function usercomments($table,$id){

	$sql= "INSERT INTO $table (first_name,last_name,user_comment,blog_id,date_time) VALUES (:firstname,:lastname,:comments,:blogid,:com_time) ";
	$stmt= DB::prepare($sql);
	$stmt->bindParam(':firstname',$this->firstname);
	$stmt->bindParam(':lastname',$this->lastname);
	$stmt->bindParam(':comments',$this->comments);
	$stmt->bindParam(':com_time',$this->date);
	$stmt->bindParam(':blogid',$id);
	return $stmt->execute();
}

public function redbypostid($table,$id){
        $sql="SELECT * FROM $table WHERE blog_id=:id";
		$stmt=DB::prepare($sql);
		$stmt->bindParam(':id',$id);
		$stmt->execute();
		return $stmt->fetch();
    }

public function readcomments($table,$id) {
        $sql="SELECT * FROM $table  WHERE  blog_id=:id order by user_id desc limit 5";
        $stmt= DB::prepare($sql);
        $stmt->bindParam(':id',$id);
		$stmt->execute();
		return $stmt->fetchall(\PDO::FETCH_ASSOC);
    }



	

}


?>
