package com.google.api.client.http;

import isq;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

public class GZipEncoding
  implements HttpEncoding
{
  public void encode(isq paramisq, OutputStream paramOutputStream)
  {
    paramOutputStream = new GZIPOutputStream(new GZipEncoding.1(this, paramOutputStream));
    paramisq.writeTo(paramOutputStream);
    paramOutputStream.close();
  }
  
  public String getName()
  {
    return "gzip";
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.GZipEncoding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */