<?php include("function.php"); 
$m = new master();
$mysql = new mysql();
$other = new other(); 
$bannershow = 0;
$active='active';?>
<!DOCTYPE html>
<html lang="en"> <!--<![endif]-->
<head>
<title>Share Market Tips | Stock Market Advisory |  Stock Tips Provider</title>
<meta name="robots" content="index, follow" />
<meta name="keyword" content="Share market tips, Stock market advisory , Best stock tips provider, stock market tips for beginners india, stock tips, intraday tips, stock market tips for beginners india, stock market tips for today , stock trading tips provider in india, stock trading tips for intraday , stock trading tips for tomorrow
 " />
<meta name="description" content="Alliance Research is fastest growing advisory firm provide services in Stocks Commodity & Equity market, our aim is to provide maximum profit to our clients" />
<meta http-equiv="content-language" content="en-us" />
<meta name="distribution" content="India" />
<meta name="google-site-verification" content="PLUdVh6hPypFGavDFfG2RUm0LS1KKlg7b3GqhXN82Dg" />
<meta name="google-site-verification" content="0uZWx49JHWt3-Q3LqYor7gONncWpnAIM6gy5tI47iaw" />
<meta name="msvalidate.01" content="5678126CF70C13AD54A19669C64B444D" />
<meta name="p:domain_verify" content="3c0ce49efea942bea748c5c50af51555"/>
<meta name="google-site-verification" content="dCgs-vHyBszvGW7_PhFaTK3H3JG_ipQ51oGUK5R7ef8" />
<meta name="google-site-verification" content="sJmAKW_oqHbFmGmiuA_cdO7oapBPQE59TmJybhrDaKM" />

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-90531626-1', 'auto');
  ga('send', 'pageview');

</script>

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-91814750-1', 'auto');
  ga('send', 'pageview');

</script>

<!-- Global site tag (gtag.js) - Google Ads: 957582478 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-957582478"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-957582478');
</script>


<?php  include_once('include/meta.php'); ?>
<!--form-css-->
<style>
    .request-information2 .input2 {
     padding:0px 10px !important; 
    }
    .box-css textarea {
    margin: 0 0 5px 0; padding:0px 10px !important;  }


.div2 { line-height: 17px !important;}

@media (min-width:768px) {

.box-css { height:420px!important;   margin:45px 0 0 0;}

}
@media (max-width:767px) {

.box-css { height:auto;}

}
.request-information2 label {
    padding: 0px !important;
}
.request-info {
    margin-top: 5px !important;
}
.box-css input {
    margin: 0 0 4px 0 !important;
}

.error {
    color: red;
    font-size: 12px !important;
    font-weight: bold  !important;
    padding: none !important; 
    line-height: none !important;
    padding-top: 0px !important;
}


.ui-state-highlight {
    border: 2px solid red;
    background-color: #ffffd5;
    margin: 0;
    color: red;
}
</style>
<!--form-css-->
</head>
<body>
<?php include_once('include/header.php'); ?>
              
<div class="container">
<div class="col-md-12"><marquee direction="left" onmouseover="this.stop();" onmouseout="this.start();">Kindly Note ALLIANCE RESEARCH Investment Advisory Do Not 
Provide Any Guaranteed Services, Profit/Loss Sharing Services, Portfolio Manegment Services, 
Demat Trading Services And Services Which Are Not Mentioned In OUR WEBSITE 
http://allianceresearch.in/, If Any Person Try To Sell Such Type Of Product Kindly 
Inform Us Through CALL ON "8827753030" OR MAIL US AT "support@allianceresearch.in" . 
Investment in Equity/Commodity Market is Risky & Taking Loan for Investment 
purpose can make it more riskier. Hence, Alliance Research does not suggest anyone to take loan for the 
subscription or Investment purpose. Also, it is strongly Advised to evaluate own credit
risk. Dear tarders and Investors Alliance Research do not have any other branches in the states of India, We only have one office located in Jabalpur MP, and we do not accept payments in personal account except Alliance Research current account.</marquee></div>
<div class="row">
<?php include_once('include/banner.php'); ?>
               <div class="col-md-4">
      <div class="widget-item box-css" style="margin-top:5px;">
        <div class="request-information2">
          <div class="title">
            <h4 class="widget-title" style="font-size: 20px;"> Free Trial</h4>
          </div>
          <div>

