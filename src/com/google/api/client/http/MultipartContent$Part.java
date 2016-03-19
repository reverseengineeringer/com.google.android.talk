package com.google.api.client.http;

public final class MultipartContent$Part
{
  HttpContent content;
  HttpEncoding encoding;
  HttpHeaders headers;
  
  public MultipartContent$Part()
  {
    this(null);
  }
  
  public MultipartContent$Part(HttpContent paramHttpContent)
  {
    this(null, paramHttpContent);
  }
  
  public MultipartContent$Part(HttpHeaders paramHttpHeaders, HttpContent paramHttpContent)
  {
    setHeaders(paramHttpHeaders);
    setContent(paramHttpContent);
  }
  
  public HttpContent getContent()
  {
    return content;
  }
  
  public HttpEncoding getEncoding()
  {
    return encoding;
  }
  
  public HttpHeaders getHeaders()
  {
    return headers;
  }
  
  public Part setContent(HttpContent paramHttpContent)
  {
    content = paramHttpContent;
    return this;
  }
  
  public Part setEncoding(HttpEncoding paramHttpEncoding)
  {
    encoding = paramHttpEncoding;
    return this;
  }
  
  public Part setHeaders(HttpHeaders paramHttpHeaders)
  {
    headers = paramHttpHeaders;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.MultipartContent.Part
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */