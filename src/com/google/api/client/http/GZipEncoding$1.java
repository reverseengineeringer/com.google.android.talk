package com.google.api.client.http;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class GZipEncoding$1
  extends BufferedOutputStream
{
  GZipEncoding$1(GZipEncoding paramGZipEncoding, OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  public void close()
  {
    try
    {
      flush();
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.GZipEncoding.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */