package com.google.api.client.http;

import aal;
import irl;
import java.nio.charset.Charset;

public abstract class AbstractHttpContent
  implements HttpContent
{
  private long computedLength = -1L;
  private HttpMediaType mediaType;
  
  protected AbstractHttpContent(HttpMediaType paramHttpMediaType)
  {
    mediaType = paramHttpMediaType;
  }
  
  public AbstractHttpContent(String paramString) {}
  
  public static long computeLength(HttpContent paramHttpContent)
  {
    if (!paramHttpContent.retrySupported()) {
      return -1L;
    }
    return aal.a(paramHttpContent);
  }
  
  protected long computeLength()
  {
    return computeLength(this);
  }
  
  public final Charset getCharset()
  {
    if ((mediaType == null) || (mediaType.getCharsetParameter() == null)) {
      return irl.a;
    }
    return mediaType.getCharsetParameter();
  }
  
  public long getLength()
  {
    if (computedLength == -1L) {
      computedLength = computeLength();
    }
    return computedLength;
  }
  
  public final HttpMediaType getMediaType()
  {
    return mediaType;
  }
  
  public String getType()
  {
    if (mediaType == null) {
      return null;
    }
    return mediaType.build();
  }
  
  public boolean retrySupported()
  {
    return true;
  }
  
  public AbstractHttpContent setMediaType(HttpMediaType paramHttpMediaType)
  {
    mediaType = paramHttpMediaType;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.AbstractHttpContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */