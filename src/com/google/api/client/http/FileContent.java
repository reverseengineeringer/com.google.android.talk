package com.google.api.client.http;

import fii;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public final class FileContent
  extends AbstractInputStreamContent
{
  private final File file;
  
  public FileContent(String paramString, File paramFile)
  {
    super(paramString);
    file = ((File)fii.a(paramFile));
  }
  
  public File getFile()
  {
    return file;
  }
  
  public InputStream getInputStream()
  {
    return new FileInputStream(file);
  }
  
  public long getLength()
  {
    return file.length();
  }
  
  public boolean retrySupported()
  {
    return true;
  }
  
  public FileContent setCloseInputStream(boolean paramBoolean)
  {
    return (FileContent)super.setCloseInputStream(paramBoolean);
  }
  
  public FileContent setType(String paramString)
  {
    return (FileContent)super.setType(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.FileContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */