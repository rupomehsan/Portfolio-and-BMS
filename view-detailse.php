<?php

include('includes/header.php');
spl_autoload_register(function($class){
    include "classes/".$class.".php";
});

 ?>
<?php

$user= new student();
if (isset($_GET ['action']) && $_GET ['action'] == 'view') {
     $id=(int)$_GET ['id'];
    $result=$user->readbyid($id);

 }
?>
<div class=" register view-doner">
                <div class="row container">
                    <div class="col-md-3 col-xs-12 col-sm-12 register-left">
                        <h3 class="top-border">Image</h3>
                          <td>
                             <?php

                                if($result['user_image']!=''){

                              ?>
                                <img src="admin/uploads/<?php echo $result['user_image'];?>"alt=""/>

                              <?php

                                }
                                else{

                              ?>
                               <img src="images/avatarmale.jpg"/>

                              <?php } ?>

                            </td> 

                            <button type="btn" ><a href="blood-doner-list" style="color: white;border:1px solid white;padding:10px;">ALL DONER</a></button>
                            <button type="btn" ><a href="blood-registrasion" style="color: white;border:1px solid white;padding:10px;">REGISTRASION</a></button>


                    </div>
                    <div class="col-md-9 col-xs-12 ">


                    <h3 style="color:white;text-transform: capitalize;text-align: center;">“Doner information detailse.”</h3><br/>
                   <div class="register-table">
                       
           
                <table class="table">
                    <tr>
                        <td>Name</td>
                        <td>:</td>
                        <td><?php echo $result['user_name']; ?></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>:</td>
                          <td>
                             
                         <?php

                                if ($result['user_email']=="") {

                                echo $user->nullvelu($result['user_email']);
                                }else{

                                echo $result['user_email'];
                                }

                             ?>

                        </td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td>:</td>
                        <td>
                            <?php
                                if ($result['user_gender']=="Female") {

                                echo $user->femalenum($result['user_phone']);
                                }else{

                                echo $result['user_phone'];
                                }
                             ?>
                        </td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>:</td>
                        <td><?php echo $result['user_address']; ?></td>
                    </tr>
                     <tr>
                        <td>Social links</td>
                        <td>:</td>
                        <td>
                        
                        
                         <?php

                                if ($result['user_social']=="") {

                                echo $user->nullvelu($result['user_social']);
                                }else{

                                echo $result['user_social'];
                                }

                             ?>
                        </td>
                        
                    </tr>
                     <tr>
                        <td>Blood group</td>
                        <td>:</td>
                        <td><?php echo $result['user_blood']; ?></td>
                    </tr>
                     <tr>
                        <td>Gender</td>
                        <td>:</td>
                         <td><?php echo $result['user_gender']; ?></td>
                    </tr>
                      <tr>
                        <td>Division</td>
                        <td>:</td>
                        <td><?php echo $result['user_division']; ?></td>
                    </tr>
                     <tr>
                        <td>Donate status(Donate before?)</td>
                        <td>:</td>
                         <td><?php echo $result['user_status']; ?></td>
                    </tr>

                    <tr>
                        <td>Registration Time</td>
                        <td>:</td>
                        <td><?php echo $result['user_time']; ?></td>
                    </tr>
                </table>
        </div>
                </div>

            </div>
    </div>


<?php

include('includes/footer.php');

 ?>
