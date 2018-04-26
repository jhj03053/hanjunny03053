package multipartUpload;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MultipartRequestFileUpload {
	public boolean fileUpload(HttpServletRequest request){
		boolean b = false;
		try {
	
			String uploadDir = "C:/sou/000_tip/java/multipartRequestFileUpload";
			
			
			MultipartRequest multi = new MultipartRequest(
					request, 
					uploadDir, 
					5 * 1024 * 1024, 
					"UTF-8", 
					new DefaultFileRenamePolicy()); 
			
			
			if(multi.getFilesystemName("image")!=null) b=true;
			
		} catch (Exception e) {
			System.out.println("multipartrequestfileupload err : " + e);
		}
		return b;
	}
}
