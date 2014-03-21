<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<script>
	
		/*
			This function will take the Form name of the current page and validates the required fileds of type text/dropdown
		*/
		function validate(formName){
		
			var formElementsList=document.forms[formName].elements;       
			for(var i=0;i<formElementsList.length;i++){   
				var formElement=formElementsList[i];
				var tagName=formElement.tagName;
				if(tagName=="INPUT"){
					   //var type=formElement.type;
					   if(formElement.type=="text"){
							  if(!validateTextField(formElement))
								   return false;
						   }
				 }
				 if(tagName=="SELECT"){
					  if(!validateDropDownList(formElement)){
							return false;    
						  }
				 }
			}
			return true;
		}
		
		/*
		This function will validate the text field for emptyness as well as alphanumeric
		*/
		function validateTextField(textField){
			   if(isEmpty(textField)){
				   return false;   
			   }else{
					if(isAlphaNumeric(textField)){
						 return true;
					}
				return false;
			  }
		}
		/*
		This function will be used to check the empty field validation
		*/
		function isEmpty(textField){
		   if(textField.value.length==0){   
			   alert("TextBox Should Not be empty!!!");
			   textField.focus();
			   return true;
			} 
		   return false;
		}
		
		/*
			This function will be checking the alpha numeric in the given text by using regular expression.
		*/
		function isAlphaNumeric(textField){	
			var reg= /^[0-9a-zA-Z]+$/;
			if (textField.value.match(reg)){
				return true;
			}else {
				alert("Shoud be alpphanumeric!!!");
				textField.focus();
				return false;
			}
		}
		/*
		 * This function validates the selection of drop down.
		 */
		function validateDropDownList(list){
			  if(list.selectedIndex==0){
				  alert("Please Select Any Value!!!");
				  list.focus();
				  return false;
			  }
			  return true;
		}
	</script>

<head>
<title>Customer Form </title>
</head>

<body>
<h2>Customer Form</h2>

<s:form action="customer.action" name="form1" method="post" validate="true" onsubmit="return validate('form1')">

	<s:textfield name="name" key="name" size="20" />
	<s:textfield name="age" key="age" size="20" />
	
	<s:textfield name="email" key="email" size="20" />
	<s:textfield name="telephone" key="telephone" size="20" />
	<s:submit method="addCustomer" key="label.add.customer" align="center" />
	
</s:form>
</body>
</html>
