package com.google.api.client.http;

import java.io.InputStream;

public abstract class LowLevelHttpResponse
{
  public void disconnect() {}
  
  public abstract InputStream getContent();
  
  public abstract String getContentEncoding();
  
  public abstract long getContentLength();
  
  public abstract String getContentType();
  
  public abstract int getHeaderCount();
  
  public abstract String getHeaderName(int paramInt);
  
  public abstract String getHeaderValue(int paramInt);
  
  public abstract String getReasonPhrase();
  
  public abstract int getStatusCode();
  
  public abstract String getStatusLine();
}

/* Location:
 * Qualified Name:     com.google.api.client.http.LowLevelHttpResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */