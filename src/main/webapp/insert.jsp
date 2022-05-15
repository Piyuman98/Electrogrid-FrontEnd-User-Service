<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
crossorigin="anonymous">

<style>



.button2 {
padding: 11px 115px;
background-color: #0d6efd;
margin-left: 37%;
margin-top: 5%;
color: white;
}
.button3 {
padding: 11px 104px;
background-color: #4caf50;
margin-left: 8%;
margin-top: 5%;
color: white;
}
a {
color: #ffffff;
text-decoration: underline;
}</style>





<head>
	<meta charset="UTF-8">
	<title>Title</title>
	
    <script src="assets/js/croppie.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
	
</head>
<body>
	
    <div class="container">
		

<p></p>
                        <form id="userRegister" action="/action_page.php">
                         <fieldset>
	                     <legend><h1>Add User Login Form</h1></legend>
	                    <br>
	                       
	                        
	                            <div class="mb-3">
	                                <label for="id" class="form-label" style="color:#3333cc"><b style="font-size:20px;">ID</b></label>
	                                
	                                <div >
	               
	                                    <input type="text" class="form-control"  id="id" class="form-control" name="id" placeholder="ID Number">
	                                </div>
	                            </div>
	                            
	                            <br>
	                            <div>
	                                <label for="id" class="form-label" style="color:#3333cc"><b style="font-size:20px;">First Name</label>
	                                <div>
	                                    <input type="text" id="fname" class="form-control" name="fname" placeholder="first name">
	                                </div>
	                            </div>
	                            <br>
	                            
	                            <div>
	                                <label for="id" class="form-label" style="color:#3333cc"><b style="font-size:20px;">Last Name</label>
	                                <div>
	                                    <input type="text" id="lname" class="form-control" name="lname" placeholder="last name">
	                                </div>
	                            </div>
	                            
	                           
	                            <br>
	                            <div>
	                                <label for="id" class="form-label" style="color:#3333cc"><b style="font-size:20px;">Phone Number</label>
	                                <div>
	                                    <input type="number" id="mobile" class="form-control" name="mobile" placeholder="phone number">
	                                </div>
	                                
	                            </div>
	                           
	                            <br>
	                            
	                             <div>
	                                <label for="id" class="form-label" style="color:#3333cc"><b style="font-size:20px;">E-mail</label>
	                                <div>
	                                    <input type="email" id="email" class="form-control" name="email" placeholder="name@example.com">
	                                </div>
	                            </div>
	                            <br>
	                            
	                             <div>
	                                <label for="id" class="form-label" style="color:#3333cc"><b style="font-size:20px;">NIC Number</label>
	                                <div>
	                                    <input type="number" id="nic" class="form-control" name="nic" placeholder="NIC number">
	                                </div>
	                            </div>
	                            <br>
	                            
	                             <div>
	                                <label for="id" class="form-label" style="color:#3333cc"><b style="font-size:20px;">Address</label>
	                                <div>
	                                    <input type="text" id="address" class="form-control" name="address" placeholder="Address">
	                                </div>
	                            </div>
	                           <br>
	                            <div>
	                                <label for="id" class="form-label" style="color:#3333cc"><b style="font-size:20px;">Password</label>
	                                <div>
	                                    <input type="password" id="password" class="form-control" name="password" placeholder="_______">
	                                </div>
	                            </div>
	                            <br>
	                            
	                             <div>
	                                <label for="id" class="form-label" style="color:#3333cc"><b style="font-size:20px;">Account Number</label>
	                                <div>
	                                    <input type="number" id="account_number" class="form-control" name="account_number"  placeholder="_ _ _ _">
	                                </div>
	                            </div>
	                            
	                            <br>
	                              
	                            <div>
	                               <button class="button3" type="submit" class="btn btn-success">
										Submit User
										</button >
										<button class="button2" >
										<a href="edit_n_delete.jsp" >
										View User List
										</a>
										</button>
	                            </div>
	                            
	                            </fieldset>
	                    	</form>
	                    </div>
<style>

input {
  width: 98%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
fieldset {
  background-color: #ffffff;
 
 
  
  
  
}
label{
 font-size:14px;
 font-weight: bold;
 
}

legend {
  background-color: #999999;
  color: white;
  padding: 20px 15px;
}

input {
  margin: 8px;
  
}




</style>	                    


</body>
</html>
<script>

$(document).ready(function () {

    $("#userRegister").validate({
        rules: {
        	id: "required",
        	fname: "required",
        	lname: "required",
        	mobile: "required",
        	email: {
                email: true,
                required: true
            },
        	nic: "required",
        	address: "required",
            password: "required",
        	account_number: "required"
        },
        messages: {
        	id: "   ID Required!",
        	fname: "  first name Required!",
        	lname: "   last nameRequired!",
        	mobile: "  phone number Required!",
        	email: {
                email: "format",
                required: " required"
            },

        	nic: " nicRequired!",
        	address: " address Required!",
        	password: " password Required!",
        	account_number: " acc number Required!"
        },
        submitHandler: function () {
        	var fromData = JSON.stringify({
        	    "id" : $('#id').val(),
                "fname" : $('#fname').val(),
                "lname" : $('#lname').val(),
                "mobile" : $('#mobile').val(),
                "email" : $('#email').val(),
                "nic" : $('#nic').val(),
                "address" : $('#address').val(),
                "password" : $('#password').val(),
                "account_number" : $('#account_number').val()
            });
        	
        	console.log(fromData);

            $.ajax({
                type: "POST",
                url: 'rest_api/user',
                dataType : 'json',
				contentType : 'application/json',
				data: fromData,
                success: function(data){
                	console.log(data);
                	if(data['success']=="Done"){
                		alert("Added Successfull!");
                        $("#userRegister")[0].reset();
					}else{
						alert("Unsuccessfull!");
					}
                },
                failure: function(errMsg) {
                	alert("Connection Error!");
                }
            });
        }
    });

    $("#userRegister").submit(function(e) {
        e.preventDefault();
    });

});

</script>