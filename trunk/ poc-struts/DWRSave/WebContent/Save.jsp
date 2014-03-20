<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type='text/javascript' src='/DWRSave/dwr/interface/SaveData.js'></script>
<script type='text/javascript' src='/DWREx/dwr/engine.js'></script>
<script type='text/javascript' src='/DWREx/dwr/util.js'></script>
</head>
<body>
	<form name="f1" onsubmit="return submit();">
		<table>
			<tr>
				<td>Student Number<input type="text" name="sNumber" id="sno"/></td>
			</tr>
			<tr>
				<td>Student Name<input type="text" name="sName" id="sname"/></td>
			</tr>
			<tr>
				<td>Student Age<input type="text" name="sAge" id="sage"/></td>
			</tr>
			<tr>
				<td>Branch<input type="text" name="sBranch" id="sbranch"/></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="Save" onclick="submit()"/></td>
			</tr>
		</table>
		</form>
		<script type="text/javascript">
			function submit() {
				alert("Iam in submit form");
			    //var myObject = new Object(); 
		       var StudentBean=new StudentBean();
				/* myObject.sno = document.getElementById('sno').value;  
				myObject.sname = document.getElementById('sname').value;  
				myObject.sage = document.getElementById('sage').value;
				myObject.sbranch = document.getElementById('sbranch').value; */
				StudentDtoImpl.SaveStudent(StudentBean); 
				

			}
			
		</script>
	
</body>
</html>