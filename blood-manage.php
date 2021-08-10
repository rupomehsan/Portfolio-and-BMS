<?php
include('includes/header.php');
spl_autoload_register(function($class){
    include "classes/".$class.".php";
});
?>
<div id="home1"></div>
	<div class="register pb-20">
                <div class="row">
                    
                    <div class="col-md-3 register-left">
                    	<div class="hide-btn">
                    		 <button type="btn" ><a href="blood-doner-list" style="color: white;border:1px solid white;padding:10px;background: rgba(0, 0, 0, 0.6);">SEE ALL BLOOD DONOR</a></button>
                    
                    	</div>
                        <img src="images/blood.png" alt=""/>
                        <h3>Welcome To Donating Blood</h3><br/>
                        <h6 style="padding: 0px 10px;">“If you’re a blood donor, you’re a hero to someone, somewhere, who received your gracious gift of life.”</h6><br/>
                           <button type="btn" ><a href="blood-doner-list" style="color: white;border:1px solid white;padding:10px;background: rgba(0, 0, 0, 0.6);">SEE ALL BLOOD DONOR</a></button>
                    </div>
                    
                    <div class="col-md-9 register-right">
                       <?php
								$user= new student();
								date_default_timezone_set('Asia/dhaka');
								$datetime= date("Y/m/d H:i:s") ;
								$Error="<span style='color:red;font-size:20px;margin-left:10%;text-transform:uppercase'>field is required !!!!</span>";
								$nameErr = $addressErr = $phoneErr = $divisionErr = $bloodErr ="";
								$name = $addressErr = $phone = $blood = $division = "";

								    if (isset($_POST ['submit'])) {

											function test_input($data) {
											  $data = trim($data);
											  $data = stripslashes($data);
											  $data = htmlspecialchars($data);
											  return $data;
											}
								    	
								    	 if (empty($_POST["name"])) {

											    $nameErr = "Name is required";
											     } else {
											    $name = test_input($_POST["name"]);
											    // check if name only contains letters and whitespace
											    if (!preg_match("/^[a-zA-Z. ]*$/",$name)) {
											      $nameErr = " ''Name will be Only letters and white space ''  ";
											      
											    }
											      elseif  (strlen($name)< 5) {
											      $nameErr = " ''Name is too short ''  ";
											      
											    }
											    
											}
											
											 if (empty($_POST["email"])) {
												    $emailErr = "Email is required";
												  } else {
												    $email = test_input($_POST["email"]);
												    // check if e-mail address is well-formed
												    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
												      $emailErr = " Invalid email format '' ";
												    }
												  }

												   if (empty($_POST["phone"])) {
												    $phoneErr = "phone is required";
												  } else {
												    $phone = test_input($_POST["phone"]);
												  
												    if (!preg_match("/^[0-9]{11}$/",$phone )) {
												      $phoneErr = "Invalid phone format '' ";
												    }
												  }

												     if (empty($_POST["division"])) {
												    $divisionErr = "division is required";
												  } else {
												    $division = test_input($_POST["division"]);
												    
												  }

												    if (empty($_POST["blood"])) {
												    $bloodErr = "blood group is required";
												  } else {
												    $blood = test_input($_POST["blood"]);
												   
												   
												  }
												     if (empty($_POST["address"])) {
												    $addressErr = "please enter your address";
												  } else {
												    $address = test_input($_POST["address"]);
												   
												   
												  }


											if ($nameErr!=""  or $phoneErr!="" or $divisionErr!="" or $bloodErr!="" or $addressErr!="" ) {
												  echo $Error;
												  echo $nameErr;
												  echo $phoneErr;
												  echo $divisionErr;
												  echo $bloodErr;
												  echo $addressErr;


												}else{
													$name=$_POST ['name'];
											        $email=$_POST ['email'];
											        $phone=$_POST ['phone'];
											        $address=$_POST ['address'];
			                                        $social=$_POST ['social'];
			                                        $gender=$_POST ['gender'];
			                                        $status=$_POST ['status'];
			                                        $blood=$_POST ['blood'];
			                                        $date=$datetime;
			                                        $division=$_POST['division'];
			                                        
			                                        
			                                        $permited  = array('jpg', 'jpeg', 'png', 'gif','');
			                                        $image=$_FILES['image']['name'];
			                                        $div = explode('.', $image);
                                                    $file_ext = strtolower(end($div));
			                                        $file_size = $_FILES['image']['size'];
			                                        $tempname=$_FILES['image']['tmp_name'];
			                                        $folder='admin/uploads/';
			                                        move_uploaded_file($tempname,$folder.$image);
			                                        
			                                        
											        $user->setName($name);
											        $user->setEmail($email);
											        $user->setPhone($phone);
											        $user->setAddress($address);
			                                        $user->setSocial($social);
			                                        $user->setGender($gender);
			                                        $user->setStatus($status);
			                                        $user->setBlood($blood);
			                                        $user->setDivision($division);
			                                        $user->setImage($image);
			                                        $user->setDate($date);
										      
											 }
											  if ($file_size >1048567) {
                                                     echo "<span class='error'>Image Size should be less then 1MB!
                                                     </span>";
                                            
                                                    } elseif (in_array($file_ext, $permited) === false) {
                                                     echo "<span style='color:red;font-size:20px;margin-left:20%;'>You can upload only:-"
                                                     .implode(', ', $permited)."</span>";
                                                    }

								      
										        elseif ($user->insert()) {
										           echo "<span class='sccess' style='color:green;font-size:20px;margin-left:20%;'>Registraion successfully done </span>";
										           echo "<span ><a href='blood-registrasion' style='color: white;border:1px solid white;padding:10px;background: rgba(0, 0, 0, 0.6);'>Registrasion again</a></span>";
										           
                                                 
										        }
								        

								    }

								?>

                             
      <h5 class="register-heading">[ "<span style="color:red;font-size: 30px;margin-top: 20px;"> * </span> " Field is must be required !!! ]</h5>
                                    <h3 class="register-heading">Registrasion As A Donor</h3>

                                <div class="row register-form">
                                    
                                	<form action="" method="post" enctype="multipart/form-data"  name="myForm">
	                                    <div class="col-md-6">
	                                        <div class="form-group">
	                                           <h5 style="padding-bottom: 10px;">Name : <span style="color:red;">*</span></h5>
	                                           <input type="text" class="form-control" name="name" placeholder="Full Name *" value="<?php if(isset($_POST['name'])) echo $_POST['name']?>" required />
	                                        </div>
	                                         <div class="form-group">
	                                          <h5 style="padding-bottom: 10px;">Email : </h5>
	                                          <input type="email" class="form-control" name="email" placeholder="Your Email *" value="<?php if(isset($_POST['email'])) echo $_POST['email']?>" />
	                                        </div>
	                                         <div class="form-group">
	                                         	<h5 style="padding-bottom: 10px;">Address : <span style="color:red;">*</span></h5>
	                                            <input type="text" class="form-control" name="address" placeholder="Address *" value="<?php if(isset($_POST['address'])) echo $_POST['address']?>" required />
	                                        </div>
	                                        <div class="form-group">
	                                        	 <h5 style="padding-bottom: 10px;">Blood Group : <span style="color:red;">*</span></h5>
	                                             <select class="form-control" name="blood" required>  
	                                             <option class="" value=""   >Select Your Blood group</option>
	                                             <?php
                                                  foreach ($user->readAll('user_bloodgroup') as $key => $value) 
                                                  {?>

                                                 
                                                  	
                                                  <option value="<?php echo $value['user_bloodgp']?>" <?php if(isset($_POST['blood']) and ($_POST['blood']==$value['user_bloodgp'])) echo 'selected' ?> ><?php echo $value['user_bloodgp']?></option>

                                                   <?php }  ?>
	                                            </select>

	                                         </div>


	                                        <div class="custom-file">
	                                        	<h5 style="padding-bottom: 10px;">Image : </h5>
                    							<input type="file" class="custom-file-input" id="customFile" name="image" >
                    							<label class="custom-file-label" for="customFile"></label>
                    					   </div>

	                                    </div>

	                                    <div class="col-md-6">
	                                    	<div class="form-group">
	                                    		<h5 style="padding-bottom: 10px;">Social Link :</h5>
	                                            <input type="text" class="form-control" name="social" placeholder="Soicial Link" value="<?php if(isset($_POST['social'])) echo $_POST['social']?>" />
	                                        </div>

	                                        <div class="form-group">
	                                        	 <h5 style="padding-bottom: 10px;">Phone : <span style="color:red;">*</span></h5>
	                                            <input type="number" minlength="11" maxlength="11" name="phone" class="form-control" placeholder="Your Phone *" value="<?php if(isset($_POST['phone'])) echo $_POST['phone']?>" required />
	                                        </div>
	                                        <div class="form-group">
	                                        	<h5 style="padding-bottom: 10px;">Division : <span style="color:red;">*</span></h5>
	                                            <select class="form-control" name="division" required>
                                                 <option class="" value="" >Select Your Division</option>
	                                                
	                                             <?php


                                                  foreach ($user->readall('user_division') as $key => $value) {?>
                                                  	
                                                  	
                                                   <option value="<?php echo $value['user_division']?>" <?php if(isset($_POST['division']) and ($_POST['division']==$value['user_division'])) echo 'selected' ?> ><?php echo $value['user_division']?></option>

                                                  <?php }  


	                                               ?>

	                                            </select>
	                                        </div>

	                                         <div class="form-group" style="">
	                                        	<h5 style="padding-bottom: 10px;">Gender : <span style="color:red;">*</span></h5>
	                                            <div class="maxl">
	                                            	<div class="col-md-6">
		                                                <label class="radio inline">
		                                                    <input type="radio" name="gender" <?php if (isset($_POST['gender']) && $_POST['gender']=="Male") echo "checked";?> value="Male" required > 
		                                                    <span>Male </span>
		                                                </label>
	                                                </div>
	                                                <div class="col-md-6">
	                                                <label class="radio inline">
	                                                   <input type="radio" name="gender" <?php if (isset($_POST['gender']) && $_POST['gender']=="Female") echo "checked";?> value="Female" required > 
	                                                    <span>Female </span>
	                                                </label>
	                                                 </div>
	                                            </div>
	                                        </div>

	                                           <div class="form-group">
	                                        
	                                            <div class="maxl">
	                                            		<h5 style="padding-bottom: 10px;padding-top: 35px;color:green">Are you donate before ? : <span style="color:red;">*</span></h5>
	                                            	
	                                                <div class="col-md-6">
	                                                <label class="radio inline" style="">
	                                                    <input type="radio" name="status" value="NO"  required>
	                                                    <span>NO </span>
	                                                </label>
	                                                 </div>
	                                                 <div class="col-md-6">
		                                                <label class="radio inline">
		                                                    <input type="radio" name="status" value="YES" required>
		                                                    <span> YES </span>
		                                                </label>
	                                                </div>
	                                            </div>
	                                        </div>
                                         
	                                       

	                                    </div>
	                                     <input type="submit" class="btnRegister btnRegister2" name="submit" value="Register"/>
                                    </form>
                                  
                                    
                                </div>

                    </div>
                </div>

            </div>



<?php

include('includes/footer.php');

 ?>