<div id="otp_response"></div>
    <div id="free_trial_response"></div>
<div class="clear cap_8"></div>
<form name="form2" method="post" id="validate_otp_form" style="display:none;" >
    <p style="font-size:11px; line-height:12px; color:#fff;margin-top: 14px;">Please Enter the 6 digit confirmation code you recieve</p>
    <div class="clear cap_10"></div>
    <input type="hidden" name="user_id" id="user_id" />
    
      <div class="full-row fullrow">
        <div class="col-md-3 col-sm-3 padd">
          <label for="yourname">OTP:</label>
        </div>
        <div class="col-md-9 col-sm-9 padd">
          <input type="text" id="otp_number" class="input2" name="otp_number" >
        </div>
      </div>    
      <div class="clearfix"></div>
      <div class="full-row">
        <div  align="center">
            <button  type="submit"   name="Submit"   class=" submit-bt">Submit</button>
            
           <div id="flash_otp"></div>
        </div>
        <!-- /.submit-field --> 
        <div class="clearfix"></div>
      </div>    
</form>              
              
            <form  name="form1" method="post" id="validate_trial_form" class="request-info clearfix">
              <input type="hidden" value="seo" name="trial_with" id="trial_with" class="input2" />
              <div class="full-row fullrow">
                <div class="col-md-3 col-sm-3 padd">
                  <label for="yourname">Full Name:</label>
                </div>
                <div class="col-md-9 col-sm-9 padd">
                  <input type="text" id="name" class="input2" name="name" >
                </div>
              </div>
              <div class="clearfix"></div>
              <div class="full-row fullrow">
                <div class="col-md-3 col-sm-3 padd">
                  <label for="email-id">Email</label>
                </div>
                <div class="col-md-9 col-sm-9 padd">
                  <input type="email" class="input2" id="email" name="email" >
                </div>
              </div>
              <div class="clearfix"></div>
              <div class="full-row fullrow">
                <div class="col-md-3 col-sm-3 padd">
                  <label for="mobile">Mobile:</label>
                </div>
                <div class="col-md-9 col-sm-9 padd">
       <input type="text" class="input2" id="mobile" name="mobile" >
              </div>

            
              </div>
              
              <div class="clearfix"></div>
              <div class="full-row fullrow">
                <div class="col-sm-3 col-sm-3 padd" >
                  <label for="city">City:</label>
                </div>
                <div class="col-md-9 col-sm-9 padd">
                  <input type="text" class="input2" id="city" name="city">
                </div>
              </div>
<div class="clearfix"></div>
              <div class="full-row fullrow">
                <div class="col-sm-3 col-sm-3 padd" >
                  <label for="city">Comment:</label>
                </div>
                <div class="col-md-9 col-sm-9 padd">
<textarea  type="text" class="input-2" id="comment" name="comment" maxlength="100"> </textarea>
                  <!--<input type="text" class="input2" id="comment" name="comment">-->
                </div>
              </div>
              <div class="clearfix"></div>
              <label for="opt[]" class="error">Please select maximum 2 option.</label>
              <div class="div2 row">
                <div class="col-md-6 col-sm-6 col-xs-6 ">
                  <input type="checkbox" value="Stock Cash" name="opt[]" />
                  Stock Cash </div>
                <div class="col-md-6 col-sm-6 col-xs-6 ">
                  <input type="checkbox" value="Stock Futures" name="opt[]" />
                  Stock Futures </div>
                <div class="col-md-6 col-sm-6 col-xs-6 ">
                  <input type="checkbox" value="Nifty Futures" name="opt[]" />
                  Nifty Futures </div>
                <div class="col-md-6 col-sm-6 col-xs-6 ">
                  <input type="checkbox" value="Options" name="opt[]" />
                  Options </div>
                <div class="col-md-6 col-sm-6 col-xs-6 ">
                  <input type="checkbox" value="Bullion MCX" name="opt[]" />
                  Bullion MCX </div>
                <div class="clearfix"></div>
              </div>

              <input type="checkbox" id="myCheck" name="myCheck" style="font-size:12px; line-height:10px;"> I agreed all the <a href="https://allianceresearch.in/terms.php" style="color:#fff;">T&C</a>.<label for="myCheck" class="error">Please accept our T&C.</label> 
<P style="font-size:13px; line-height:16px; margin: 0; ">* Dear client 2 days free trial is for observation only.<br>
* Not to do trade during free trails.<br>
* If you are NDNC registered customer and still agree to receive calls and SMS from alliance research.<br>
</p> 
              <div class="clearfix"></div>
              <div class="full-row">
                <div  align="center">
                    <button  type="submit"   name="Submit"   class=" submit-bt">Submit</button>
                    
                   <div id="flash_free_trial"></div>
                </div>
                <!-- /.submit-field --> 
                <div class="clearfix"></div>
              </div>
              <!-- /.full-row -->
              
            </form>
            <div class="clearfix"></div>
          </div>
          <!-- /.request-info --> 
        </div>
        <!-- /.request-information --> 
         <div class="clearfix"></div>
      </div>
      <!-- /.widget-item --> 
      
    </div>
    <!-- /.col-md-4 --> 
        </div>
    </div>


    <div class="container">
        <div class="row">
          
            <!-- Here begin Main Content -->
            <div class="col-md-8">
                <div class="row">
                    <div class="col-md-12">
                        <div class="widget-item">
                             <h1 class="welcome-text">Welcome To Alliance Research </h1>
                            <p>
Alliance Research is an emerging Global Business Conglomerate incorporated by the Proficient Stocks, Commodities and Forex Market veterans after huge success in many different models of technical analysis. Alliance Research well known for its vast experience in technical Analysis for many years now has succeeded and performing exceptionally well in all fields of Commodity Market and Share Market Trading. We are a reputed Indian Trading Analysis Providing firm.</p><p>

Our Strength lies in the expert human resource who understand the basics of trading very well. Thus we are able to provide the Trading Analysis. We understand very well about the complexities a trader faces right from receiving the expert advice till the execution of the trade.</p>
<p>Alliance Research very well understand the importance of Speed, well knowledge, and consistency at which message is to be passed to the trader in order to maximize the benefits. Alliance Research is a professionally run firm with a long-term goal to provide maximum return on investment(ROI) on every investor's money.</p>

<p>Our Experience of many years very well understand the factors that determine a major movement in all aspects of the market. Our Experts very well understand the impact of change in factors such as inflation, Bank Repo Rate, Reverse Repo Rate, GDP Rate, Global factors such is Inventory level in global Commodities Market, factors affecting Crude Price due to uncertainties in Arabian countries, Change that brings the movement in price which is sector specific and Thus we predict the market like no one else does.</p>
<p>We do understand very well that Consistency is always more important than history. We always keep our team ahead by providing sufficient and well knowledge so as to keep our investors well updated on the same and minimize the risk involved in their investments.</p>  
                        </div> <!-- /.widget-item -->
                    </div> <!-- /.col-md-12 -->
                </div> <!-- /.row -->

                <div class="row">
                    
                    <!-- Show Latest Blog News -->
                    <div class="col-md-6">
                        <div class="widget-main">
                            <div class="widget-main-title">
                                <h4 class="widget-title">Track Sheet</h4>
                            </div> <!-- /.widget-main-title -->
                            <div class="widget-inner">
                                 <!-- /.blog-list-post -->
                                 <!-- /.blog-list-post -->
                               
                                <?php $sql="SELECT * from trading where status='1'  ";
$res=mysql_query($sql);
while($row=mysql_fetch_array($res))
{ ?>
                            <?php if($row[fname]!=''){ ?>
                            
                            <div class="blog-list-post clearfix">
                                    <div class="blog-list-thumb">
                                        <a href='uploaded/<?php echo $row[fname];?>'><img src="images/excel.png" alt="<?php  echo  $row[name];?>"></a>
                                    </div>
                                    <div class="blog-list-details">
                                        <h5 class="blog-list-title"><a href="uploaded/<?php echo $row[fname];?>"><?php  echo  $row[name];?></a></h5>
                                        <p class="blog-list-meta small-text"><span><a href="#"><?php  echo $row[date];?></a></span></span></p>
                                    </div>
                                </div>
                           
                       
                        <?php } else {?>
                        
                      
                               
                                 
                                
                                  <?php }}    ?>
                                
                                
                            </div> <!-- /.widget-inner -->
                        </div> <!-- /.widget-main -->
                    </div> <!-- /col-md-6 --> 
                    
                    <!-- Show Latest Events List -->
                    <div class="col-md-6">
                        <div class="widget-main">
                            <div class="widget-main-title">
                                <h4 class="widget-title">Market Update</h4>
                            </div> <!-- /.widget-main-title -->
                            <div class="widget-inner">
                                <div class="event-small-list clearfix">
                              <!--  
<iframe frameborder="0" src="https://www.indianotes.com/widgets/sensex-nifty-charts/index.php?type=charts&w=300&h=300" width="300" height="300" scrolling="no"></iframe></br>
<iframe frameborder="0" src="https://www.indianotes.com/widgets/indices-ticker/index.php?type=indices-ticker&w=300" width="300" height="100" scrolling="no"></iframe><br/><br/> -->
                                  <!-- <img src="http://chart.finance.yahoo.com/t?s=%5eBSESN&amp;lang=en-IN&amp;region=IN&amp;width=300&amp;height=180" alt="finance-yahoo"  style="margin-top:5px;">
                               <br/> <br/><br/> <img src="http://chart.finance.yahoo.com/t?s=%5eNSEI&amp;lang=en-IN&amp;region=IN&amp;width=300&amp;height=175%22%20alt=%22MCX%20Tips,%20Commodity%20Tips,%20Stock%20Advisory" alt="chart-finance-yahoo"  style="margin-top:5px;">-->
                               </div>
                                
                            </div> <!-- /.widget-inner -->
                        </div> <!-- /.widget-main -->
                    </div> <!-- /.col-md-6 -->
                    
                </div> <!-- /.row -->
                
                 <!-- /.row -->

            </div> <!-- /.col-md-8 -->
            
            <!-- Here begin Sidebar -->
            <div class="col-md-4">
<!--<div class="widget-item">
                     
                  <iframe src="http://www.appuonline.com/data/bse-ticker.html" width="100%" height="40px" frameborder="0" scrolling="no"></iframe>
 
   <iframe src="http://www.appuonline.com/data/nse-ticker.html" width="100%" height="40px" frameborder="0" scrolling="no"></iframe> </div>-->
<div class="widget-main">
                    <div class="widget-main-title">
                        <h4 class="widget-title">Events</h4>
                    </div>
                    <div class="widget-inner">
                        <div class="prof-list-item clearfix">
                           <marquee direction="up" height="200" scrollamount="3" onmouseover="this.stop();" onmouseout="this.start();">
<?php 
 for($i=1;$i<=7;$i++)
{ ?>
 <img src="https://allianceresearch.in/event/<?php echo $i;?>.JPG" ><br><br>
<?php  //echo  $row[content]." ".$row[date];?> 
<?php }?> 
</marquee>
                    </div> <!-- /.prof-list-item -->
                         <!-- /.prof-list-item -->
                         <!-- /.prof-list-item -->
                    </div> <!-- /.widget-inner -->
                </div>

                <div class="widget-main">
                    <div class="widget-main-title">
                        <h4 class="widget-title">our certification</h4>
                    </div>
                    <div class="widget-inner">
                        <div class="prof-list-item clearfix">
                           <div class="prof-thumb">
                                <img src="images/campus/campus-logo1.jpg" alt="SEBI">
                            </div> <!-- /.prof-thumb -->
                            <div class="prof-details">
                               
                                <p class="small-text"><strong>SEBI Registration No. - INA000002934</strong> Investment in stock and commodity market are subject to market risk. </p>
                            </div> <!-- /.prof-details -->
                        </div> <!-- /.prof-list-item -->
                         <!-- /.prof-list-item -->
                         <!-- /.prof-list-item -->
                    </div> <!-- /.widget-inner -->
                </div> <!-- /.widget-main -->
<div class="widget-main">
                    <div class="widget-main-title">
                        <h4 class="widget-title">Important Notice</h4>
                    </div>
                    <div class="widget-inner">
                        <div class="prof-list-item clearfix">
                          <p><marquee direction="up" height="200" scrollamount="3" onmouseover="this.stop();" onmouseout="this.start();">1) Trading and investment in equity and commodity market are always subject to market risk, there is always high market risk involve. Profit and loss of the services are totally born by the clients. Please go through our website www.allianceresearch.in for further details<br/>
2) Alliance Research does not have any money refund policy, so before making any payment make sure it will not be refunded in any case, thus before taking free trial & any services of Alliance Research clients should read, Disclaimer, Disclosure, Term of use & Privacy policy of the Firm<br/>
3) Alliance Research with Sebi investment advisor guidelines 2013, so please co-operate in providing kyc to our employees. <br/>
4) Alliance Research do not ask any client or any person to deposit money in any Employee Or any person's personal account details, so never deposit money in any Employee personal account.<br/>
5) Dear clients Alliance Research does not claim/give any assured/ guaranteed return, don't trade on personal calls, trade only in firm Research calls. Please beware of fraud calls/sms<br/></marquee>
</p>
                          
                          
                          
                        </div> <!-- /.prof-list-item -->
                         <!-- /.prof-list-item -->
                         <!-- /.prof-list-item -->
                    </div> <!-- /.widget-inner -->
                </div>
                <div class="widget-main">
                    <div class="widget-main-title">
                        <h4 class="widget-title">Testimonial</h4>
                    </div>
                    <div class="widget-inner">
                        <div id="slider-testimonials">
                        
                          
                           
                            <ul>
                                <li>
                                    <p>It has been great working with Alliance Research. Also a special thank you to Vasundhara, she supported so well with her correct and updated feedback on time.</p><p><strong class="dark-text">Royal </strong></p>
                                </li>
                                <li>
                                    <p>I am satisfied working with Amit(Alliance Reasearch). In market time he supports me a lot. He gives full satisfaction in working in equity market.</p><p>
                                <strong class="dark-text">Aman Dabas</strong></p>
                                </li>
                                <li>
                                    <p>I am very satisfied from the Alliance Research services one of my executive provide me very good follow up his name is Mr Shivam, he always receive my call and provide me very good profit.</p><p><strong class="dark-text">Prakash</strong></p>
                                </li>
                                <li>
                                    <p>Hi I am paid client of Alliance Research
I saw many complaints about this advisory. But in that circumstances I got good support and service from executive Mr. Manish. He is Very polite and supportive person.</p><p>
                                <strong class="dark-text">Rajashree Kamble</strong></p>
                                </li>
                                
                                <li>
                                    <p>I am working with Alliance Research form last month on wards, earlier I have start doing trading from myself and incurred huge loss of 80k. I Earned good profit in small investment  I am very thankful to Alliance Research and Shivam for their proper guidance and support, and I will suggest my most of the clients also.</p><p>
                                <strong class="dark-text">Bharatmack</strong></p>
                                </li>
                            </ul>
                            <a class="prev fa fa-angle-left" href=""></a>
                            <a class="next fa fa-angle-right" href=""></a>
                        </div>
                    </div> <!-- /.widget-inner -->
                </div> <!-- /.widget-main -->

                 <!-- /.widget-main -->

            </div>
        </div>
    </div>

    <!-- begin The Footer -->
   <?php include_once('include/footer.php'); ?>
   <script src="otp.js"></script>
</body>
</html>


<!--<script src="js/jquery-1.10.1.min.js?v=001" type="text/javascript"></script>-->
<script src="js/jquery.validate.min.js?v=001" type="text/javascript"></script>
<script src="js/additional-methods.js?v=001" type="text/javascript"></script>

