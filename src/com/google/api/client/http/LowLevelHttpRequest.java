package com.google.api.client.http;

import isq;

public abstract class LowLevelHttpRequest
{
  private String contentEncoding;
  private long contentLength = -1L;
  private String contentType;
  private isq streamingContent;
  
  public abstract void addHeader(String paramString1, String paramString2);
  
  public abstract LowLevelHttpResponse execute();
  
  public final String getContentEncoding()
  {
    return contentEncoding;
  }
  
  public final long getContentLength()
  {
    return contentLength;
  }
  
  public final String getContentType()
  {
    return contentType;
  }
  
  public final isq getStreamingContent()
  {
    return streamingContent;
  }
  
  public final void setContentEncoding(String paramString)
  {
    contentEncoding = paramString;
  }
  
  public final void setContentLength(long paramLong)
  {
    contentLength = paramLong;
  }
  
  public final void setContentType(String paramString)
  {
    contentType = paramString;
  }
  
  public final void setStreamingContent(isq paramisq)
  {
    streamingContent = paramisq;
  }
  
  public void setTimeout(int paramInt1, int paramInt2) {}
}

/* Location:
 * Qualified Name:     com.google.api.client.http.LowLevelHttpRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */