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

 }



 ?>
 <div id="home1"></div>

    <div class="register">
             <div class="all-doner-top container">
                 <h2 style="color: white;color: white; font-size: 23px;text-transform: uppercase;text-align: center;margin-bottom: 40px;">All blood doner list</h2>
                 <div class="col-md-5 col-xs-12" >
                     <div class="col-md-6 col-xs-6"><div class="button"><a href="index.php">Home </a></div></div>
                     <div class="col-md-6 col-xs-6"><div class="button"><a href="blood-registrasion">Registrasion </a></div></div>


                 </div>
                 <div class="col-md-7 col-xs-12 mb-20">
                  <form method="GET" action="search-doner">

                       <div class="form-group dvsn-btn" style="width: 40%; display: inline-block;" >
                            <select class="form-control" name="division" >
                             <option class="" value="" >Division</option>
                                
                             <?php


                              foreach ($user->readall('user_division') as $key => $value) {?>
                                
                                
                               <option value="<?php echo $value['user_division']?>" <?php if(isset($_POST['division']) and ($_POST['division']==$value['user_division'])) echo 'selected' ?> ><?php echo $value['user_division']?></option>

                              <?php }  


                               ?>

                            </select>
                        </div>
                  
                     
                 
                          <input type="text" name="search" placeholder="Search....." >
                          <button type="submit"><i class="fa fa-search"></i></button>
                         

                </form>
                </div>
                 
             </div>


                    <div class="all-doner container pb-20" style="overflow-x:auto; overflow: scroll;height: 800px;">


                                        <table>
                                          <tr>
                                            <th>Id</th>
                                            <th class="name">Name</th>
                                            <th>Phone</th>
                                            <th>Email</th>
                                            <th>Address</th>
                                            <th>Blood Group</th>
                                             <th>Division</th>
                                            <th>Gender</th>
                                             <th>View Detailse</th>
                                          </tr>

                                          <?php

                                            $i=0;
                                            foreach ($user->readAll('doner_table') as $key => $value) {
                                            $i++;

                                            ?>

                                          <tr>
                                             <td><?php echo $i;?></td>
                                             <td><?php echo $value['user_name'];?></td>

                                             <td>
                                                 <?php

                                                    if ($value['user_gender']=="Female") {

                                                    echo $user->femalenum($value['user_phone']);
                                                    }else{

                                                    echo $value['user_phone'];
                                                    }
 
                                                 ?>
                                              

                                            </td>

                                          
                                              <td>
                                                 <?php

                                                    if ($value['user_email']=="") {

                                                    echo $user->nullvelu($value['user_email']);
                                                    }else{

                                                    echo $value['user_email'];
                                                    }
 
                                                 ?>
                                              

                                            </td>
                                            
                                            <td><?php echo $value['user_address'];?></td>
                                            <td><?php echo $value['user_blood'];?></td>
                                             <td><?php echo $value['user_division'];?></td>
                                            <td><?php echo $value['user_gender'];?></td>
                                            <!-- <td><img src="images/profile.jpg" height="100" width="100"></td> -->
                                             <td>

                                              <?php echo "<a href='doner-detailse?action=view&id=".$value['user_id']."'></>"; ?><i class="fa fa-plus-circle" aria-hidden="true"></i></a>


                                             </td>

                                          </tr>

                                          <?php } ?>



                                        </table>


                    </div>

       



            <div class="demo">
                     <nav class="pagination-outer" aria-label="Page navigation">
                        <ul class="pagination">
                               <li class="page-item active">
                                <a href="#" class="page-link" aria-label="Previous">
                                    <span aria-hidden="true">«</span>
                                </a>
                               </li>

                               <li class="page-item"><a class="page-link" href="#">1</a></li>


                             <li class="page-item active">
                                <a href="#" class="page-link" aria-label="Next">
                                  <span aria-hidden="true">»</span>
                                </a>
                             </li>
                        </ul>
                    </nav>
               <h3 class="notice"><span>[***]Notice:</span> female number only for emergency service.if you want to emergency service you can  contact with admin...</h3>
            </div>



<?php

include('includes/footer.php');

 ?>
