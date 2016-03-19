package com.google.api.client.http;

import java.io.IOException;

public class HttpResponseException
  extends IOException
{
  private static final long serialVersionUID = -1875819453475890043L;
  private final String content;
  private final transient HttpHeaders headers;
  private final int statusCode;
  private final String statusMessage;
  
  public HttpResponseException(HttpResponse paramHttpResponse)
  {
    this(new HttpResponseException.Builder(paramHttpResponse));
  }
  
  public HttpResponseException(HttpResponseException.Builder paramBuilder)
  {
    super(message);
    statusCode = statusCode;
    statusMessage = statusMessage;
    headers = headers;
    content = content;
  }
  
  public static StringBuilder computeMessageBuffer(HttpResponse paramHttpResponse)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramHttpResponse.getStatusCode();
    if (i != 0) {
      localStringBuilder.append(i);
    }
    paramHttpResponse = paramHttpResponse.getStatusMessage();
    if (paramHttpResponse != null)
    {
      if (i != 0) {
        localStringBuilder.append(' ');
      }
      localStringBuilder.append(paramHttpResponse);
    }
    return localStringBuilder;
  }
  
  public final String getContent()
  {
    return content;
  }
  
  public HttpHeaders getHeaders()
  {
    return headers;
  }
  
  public final int getStatusCode()
  {
    return statusCode;
  }
  
  public final String getStatusMessage()
  {
    return statusMessage;
  }
  
  public final boolean isSuccessStatusCode()
  {
    return HttpStatusCodes.isSuccess(statusCode);
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpResponseException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */