package com.google.api.client.http;

import fii;
import isr;
import java.io.IOException;

public class HttpResponseException$Builder
{
  String content;
  HttpHeaders headers;
  String message;
  int statusCode;
  String statusMessage;
  
  public HttpResponseException$Builder(int paramInt, String paramString, HttpHeaders paramHttpHeaders)
  {
    setStatusCode(paramInt);
    setStatusMessage(paramString);
    setHeaders(paramHttpHeaders);
  }
  
  public HttpResponseException$Builder(HttpResponse paramHttpResponse)
  {
    this(paramHttpResponse.getStatusCode(), paramHttpResponse.getStatusMessage(), paramHttpResponse.getHeaders());
    try
    {
      content = paramHttpResponse.parseAsString();
      if (content.length() == 0) {
        content = null;
      }
      paramHttpResponse = HttpResponseException.computeMessageBuffer(paramHttpResponse);
      if (content != null) {
        paramHttpResponse.append(isr.a).append(content);
      }
      message = paramHttpResponse.toString();
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  public HttpResponseException build()
  {
    return new HttpResponseException(this);
  }
  
  public final String getContent()
  {
    return content;
  }
  
  public HttpHeaders getHeaders()
  {
    return headers;
  }
  
  public final String getMessage()
  {
    return message;
  }
  
  public final int getStatusCode()
  {
    return statusCode;
  }
  
  public final String getStatusMessage()
  {
    return statusMessage;
  }
  
  public Builder setContent(String paramString)
  {
    content = paramString;
    return this;
  }
  
  public Builder setHeaders(HttpHeaders paramHttpHeaders)
  {
    headers = ((HttpHeaders)fii.a(paramHttpHeaders));
    return this;
  }
  
  public Builder setMessage(String paramString)
  {
    message = paramString;
    return this;
  }
  
  public Builder setStatusCode(int paramInt)
  {
    if (paramInt >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      statusCode = paramInt;
      return this;
    }
  }
  
  public Builder setStatusMessage(String paramString)
  {
    statusMessage = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpResponseException.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */