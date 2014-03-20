package com.kanasco.vision.dto;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.kanasco.vision.jdbc.DbUtil;
import com.kanasco.vision.model.StudentBean;

public class StudentDtoImpl implements StudentDTO{

	public boolean SaveStudent(StudentBean bean) {
	
		Connection con=null;
    try {
			
	          con= DbUtil.getConnection();
		      PreparedStatement pst = con.prepareStatement("insert into student values(?,?,?,?)");
		      pst.setString(1,bean.getsNumber());  
		      pst.setString(2,bean.getsName());  
		      pst.setString(3,bean.getsAge());  
		      pst.setString(4,bean.getsBranch());
		  
		      int i = pst.executeUpdate();  
		      if(i!=0){  
		          System.out.println("Record has been inserted");  
		       }else{  
		        	 System.out.println("Record failed has been inserted");  
		         	}  
		      
		} catch (Exception ex) {
                	ex.printStackTrace();
		}

			return false;
		
		
	}

}
