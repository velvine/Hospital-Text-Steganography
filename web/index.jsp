<%-- 
    Document   : index
    Created on : Feb 5, 2020, 9:59:59 PM
    Author     : Shymu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Restricted Page</title>
         <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
        <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">

        <link href="themes/css/bootstrappage.css" rel="stylesheet"/>

        <!-- global styles -->
        <link href="themes/css/flexslider.css" rel="stylesheet"/>
        <link href="themes/css/main.css" rel="stylesheet"/>
        <link rel="icon" href="dist/img/icon.png">

        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">

        <!-- sb-admin css-->
        <link href="sb-admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="sb-admin/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="sb-admin/dist/css/sb-admin-2.css" rel="stylesheet">

        <!-- Morris Charts CSS -->
        <link href="sb-admin/vendor/morrisjs/morris.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="sb-admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        
        <script type="text/javascript" src="jquery/processing.js"></script>
        <!-- scripts -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
                                     
        <script src="themes/js/superfish.js"></script>   
        <script src="themes/js/jquery.scrolltotop.js"></script>

        <!-- sb-admin js -->
        <!-- jQuery -->
        <script src="sb-admin/vendor/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="sb-admin/vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="sb-admin/vendor/metisMenu/metisMenu.min.js"></script>

        <!-- Morris Charts JavaScript -->
        <script src="sb-admin/vendor/raphael/raphael.min.js"></script>
        <script src="sb-admin/vendor/morrisjs/morris.min.js"></script>
        <script src="sb-admin/data/morris-data.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="sb-admin/dist/js/sb-admin-2.js"></script>
    </head>
    <body>
        <div class="container">
             <% 
//            String ses=(String)session.getAttribute("Username");
//            if(ses==null){
//                String site = new String("index.jsp");
//                response.setStatus(response.SC_MOVED_TEMPORARILY);
//                response.setHeader("Location", site);
//            }
            %>
            <h1 style="text-align:center;">Hospitalised Text Steganography</h1>
            <div class="panel panel-default" style="margin-top:5%;border: 1px #fff solid;border-radius: 40px 40px;">
                <form action="" method="post"  name="loginform" id="loginform" role="form" class="form-horizontal" >
                <div class="alert alert-dismissable" id="loaddiv"  style="border: 1px #fff solid;border-radius: 40px 40px;">
                    </div>
                    <div class="alert alert-danger alert-dismissable" id="errordiv"  style="">
                          <center><b style="font-size:20px;"><p id="errorp"></p></b></center>
                    </div>
                    <div class="alert alert-success" id="successdiv"  style="">
                          <center><b style="font-size:20px;"><p id="successp"></p></b></center>
                    </div>
                   <div class="panel-body" style="padding: 0;">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-8 alert alert-default" style="border: 1px #fff solid;border-radius: 40px 40px;text-align: center;">
                        <h4 style="font-size:25px;text-align: center;">Restricted Access Only</h4>
                          <div class="form-group input-group">
                            <span class="input-group-addon" style="background-color: #E0E0E0;">Username <i class="glyphicon glyphicon-user"></i></span>
                            <input type="text" name="username" id="username" class="form-control" placeholder="Enter Your Username" style="" required>
                          </div>
                          <div class="form-group input-group">
                            <span class="input-group-addon" style="background-color: #E0E0E0;">Password <i class="glyphicon glyphicon-lock"></i></span>
                            <input type="password" name="password" id="password" class="form-control" placeholder="Enter Your Password" style="" required>
                          </div>
                        </div>
                        <div class="col-sm-2"></div>
                    </div>
                  <div class="panel-footer" style="border: 1px #fff solid;border-radius: 50px 50px;padding: 10px;">
                      <div class="" style="text-align: center;border: 1px #fff solid;border-radius: 50px 50px;" >
                      <button type="button" name="submit" id="resetpassword"  class="btn btn-warning btn-large btn-flat" ><b>Forgot Password</b></button>
                       <button type="submit" name="submit" id="add" onclick="clickme()" class="btn btn-info  btn-flat glyphicon glyphicon-log-in" ><b> Sign In</b></button>
                    </div>
                  </div>
              </form>
            </div> 
        </div>
        <!-- Modal -->
<div class="modal fade" id="resetModal" tabindex="-1" role="dialog" aria-labelledby="resetModalLabel" style="" aria-hidden="false">
<div class="modal-dialog">
<div class="modal-content" >
<div class="modal-header" style="background-color: #77B5ED">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x
</button>
<h4 class="modal-title" id="resetModalLabel">
<!--<?php echo $yourname; ?>-->
</h4>
</div>
<div class="modal-body" id="resetmsg">

    <div class="well" style="width: 100%;min-width: 250px;margin-top: 10%;margin-left: 0;">
      <center>
        <form  method="post" action="" name="resetpasswordform" id="resetpasswordform" role="form" class="form-horizontal" >
        <h4>To reset your Password , Enter the following Information</h4>
        <h3>A Reset Password will be provided to Your Phone Number</h3>
          <div class="form-group has-feedback">
            <label for="user_id" class="col-sm-3 control-label">Phone Number</label>
              <div class="col-sm-9"> 
                <input type="tel" class="form-control" name="resetphone" id="resetphone" placeholder="Registered +25711111111" required="">
                <span class="glyphicon glyphicon-phone form-control-feedback"></span>
             </div> 
          </div>
          <div class="form-group has-feedback">
            <label for="user_pass" class="col-sm-3 control-label">ID NO</label>
              <div class="col-sm-9"> 
                <input type="number" class="form-control" name="resetidno" id="resetidno" placeholder="Enter ID NO" maxlength="8" minlength="8" required="">
                <span class="glyphicon glyphicon-pencil form-control-feedback"></span>
             </div> 
          </div>
          <div class="form-group"> 
            <div class=" "> 
              <button type="submit" class="pull-right btn btn-large btn-warning" name="resetbtn" id="resetbtn">Reset Password</button><br>
            </div> 
          </div>
        </form>
      </center>
 </div>
