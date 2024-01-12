package com.smartAttendance.bean;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class Resource {

    public static Properties loadResource(String moduleName){
         String resourceName = moduleName + ".properties"; 
         ClassLoader loader = Thread.currentThread().getContextClassLoader();
         Properties props = new Properties();
         try(InputStream resourceStream = loader.getResourceAsStream(resourceName)) {
             props.load(resourceStream);
             return props;
         } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            return null;
        }

    }
    
    public static String loadProperty(String moduleName, String propertyName){
        Properties prop = Resource.loadResource(moduleName);
        if (prop == null) {
            return "@@@@@Module Resource not found";
        }
        else{
            return prop.getProperty(propertyName).isEmpty() ? propertyName : prop.getProperty(propertyName);
        }
    }
}