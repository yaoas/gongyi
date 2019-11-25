package com.pm.background.common.utils;

import com.pm.background.admin.fastdfs.FastDFSClient;
import com.pm.background.common.qr.ImgQrTool;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;

public class UpFileOrReturnFile {
    //删除fastdfs图片
    public static int deleteFastFile(String path)
    {
        int deleteFlag = 0;
        try {
            String pathFile[]=path.split("http://60.205.162.244");
            String strongPath[]=pathFile[1].split("/M00");
            String relPath="M00"+strongPath[1];
            FastDFSClient fastDFSClient = new FastDFSClient("classpath:fastdfs-client.properties");
            deleteFlag = fastDFSClient.delete_file(strongPath[0],relPath);
        }catch (Exception e) {
            e.printStackTrace();
        }
        return  deleteFlag;
    }
    //上传到fastdfs返回路径
    public  static  String uploadFileToFast(MultipartFile file){
        String allPath = "";
        String suffix = "";
        String fileName = file.getOriginalFilename();
        if (StringUtils.isNotEmpty(fileName)) {
            int index = fileName.lastIndexOf(".");
            suffix = index == -1?"":fileName.substring(index+1);//获取拓展名
        }
        try {
            FastDFSClient fastDFSClient = new FastDFSClient("classpath:fastdfs-client.properties");
            String pathFastdfs= fastDFSClient.uploadFile(file.getBytes(),suffix);
            allPath="http://60.205.162.244/"+pathFastdfs;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return allPath;

    }
    //生成二维码返回路径

    public  static  String uploadCodeToFast(HttpServletRequest request,String content){
        String allPath = "";
        String path= request.getSession().getServletContext().getRealPath("/")+"123.jpg";
        ImgQrTool.createSimpleQr(content,200,200,path);
        try {
            FastDFSClient fastDFSClient = new FastDFSClient("classpath:fastdfs-client.properties");
            File file=new File(path);
            String pathFastdfs= fastDFSClient.uploadFile(FileToByte.File2byte(path),"jpg");
            allPath="http://60.205.162.244/"+pathFastdfs;
            File f = new File(path);
            f.delete();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return allPath;

    }
}
