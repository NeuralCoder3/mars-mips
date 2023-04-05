package util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;

public class Util {
  public static void createFolder(String path) {
    File file = new File(path);
    if (!file.exists()) {
      file.mkdirs();
    }
  }

  public static void deleteFolderRecursive(String path) {
    File file = new File(path);
    if (!file.exists()) {
      return;
    }
    File[] files = file.listFiles();
    for (File f : files) {
      if (f.isDirectory()) {
        deleteFolderRecursive(f.getAbsolutePath());
      } else {
        f.delete();
      }
    }
    file.delete();
  }

  public static void deleteFile(String path) {
    File file = new File(path);
    if (file.exists()) {
      file.delete();
    }
  }

  public static void copyFile(String src, String dest, boolean skipExisting) throws IOException {
    File srcFile = new File(src);
    File destFile = new File(dest);
    if(!srcFile.exists()) {
      return;
    }
    if(destFile.exists() && skipExisting) {
      return;
    }
    InputStream is = null;
    OutputStream os = null;
    try {
        is = new FileInputStream(srcFile);
        os = new FileOutputStream(destFile);
        byte[] buffer = new byte[1024];
        int length;
        while ((length = is.read(buffer)) > 0) {
            os.write(buffer, 0, length);
        }
    } finally {
        is.close();
        os.close();
    }
  }

  public static void deleteAll(String folder) {
    File file = new File(folder);
    if (file.exists()) {
      File[] files = file.listFiles();
      for (File f : files) {
        if (f.isDirectory()) {
          deleteFolderRecursive(f.getAbsolutePath());
        } else {
          deleteFile(f.getAbsolutePath());
        }
      }
    }
  }

  public static void hello() {
    System.out.println("Hello");
  }

  public static void main(String[] args) {
  }
}
