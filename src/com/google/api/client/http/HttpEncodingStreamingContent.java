package com.google.api.client.http;

import fii;
import isq;
import java.io.OutputStream;

public final class HttpEncodingStreamingContent
  implements isq
{
  private final isq content;
  private final HttpEncoding encoding;
  
  public HttpEncodingStreamingContent(isq paramisq, HttpEncoding paramHttpEncoding)
  {
    content = ((isq)fii.a(paramisq));
    encoding = ((HttpEncoding)fii.a(paramHttpEncoding));
  }
  
  public isq getContent()
  {
    return content;
  }
  
  public HttpEncoding getEncoding()
  {
    return encoding;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    encoding.encode(content, paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpEncodingStreamingContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */