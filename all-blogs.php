<?php

include('includes/header.php');
spl_autoload_register(function($class){
    include "classes/".$class.".php";
});

 ?>


    <section class="blog all-blog" id="my-blog" style="background: -webkit-linear-gradient(left, #3931af, #00c6ff);">
       <div class="container">
           <h3>all blgos</h3>
                 

                    <div class="row"> 
                         <?php

                       spl_autoload_register(function($class){
                       include "classes/".$class.".php";});
                       $user= new user();
                       foreach ($user->readAllpost('blog_table') as  $value) {
                     ?>
                      <div class="col-md-4 col-sm-6 col-xs-12">
                          <div class="serviceBox">
                              <div class="service-icon">
                                <img  src="admin/uploads/<?php echo $value['blog_image'];?>" height="200" href="index.php">
                              </div>
                              <div class="service-content blog-box">
                                  <h3 class="title"><?php echo $value['blog_title']?></h3>
                                  <p class="description"><?php echo strlen($value['blog_des'])>150?substr($value['blog_des'],0,150)."...":$value['blog_des'] ?></p>
                                   <div class="blog-bottom">
                                        <div class="left col-md-6 col-sm-6 col-xs-6">
                                          <button type="btn">
                                             <?php echo "<a href='blog-detailse?action=view&id=".$value['blog_id']."'>read more....</a>"; ?>
                                          </button>
                                        </div>
                                    <div class="right col-md-6 col-sm-6 col-xs-6">
                                       <p>posted on :<span><?php echo $value['post_time']?></span></p>
                                    </div>
                              </div>
                              </div>
                             
                          </div>
                         </div>

                         <?php  } ?>

                       </div>
            
         
         
      </div>
   </section>

<?php
include('includes/footer.php');

 ?>
