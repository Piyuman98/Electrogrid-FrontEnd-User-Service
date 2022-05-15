<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<title>title</title>
	
    
    <script src="assets/js/croppie.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
	
</head>
<body>
	
    <div class="container">
		
<br>
<p></p>
	                    <div><h1 style="color:#3333cc"><center>Users List</center></h1></div>
	                    <div>
	                        <div id="usersDiv">
	                    	
	            			</div>
	                    </div>
	                    <br>
	                    <br>
	                    <br>
	                    
	                   
<div id="hideDiv" style="display: none">
   	                        <form id="userRegister">
							<input type= "hidden" id="edit_id" name="edit_id">
							
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
	                                <button type="submit" class="btn btn-success">
	                                    Add
	                                </button>
	                                <a href="edit_n_delete.jsp" class="btn btn-success">
	                                    List
	                                </a>
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

button {
  background-color: #008CBA;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

a{
 background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

</style>	                    
							
	                            
	                                
	                            
	                            
</div> 
	                    
</div>
	
</body>
</html>

<script>

    function deletes(id) {
    	if (confirm("Delete ?") == true) {
        	$.ajax({
                type: "DELETE",
                url: "rest_api/user",
                data: JSON.stringify({ 'id' : id}),
                dataType: "json",
    			contentType : 'application/json',
                success: function(data){
                	if(data['success']=="Done"){
                		alert("Delete Successfull!");
    					reload();
    				}else if(data['success']=="0"){
    					alert("Delete Unsuccessful!");
    				}
                },
                failure: function(errMsg) {
                    alert('Error');
                }
            });
    	}
    }

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
    	        	id: "N Required!",
    	        	fname: "F Required!",
    	        	lname: "l Required!",
    	        	mobile: "m Required!",
    	        	email: {
    	                email: "format",
    	                required: "required"
    	            },

    	        	nic: "n Required!",
    	        	address: "a Required!",
    	        	password: "p Required!",
    	        	account_number: "a Required!"
    	        },
    	        submitHandler: function () {
    	        	var fromData = JSON.stringify({
    	        		"id" : $('#edit_id').val(),
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
                    type: "PUT",
                    url: 'rest_api/user',
                    dataType : 'json',
    				contentType : 'application/json',
    				data: fromData,
                    success: function(data){
                    	if(data['success']=="Done"){
                    		alert("Edit Successfull!");
                        	document.getElementById("hideDiv").style.display = "none";
                            $("#userRegister")[0].reset();
    						reload();
    					}else{
    						alert("Unsuccessful!");
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

    function reload(){
    	$.ajax({
            type: "GET",
            url: "rest_api/user",
            success: function(data){
            	$("#usersDiv").html(data);
            },
            failure: function(errMsg) {
                alert('Error');
            }
        });
    }

    reload();
    
    function edit(id) {
    	document.getElementById("hideDiv").style.display = "block";
    	$.ajax({
            type: "POST",
            url: "rest_api/user/get",
            data: JSON.stringify({ 'id' : id}),
            dataType: "json",
			contentType : 'application/json',
            success: function(data){
            	console.log(data),
                $('#edit_id').val(data['id']),
                $('#fname').val(data['fname']),
                $('#lname').val(data['lname']),
                $('#mobile').val(data['mobile']),
                $('#email').val(data['email']),
                $('#nic').val(data['nic']),
                $('#address').val(data['address']),
                $('#password').val(data['password']),
                $('#account_number').val(data['account_number'])
            },
            failure: function(errMsg) {
                alert('Error');
            }
        });

    }
    
    
</script>