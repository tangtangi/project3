package com.dominos.controller;
import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.inject.Inject;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.dominos.domain.PizzaVO;
import com.dominos.domain.SideVO;
import com.dominos.persistence.PizzaDAO;
import com.dominos.persistence.SideDAO;
import com.dominos.util.MediaUtils;
import com.dominos.util.UploadFileUtils;

@Controller
public class UploadController {

	public static final Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	@Inject
	private PizzaDAO pizza; 
	
	@Inject
	private SideDAO side;
	
	
	// 첨부파일 저장 경로
	// servlet-context.xml에 있는 bean id="uploadPath" 경로 매칭 (C:\\spring\\upload)
	@Resource(name = "uploadPath")
	private String uploadPath;
	  
	@RequestMapping(value = "/uploadForm", method = RequestMethod.GET)
	public void uploadForm() {
	
	}
	
	//한글 파일 이름이 깨진다면 web.xml에 한글 처리용 필터를 적용
	@RequestMapping(value = "/uploadForm", method = RequestMethod.POST)
	public String uploadForm(MultipartFile file, Model model,PizzaVO vo) throws Exception {

		logger.info("originalName: " + file.getOriginalFilename());
		logger.info("size: " + file.getSize());
		logger.info("contentType: " + file.getContentType());
	//	String savedName2 = uploadFile2(file.getOriginalFilename(), file.getBytes());
//		String savedName = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
		uploadPath = uploadPath + "\\imageMenu";
		String savedName = uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
		model.addAttribute("savedName", savedName);
		
		String savedName2 = savedName.substring(0,12)+savedName.substring(14,savedName.length());

		vo.setImage(savedName2);
		vo.setImage_s(savedName);
		vo.setImage_o(file.getOriginalFilename());
		
		pizza.create(vo);
		
		return "redirect:/menu/list?menu=pizza";
	}
	@RequestMapping(value = "/uploadFormSide", method = RequestMethod.POST)
	public String uploadFormSide(MultipartFile file, Model model,SideVO vo,String menu) throws Exception {
		
		logger.info("originalName: " + file.getOriginalFilename());
		logger.info("size: " + file.getSize());
		logger.info("contentType: " + file.getContentType());
//원본 경로 --  C:\jsp\domino\src\main\webapp\resources\image
//섬네일, 이미지 사진 경로 -- C:\spring\ upload\ 2021\01\14 날짜에 따라
		
		//	String savedName2 = uploadFile2(file.getOriginalFilename(), file.getBytes());
//		String savedName = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
		String savedName = uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
		model.addAttribute("savedName", savedName);
		model.addAttribute("menu", menu);
		
		
		
		
		String savedName2 = savedName.substring(0,12)+savedName.substring(14,savedName.length());
		
		vo.setImage(savedName2);
		vo.setImage_s(savedName);
		vo.setImage_o(file.getOriginalFilename());
		
		side.create(vo);
		
		return "redirect:/menu/list";
	}

	// UUID 중복되지 않는 고유한 키 값을 설정할 때 사용
	// uploadFile()은 원본 파일의 이름과 파일 데이터를 byte[]로 변환한 정보를 파라미터로 처리해서 실제로 파일 업로드한다.
//	private String uploadFile2(String originalName, byte[] fileData) throws Exception {
//		
//		logger.info("3: " + 3);
//
//		UUID uid = UUID.randomUUID();
//		String savedName = uid.toString() + "_" + originalName;
//
//		
//		// import java.io.File; 
//		File target = new File(uploadPath, savedName);
//
//		// FileCopyUtils는 'org.springframework.util' 패키지에 설정된 클래스(실제 파일 처리)
//		FileCopyUtils.copy(fileData, target);
//
//		return savedName;
//	}	
	public static String uploadFile(String uploadPath, String originalName, byte[] fileData) throws Exception{
		logger.info("1");
		UUID uid = UUID.randomUUID(); //e94738d9-9e4f-4361-ad0b-a5605a46f7dd

		String savedName = uid.toString() +"_"+originalName; //e94738d9-9e4f-4361-ad0b-a5605a46f7dd_cartEmpty.png
		String savedPath = calcPath(uploadPath); // \2021\01\13
		logger.info("2"+uid+savedName+savedPath);

		File target = new File(uploadPath +savedPath,savedName);
		FileCopyUtils.copy(fileData, target);
		logger.info("3"+target); // C:\spring \ upload\2021\01\13\e94738d9-9e4f-4361-ad0b-a5605a46f7dd_cartEmpty.png

		String formatName = originalName.substring(originalName.lastIndexOf(".")+1);
		String uploadedFileName = null;

		if(MediaUtils.getMediaType(formatName) != null){

			uploadedFileName = makeThumbnail(uploadPath, savedPath, savedName);
		}else{
			uploadedFileName = makeIcon(uploadPath, savedPath, savedName);
		}

		return uploadedFileName;
	}	