<script>
    var baseurl = 'https://www.allianceresearch.in/';
	jQuery(document).ready(function() {
     $('#myModal').modal('show');
        $.validator.setDefaults({
        	submitHandler: function() {
        		alert("submitted!");
        	},
        	showErrors: function(map, list) {
        		// there's probably a way to simplify this
        		var focussed = document.activeElement;
        		if (focussed && $(focussed).is("input, textarea, checkbox")) {
        			$(this.currentForm).tooltip("close", {
        				currentTarget: focussed
        			}, true)
        		}
        		this.currentElements.removeAttr("title").removeClass("ui-state-highlight");
        		$.each(list, function(index, error) {
        			$(error.element).attr("title", error.message).addClass("ui-state-highlight");
        		});
        		if (focussed && $(focussed).is("input, textarea, checkbox")) {
        			$(this.currentForm).tooltip("open", {
        				target: focussed
        			});
        		}
        	}
        });	    
	    
        $('#validate_trial_form').validate({             
            rules: {
                name: {
                    required: true,
                },          
                email: {
                    required: true,
                    email: true,
                },   
                mobile: {
                    required: true,
                    minlength: 10,
                    digits: true
                },       
                city: {
                    required: true,
                },   
                myCheck: {
                    required: true,
                },    
                'opt[]': {
                    maxlength: 2
                },    
            },
            messages: { 
                'opt[]': {
                    required: "Please select maximum 2 options."
                },  
            },
            submitHandler: function (form) {
                var chk_arr =  document.getElementsByName("opt[]");
                var chklength = chk_arr.length;             
                var total_count = '';
                for(k=0;k< chklength;k++)
                {
                    if(chk_arr[k].checked == true){
                        if(total_count == ''){
                            total_count = chk_arr[k].value;   
                        }
                        else{
                            total_count = total_count +","+chk_arr[k].value;   
                        }
                    }
                }

                var name = $("#name").val();
                var email = $("#email").val();
                var mobile = $("#mobile").val();
                var city = $("#city").val();
                var comment = $("#comment").val();
                var opt = total_count;
                var trial_with = $("#trial_with").val();
    
                $('#free_trial_response').html("");
    
                var dataString = "name="+name+"&email="+email+"&mobile="+mobile+"&city="+city+"&comment="+comment+"&opt="+opt+"&trial_with="+trial_with;           
              
                $("#flash_free_trial").show();
                $("#flash_free_trial").fadeIn(400).html('<img src="js/ajax-loader.gif" style="display:inline !important; width:auto !important;" align="absmiddle">&nbsp;<span class="loading"></span>');
                
                $.ajax({
                    type: "POST",
                    url: baseurl+"success/index_trial.php",
                    data: dataString,
                    dataType: "json",
                    cache: false,
                    success: function(html){ 
                        $("#flash_free_trial").hide();    
                        
                        if(html["status"] == "success"){
                            $("#user_id").val(html["insert_id"]);
                            $("#validate_trial_form").hide();
                            $("#validate_otp_form").show();             
                        }
                        else{            
                            $('#free_trial_response').html('<p style="font-size:11px; line-height:12px; margin-top: 14px;color:white;">'+html["message"]+'</p>'); 
                        }                                
                    }
                });  
            }
        }); 

        $('#validate_otp_form').validate({             
            rules: {
                otp_number: {
                    required: true,
                },  
            },
            messages: {
            },
            submitHandler: function (form) {
                var user_id = $("#user_id").val();
                var otp_number = $("#otp_number").val();
    
                $('#otp_response').html("");
    
                var dataString = "user_id="+user_id+"&otp_number="+otp_number;        
                
                $("#flash_otp").show();
                $("#flash_otp").fadeIn(400).html('<img src="js/ajax-loader.gif" style="display:inline !important; width:auto !important;" align="absmiddle">&nbsp;<span class="loading"></span>');
                $.ajax({
                    type: "POST",
                    url: baseurl+"success/index_otp.php",
                    data: dataString,
                    dataType: "json",
                    cache: false,
                    success: function(html){ 
                        $("#flash_otp").hide();    
                        
                        if(html["status"] == "success"){
                            $("#user_id").val("");
                            $('#otp_response').html('<p style="font-size:11px; line-height:12px; margin-top: 14px;color:white;">'+html["message"]+'</p>'); 
                            window.location.href = baseurl+"success/index.php";                                                                                                                
                        }
                        else{                                                     
                            $('#otp_response').html('<p style="font-size:11px; line-height:12px; margin-top: 14px;color:red;">'+html["message"]+'</p>'); 
                        }   
                    }
                });  
            }
        }); 
	});
</script> 



<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <!-- <div class="modal-header">
       
        <h4 class="modal-title">Modal Header</h4>
      </div> -->
      <div class="modal-body">
         <button type="button" class="close" data-dismiss="modal">&times;</button>
        <img src="<?php echo base_url()?>loans2go/img/new.jpeg">
      </div>
     <!--  <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div> -->
    </div>

  </div>
</div>
