package com.google.api.client.http;

import fii;
import java.io.InputStream;

public final class InputStreamContent
  extends AbstractInputStreamContent
{
  private final InputStream inputStream;
  private long length = -1L;
  private boolean retrySupported;
  
  public InputStreamContent(String paramString, InputStream paramInputStream)
  {
    super(paramString);
    inputStream = ((InputStream)fii.a(paramInputStream));
  }
  
  public InputStream getInputStream()
  {
    return inputStream;
  }
  
  public long getLength()
  {
    return length;
  }
  
  public boolean retrySupported()
  {
    return retrySupported;
  }
  
  public InputStreamContent setCloseInputStream(boolean paramBoolean)
  {
    return (InputStreamContent)super.setCloseInputStream(paramBoolean);
  }
  
  public InputStreamContent setLength(long paramLong)
  {
    length = paramLong;
    return this;
  }
  
  public InputStreamContent setRetrySupported(boolean paramBoolean)
  {
    retrySupported = paramBoolean;
    return this;
  }
  
  public InputStreamContent setType(String paramString)
  {
    return (InputStreamContent)super.setType(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.InputStreamContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */