<?php

include('includes/header.php');
spl_autoload_register(function($class){
    include "classes/".$class.".php";
});

 ?>
<?php 
date_default_timezone_set('Asia/dhaka'); 
$datetime= date("y/m/d H:i:s");
$user= new blog();
if (isset($_GET ['action']) && $_GET ['action'] == 'view') {
     $id=(int)$_GET ['id'];
    $result=$user->redbypostid('blog_table',$id);

 }


if (isset($_POST ['submit'])) {
$date=$datetime;
$firstname=$_POST ['firstname'];
$lastname=$_POST ['lastname'];
$comments=$_POST ['comments'];
  if ($firstname=="" or $lastname=="" or $comments=="") {
        echo "field is required";
    }

$user->setfirstname($firstname);
$user->setlastname($lastname);
$user->setcomments($comments);
$user->setdate($date);

if ($user->usercomments('comment_table',$id)) {
    $success=1;
         
      }

}

                             

 ?>

        <section class="blog-page" id="blog">
            <div class="row">
                <div class="col-md-12">

                    <div class="blog-body">
                    	
                        <div class="blog-img">
                              <img  src="admin/uploads/<?php echo $result['blog_image'];?>" height="200">
                        </div>
                        <div class="row">
                            
                            <div class="col-10">
                                <div class="b-right">
                                    <h5><?php echo $result['blog_subtitle']; ?></h5>
                                    <ul>
                                        <li><i class="fa fa-calendar"></i>Post on: <?php echo $result['post_time']; ?></li>
                                        <li><i class="fa fa-user"></i>Admin</li>
                                        <li><i class="fa fa-comment"></i>5 Comments</li>
                                    </ul>
                                    <p>
                                       <?php echo $result['blog_des']; ?>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </section>
    <!--    Blog part end-->

    <!--    comment part start-->
    <section id="comments">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-sm-12">
                    <div class="row">
                        <div class="col-2">
                            <div class="left-line"></div>
                        </div>
                        <div class="col-10">
                            <div class="comments-heading">
                                <h3><span>05</span> comments</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row comment-body">
                         <?php
                        foreach ($user->readcomments('comment_table',$id) as  $value) {
                        ?>
                        <div class="col-2">
                            <div class="comments-img">
                                 <img src="images/smile.jpg" height="100%" width="100%">
                            </div>
                        </div>
                       
                        <div class="col-10">

                            <div class="comments-des">
                                <h5><?php echo $value['first_name']; ?><?php echo $value['last_name']; ?></h5>
                                <span><?php echo $value['date_time']; ?></span>
                                <p><?php echo $value['user_comment']; ?></p>
                            </div>
                            
                        </div>

                    <?php } ?>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--    comment part end-->

    <!--    leave a comment part start-->
    <section id="leave-comment">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="comment-form">
                        <form action="" method="post">
                            <div class="heading">
                                <div class="row">
                                    <div class="col-2">
                                        <div class="left-line"></div>
                                    </div>
                                    <div class="col-10">
                                        <h3>write a comment</h3>
                                    </div>
                                </div>
                            </div>


                            <?php

                              if (isset($success)) {
                                 echo "<span style='color:green;font-size:20px;margin-left:0%;margin-top:10%;'>comments send </span>";
                              }

                            ?>

                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <input type="text" name="firstname" placeholder="Firs name" required>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <input type="text" name="lastname" placeholder="last name" required>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <textarea name="comments" id="" placeholder="Comment" required></textarea>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <button type="submit" name="submit">sbumit comment</button>
                                </div>
                            </div>
                         

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--   hire part end-->

















<?php
include('includes/footer.php');

 ?>
