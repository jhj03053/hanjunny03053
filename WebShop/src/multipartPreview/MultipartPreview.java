package multipartPreview;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;

public class MultipartPreview {
	
	public String insertPreviewImg(HttpServletRequest request){
		String imageName = "noImage.jsp";
		try {
			
			ServletContext context = request.getSession().getServletContext();
			String fileDir = context.getRealPath("/images/preview");

			
			MultipartRequest multi = new MultipartRequest(
					request,  
					fileDir,  
					5 * 1024 * 1024,  
					"UTF-8"   
			);
			
			
			if(multi.getFilesystemName("image")!=null)
				
				imageName = multi.getFilesystemName("image");
			
		} catch (Exception e) {
			System.out.println("previewImage err : " + e);
		} 
		return imageName;
	}
	
	
	public void deletePreviewImg(HttpServletRequest request){
		
		ServletContext context = request.getSession().getServletContext();
		String fileDir = context.getRealPath("/images/preview");
		
		
		File file = new File(fileDir);
		if(file.isDirectory()){
			for(File f:file.listFiles()){
				f.delete();
			}
		}
	}
}