	// 이미지 타입의 파일인 경우 썸네일 생성, 아닌 경우 실행 문자열의 치환 용도에 불과
	private static String makeIcon(String uploadPath, String path, String fileName)throws Exception{
		String iconName = uploadPath + path + File.separator+ fileName;

		return iconName.substring(uploadPath.length()).replace(File.separatorChar, '/');
	}	

	// 썸네일 생성
	private static String makeThumbnail(String uploadPath, String path, String fileName) throws Exception{
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName));
		BufferedImage destImg = 
				Scalr.resize(sourceImg, 
						Scalr.Method.AUTOMATIC, 
						Scalr.Mode.FIT_TO_HEIGHT,100);
//sourceImg : BufferedImage@20d17d8c: type = 6 ColorModel: #pixelBits = 32 numComponents = 4 color space = java.awt.color.ICC_ColorSpace@45ca04e6 transparency = 3 has alpha = true isAlphaPre = false ByteInterleavedRaster: width = 42 height = 20 #numDataElements 4 dataOff[0] = 3
//destImg : BufferedImage@2b3ddcae: type = 2 DirectColorModel: rmask=ff0000 gmask=ff00 bmask=ff amask=ff000000 IntegerInterleavedRaster: width = 210 height = 100 #Bands = 4 xOff = 0 yOff = 0 dataOffset[0] 0
		
		String thumbnailName = uploadPath + path + File.separator +"s_"+ fileName; //thumbnailName : C:\\spring\\upload\2021\01\13\s_43087218-d1c9-4932-8369-0a606b8215d8_best.PNG
		File newFile = new File(thumbnailName); //newFile : C:\spring\ upload\2021\01\13\s_43087218-d1c9-4932-8369-0a606b8215d8_best.PNG
		String formatName = fileName.substring(fileName.lastIndexOf(".")+1); //formatName : PNG

		ImageIO.write(destImg, formatName.toUpperCase(), newFile);

		/*
		 * logger.info("sourceImg : "+sourceImg); logger.info("destImg : "+destImg);
		 * logger.info("thumbnailName : "+thumbnailName);
		 * logger.info("newFile : "+newFile); logger.info("formatName : "+formatName);
		 * logger.info("return : "+thumbnailName.substring(uploadPath.length()).replace(
		 * File.separatorChar, '/'));
		 */
		//return : /2021/01/13/s_8a37add6-afde-4eae-9e34-4cd935b1475e_best.PNG
		return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar, '/');
	}	

	// 년/월/일 폴더 생성,파일저장
	// 작성된 calcPath()의 리턴 값은 최종 결과 폴더를 반환하는데,
	// 내부적으로 폴더를 생성해 주는 기능이 필요하기 때문에 기본적인 경로 uploadPath를 파라미터로 전달 받는다.
	private static String calcPath(String uploadPath){
	    Calendar cal = Calendar.getInstance();

	    String yearPath = File.separator+cal.get(Calendar.YEAR);
	    String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);
	    String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));

	    // 얻어낸 날짜 정보는 기본 경로롸 함께 makeDir()에 전달되어 폴더가 생성된다.
	    makeDir(uploadPath, yearPath,monthPath,datePath);

	    logger.info("datePath :"+datePath);

	    return datePath;
	}	

	private static void makeDir(String uploadPath, String... paths){
		if(new File(uploadPath + paths[paths.length-1]).exists()){
			return;
		}

		for (String path : paths) {
			File dirPath = new File(uploadPath + path);

			if(! dirPath.exists() ){
				dirPath.mkdir();
			}
		}
	}
}