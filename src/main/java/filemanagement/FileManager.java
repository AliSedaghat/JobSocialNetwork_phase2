/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package filemanagement;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 *
 * @author SAEED
 */
public class FileManager {
    public static String saveFile(String fileName, InputStream is){
        try {
            String path = "../../webapp/images/user'sImage/" + fileName;
            try (OutputStream os = new FileOutputStream(path)) {
                byte[] buffer = new byte[1024];
                int bytesRead;
                //read from is to buffer
                while((bytesRead = is.read(buffer)) !=-1){
                    os.write(buffer, 0, bytesRead);
                }
                is.close();
                //flush OutputStream to write any buffered data to file
                os.flush();
                return path;
            }
        } catch (IOException e) {
        }
        return "";
    }
}