</div>
<div class="modal-footer"  >
<button type="button" class="btn btn-default" data-dismiss="modal">Close
</button>
</div>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false" data-backdrop="false">
<div class="modal-dialog">
<div class="modal-content" >
<div class="modal-header" style="background-color: #77B5ED;">
<button type="button" class="close" data-dismiss="modal"
aria-hidden="true">×
</button>
<h4 class="modal-title" id="myModalLabel" >
 Message Information
</h4>
</div>
<div class="modal-body" id="msg">
<h1 align="center" class="border"><br><br><br><br>
    <div style="margin:0 auto; text-align:center;">
    Loading...
    <??>
    <br>
    <img src="dist/img/loading.gif" >
    <br></div></h1>
</div>
<div class="modal-footer" >
<button type="button" class="btn btn-default" data-dismiss="modal" id="pressokay">Ok
</button>
</div>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
    </body>
    <script>
  $(function () {
    $('#errordiv').hide();
    $('#loaddiv').hide();
    $('#successdiv').hide();
    $('#selectedproperty').hide();
  });
  //reset password here
$('#resetpassword').click(function(){
    $('#resetModal').modal({"backdrop":"static"});
    $("#resetModal").modal('show');
});
// $("#resetpasswordform").on('submit',(function(e){
//      e.preventDefault();
//      $('#myModal').modal({"backdrop":"static"});
//      $.ajax({
//         url:"build/reset.php",
//         type:"POST",
//         data:new FormData(this),
//         processData:false,
//         contentType:false,
//         cache:false,
//         success:function(data){
//               $("#msg").html(data);
//               $("#myModalLabel").html("Forgot Pasword-:Password Reset");
//               $("#myModal").modal('show');
//           }
//       });  
//     }));
$("#loginform").on('submit',(function(e){
     e.preventDefault();
     $('#errordiv').hide();
    $('#loaddiv').hide();
    $('#successdiv').hide();
     $('#loaddiv').show();
     var username=$("#username").val();
     var password=$("#password").val();
     if(username===""){
         $('#loaddiv').html("Please Enter Username");
     }
     else if(password===""){
         $('#loaddiv').html("Please Enter Password");
     }
     else{
         $('#loaddiv').html('<h4 align="center" class="border"><div style="margin:0 auto; text-align:center;"> Authenticating User ...  <img src="dist/img/spinner.gif" ></div></h4>');
         $.ajax({
            url:'Login',
            method:'POST',
            data:{username:username,password:password},
            dataType:"text",
            success:function(result){
                if (result=="Login Success Admin") {
                    $('#loaddiv').hide();
                    $('#errordiv').hide();
                    $('#successdiv').show();
                    $('#successp').html('<h4 align="center" class="border"><div style="margin:0 auto; text-align:center;"><i class="glyphicon glyphicon-ok"></i>'+result+' Redirecting ...  <img src="dist/img/spinner.gif" ></div></h4>');
                    window.location.href='admin/';
                }
                else if (result=="Login Success Medic") {
                    $('#loaddiv').hide();
                    $('#errordiv').hide();
                    $('#successdiv').show();
                    $('#successp').html('<h4 align="center" class="border"><div style="margin:0 auto; text-align:center;"><i class="glyphicon glyphicon-ok"></i>'+result+' Redirecting ...  <img src="dist/img/spinner.gif" ></div></h4>');
                    window.location.href='medic/';
                }
                else{
                    $('#loaddiv').hide();
                    $('#successdiv').hide();
                    $('#errordiv').show();
                    $('#errorp').html('<h4 align="center" class="border"><div style="margin:0 auto; text-align:center;"><i class="glyphicon glyphicon-remove"></i> '+result+'</div></h4>');
                }
           }
       });
     }  
}));
              //reset password here
            // $('#resetpassword').click(function(){
            //     $('#resetModal').modal({"backdrop":"static"});
            //     $("#resetModal").modal('show');
            // });
            // $("#resetpasswordform").on('submit',(function(e){
            //      e.preventDefault();
            //      $('#myModal').modal({"backdrop":"static"});
            //      $.ajax({
            //         url:"build/reset.php",
            //         type:"POST",
            //         data:new FormData(this),
            //         processData:false,
            //         contentType:false,
            //         cache:false,
            //         success:function(data){
            //               $("#msg").html(data);
            //               $("#myModalLabel").html("Forgot Pasword-:Password Reset");
            //               $("#myModal").modal('show');
            //           }
            //       });  
            //     }));
</script>
</html>
