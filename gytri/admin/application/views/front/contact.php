
<style type="text/css">
   
 .error {
      margin-left: 10px;
      width: auto;
      /*display: inline;*/
      color: red;
   }
   span{
   	color: green;
   }

</style>
	<!-- Page top Section end -->
	<section class="page-top-section set-bg" data-setbg="<?php echo base_url()?>loans2go/img/page-top-bg/4.jpg">
		<div class="container">
			<h2>Contact</h2>
			<nav class="site-breadcrumb">
				<a class="sb-item" href="<?php echo base_url() ?>">Home</a>
				<span class="sb-item active">Contact</span>
			</nav>
		</div>
	</section>
	<!-- Page top Section end -->

	<!-- Contact Section end -->
	<section class="contact-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="contact-text">
						<h2>Get in touch</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tem por incididunt ut labore et dolore mag na aliqua.  Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hime-naeos. Suspendisse potenti. </p>
						<ul>
							<li><i class="flaticon-032-placeholder"></i>1525  Loans Lane, Los Angeles, CA</li>
							<li><i class="flaticon-029-telephone-1"></i>+1 (603)535-4592</li>
							<li><i class="flaticon-025-arroba"></i>hello@youremail.com</li>
							<li><i class="flaticon-038-wall-clock"></i>Everyday: 06:00 -22:00</li>
						</ul>
						<div class="social-links">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-instagram"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
							<a href="#"><i class="fa fa-pinterest"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-youtube-play"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
						<span  id="succ"></span>
					<form class="contact-form" name="contact_form" id="contact_form" method="post" action="<?php echo base_url('details/store') ?>">
						<div class="row">
							<div class="col-md-6">
								<input type="text" name="name" id="name" placeholder="Your Name">
							</div>
							<div class="col-md-6">
								<input type="email" name="email" id="email" placeholder="Your E-mail">
							</div>
							<div class="col-md-12">
								<input type="text" name="phone" id="phone" placeholder="Phone">
								<textarea placeholder="Your Address" name="address" id="address"></textarea>
								<button class="site-btn">send message</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!--<div class="map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d10784.188505644011!2d19.053119335158936!3d47.48899529453826!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1543907528304" style="border:0" allowfullscreen></iframe>
			</div>-->
		</div>
	</section>
	<!-- Contact Section end -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.js"></script>  

<script type="text/javascript">
 
   /*$("form[name='contact_form']").validate({*/
   $("#contact_form").validate({
    
    rules:{  name: "required",
             // address:'required',
             phone:{
                  required:true,
                    minlength:9,
                    maxlength:10,
                    number: true
               },
            
           
            email: {
               required: true,
               email: true
            },
        },
   
    messages: {
      name: "Please enter your firstname",
     
    },
    errorPlacement: function(error, element) {
            if (element.type == 'checkbox') {
                error.appendTo(element.parent());
            }
            else {
                error.insertBefore(element);
            }
        },
   
    submitHandler: function(form) {
      // form.submit();
        var name= $('#name').val();
      var email= $('#email').val();
      var phone=  $('#phone').val();
      var add=  $('#address').val();
       $.ajax({
         
          url: form.action,
                type: form.method,
               
                 data: {name: name,email:email,phone:phone,address:add},
             
      success:function(data)
      {
        console.log(data);
          // alert(data);
        var html;
      $('#contact_form')[0].reset();
        // html='<span class="alert alert-success">Your record save successfully</span>';
         $('#succ').text('Your record save successfully');
     }
        
      });   
      
        return false;  //This doesn't prevent the form from submitting.
    }
  });
	

	</script>