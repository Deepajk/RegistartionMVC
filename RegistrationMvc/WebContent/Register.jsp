<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<script> 
function validate()
{ 
    
     var firstname = document.form.firstname.value;
     var lastname = document.form.lastname.value;
     var addressone = document.form.addressone.value;
     var addresstwo = document.form.addresstwo.value;
     var city = document.form.city.value; 
     var zipcode = document.form.zipcode.value;
           
     if (firstname==null || firstname=="")
     { 
     alert("First Name can't be blank"); 
     return false; 
     }
     
     else if (lastname==null || lastname=="")
     { 
       alert("Last name can't be blank"); 
     return false; 
     }
     
     else if (addressone==null || addressone=="")
     { 
     alert(" Address 1 can't be blank"); 
     return false; 
     }
     
     else if(addresstwo==null || addresstwo=="")
     { 
         alert(" Address 2 can't be blank"); 
         return false; 
     }   
     
     else if(city==null || city=="")
     { 
         alert(" City can't be blank"); 
         return false; 
     }
     
        
     else if(zipcode==null || zipcode=="")
     { 
     alert(" Zipcode can't be blank"); 
     return false; 
     }
     
      //select option for state.
     var state = document.getElementById("state");
     if (state.value == "") {
        
         alert("Please select an option!");
         return false;
     }
     return true;
     
     
     //select option for country
     var country = document.getElementById("country");
     if (country.value == "") {
         
         alert("Please select an option!");
         return false;
     }
     return true;
     
     
     //radio button
     
 } 
</script> 
</head>
<body>
<center><h2>Registration Application </h2></center>
    <form name="form" action="RegisterServlet" method="post" onsubmit="return validate()">
        <table align="center">
<tr>
<td>First Name</td>
<td><input type="text" name="firstname" size ="30"/></td>
</tr>

<tr>
<td>Last Name</td>
<td><input type="text"  name="lastname" size ="30"/></td>
</tr>


<tr>
<td>Address-1</td>
<td><input  type = "text" name="addressone" size ="50" /></td>
</tr>

<tr>
<td>Address-2</td>
<td><input  type = "text" name="addresstwo" size ="50"/></td>
</tr>

<tr>
<td>City</td>
<td><input type = "text" name="city" size ="30" /></td>
</tr>

<tr>
<td>State</td>
<td><select id="state" name="state" >
<option value="">Select</option>
<option value="Alabama">Alabama</option>
<option value="Alaska">Alaska</option>
<option value="Arizona">Arizona</option>
<option value="Arkansas">Arkansas</option>
<option value="California">California</option>
<option value="Colorado">Colorado</option>
<option value="Connecticut">Connecticut</option>
<option value="Delaware">Delaware</option>
<option value="District of Columbia">District of Columbia</option>
<option value="Florida">Florida</option>
<option value="Georgia">Georgia</option>
<option value="Guam">Guam</option>
<option value="Hawaii">Hawaii</option>
<option value="Idaho">Idaho</option>
<option value="Illinois">Illinois</option>
<option value="Indiana">Indiana</option>
<option value="Iowa">Iowa</option>
<option value="Kansas">Kansas</option>
<option value="Kentucky">Kentucky</option>
<option value="Louisiana">Louisiana</option>
<option value="Maine">Maine</option>
<option value="Maryland">Maryland</option>
<option value="Massachusetts">Massachusetts</option>
<option value="Michigan">Michigan</option>
<option value="Minnesota">Minnesota</option>
<option value="Mississippi">Mississippi</option>
<option value="Missouri">Missouri</option>
<option value="Montana">Montana</option>
<option value="Nebraska">Nebraska</option>
<option value="Nevada">Nevada</option>
<option value="New Hampshire">New Hampshire</option>
<option value="New Jersey">New Jersey</option>
<option value="New Mexico">New Mexico</option>
<option value="New York">New York</option>
<option value="North Carolina">North Carolina</option>
<option value="North Dakota">North Dakota</option>
<option value="Northern Marianas Islands">Northern Marianas Islands</option>
<option value="Ohio">Ohio</option>
<option value="Oklahoma">Oklahoma</option>
<option value="Oregon">Oregon</option>
<option value="Pennsylvania">Pennsylvania</option>
<option value="Puerto Rico">Puerto Rico</option>
<option value="Rhode Island">Rhode Island</option>
<option value="South Carolina">South Carolina</option>
<option value="South Dakota">South Dakota</option>
<option value="Tennessee">Tennessee</option>
<option value="Texas">Texas</option>
<option value="Utah">Utah</option>
<option value="Vermont">Vermont</option>
<option value="Virginia">Virginia</option>
<option value="Virgin Islands">Virgin Islands</option>
<option value="Washington">Washington</option>
<option value="West Virginia">West Virginia</option>
<option value="Wisconsin">Wisconsin</option>
<option value="Wyoming">Wyoming</option>
</select>
</tr>

<tr>
<td>Zip-Code</td>
<td><input type ="text" name="zipcode" size ="30" ></td>
</tr>



<tr>
<td>Country</td>
<td><select id="country" name="country">
<option value="US">US</option>
</select></td>
</tr>

<tr>
         <td><%=(request.getAttribute("errMessage") == null) ? ""
         : request.getAttribute("errMessage")%></td>
         </tr>
<tr>
         <td></td>
         <td><input type="submit" value="Register"></input><input
         type="reset" value="Reset"></input></td>
         </tr>
        </table>
    </form>
</body>
</html>