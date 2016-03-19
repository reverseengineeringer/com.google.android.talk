package com.google.api.client.http;

import aal;
import fii;
import irl;
import isf;
import isl;
import isr;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Type;
import java.nio.charset.Charset;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.GZIPInputStream;

public final class HttpResponse
{
  private InputStream content;
  private final String contentEncoding;
  private int contentLoggingLimit;
  private boolean contentRead;
  private final String contentType;
  private boolean loggingEnabled;
  private final HttpMediaType mediaType;
  private final HttpRequest request;
  LowLevelHttpResponse response;
  private final int statusCode;
  private final String statusMessage;
  
  HttpResponse(HttpRequest paramHttpRequest, LowLevelHttpResponse paramLowLevelHttpResponse)
  {
    request = paramHttpRequest;
    contentLoggingLimit = paramHttpRequest.getContentLoggingLimit();
    loggingEnabled = paramHttpRequest.isLoggingEnabled();
    response = paramLowLevelHttpResponse;
    contentEncoding = paramLowLevelHttpResponse.getContentEncoding();
    int j = paramLowLevelHttpResponse.getStatusCode();
    int i = j;
    if (j < 0) {
      i = 0;
    }
    statusCode = i;
    Object localObject1 = paramLowLevelHttpResponse.getReasonPhrase();
    statusMessage = ((String)localObject1);
    Logger localLogger = HttpTransport.LOGGER;
    StringBuilder localStringBuilder;
    Object localObject3;
    if ((loggingEnabled) && (localLogger.isLoggable(Level.CONFIG)))
    {
      i = 1;
      if (i == 0) {
        break label284;
      }
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("-------------- RESPONSE --------------").append(isr.a);
      localObject3 = paramLowLevelHttpResponse.getStatusLine();
      if (localObject3 == null) {
        break label235;
      }
      localStringBuilder.append((String)localObject3);
      label145:
      localStringBuilder.append(isr.a);
    }
    for (;;)
    {
      localObject3 = paramHttpRequest.getResponseHeaders();
      if (i != 0)
      {
        localObject1 = localStringBuilder;
        label168:
        ((HttpHeaders)localObject3).fromHttpResponse(paramLowLevelHttpResponse, (StringBuilder)localObject1);
        localObject1 = paramLowLevelHttpResponse.getContentType();
        paramLowLevelHttpResponse = (LowLevelHttpResponse)localObject1;
        if (localObject1 == null) {
          paramLowLevelHttpResponse = paramHttpRequest.getResponseHeaders().getContentType();
        }
        contentType = paramLowLevelHttpResponse;
        if (paramLowLevelHttpResponse != null) {
          break label272;
        }
      }
      label235:
      label272:
      for (paramHttpRequest = (HttpRequest)localObject2;; paramHttpRequest = new HttpMediaType(paramLowLevelHttpResponse))
      {
        mediaType = paramHttpRequest;
        if (i != 0) {
          localLogger.config(localStringBuilder.toString());
        }
        return;
        i = 0;
        break;
        localStringBuilder.append(statusCode);
        if (localObject1 == null) {
          break label145;
        }
        localStringBuilder.append(' ').append((String)localObject1);
        break label145;
        localObject1 = null;
        break label168;
      }
      label284:
      localStringBuilder = null;
    }
  }
  
  private boolean hasMessageBody()
  {
    boolean bool = true;
    int i = getStatusCode();
    if ((getRequest().getRequestMethod().equals("HEAD")) || (i / 100 == 1) || (i == 204) || (i == 304))
    {
      ignore();
      bool = false;
    }
    return bool;
  }
  
  public void disconnect()
  {
    ignore();
    response.disconnect();
  }
  
  public void download(OutputStream paramOutputStream)
  {
    aal.a(getContent(), paramOutputStream, true);
  }
  
  public InputStream getContent()
  {
    Object localObject5;
    if (!contentRead)
    {
      localObject4 = response.getContent();
      if (localObject4 != null) {
        localObject5 = localObject4;
      }
    }
    try
    {
      localObject6 = contentEncoding;
      Object localObject1 = localObject4;
      if (localObject6 != null)
      {
        localObject1 = localObject4;
        localObject5 = localObject4;
        if (((String)localObject6).contains("gzip"))
        {
          localObject5 = localObject4;
          localObject1 = new GZIPInputStream((InputStream)localObject4);
        }
      }
      localObject5 = localObject1;
      localObject6 = localObject1;
      Logger localLogger;
      ((InputStream)localObject4).close();
    }
    catch (EOFException localEOFException)
    {
      for (;;)
      {
        try
        {
          localLogger = HttpTransport.LOGGER;
          localObject4 = localObject1;
          localObject5 = localObject1;
          localObject6 = localObject1;
          if (loggingEnabled)
          {
            localObject4 = localObject1;
            localObject5 = localObject1;
            localObject6 = localObject1;
            if (localLogger.isLoggable(Level.CONFIG))
            {
              localObject5 = localObject1;
              localObject6 = localObject1;
              localObject4 = new isf((InputStream)localObject1, localLogger, Level.CONFIG, contentLoggingLimit);
            }
          }
          localObject5 = localObject4;
          localObject6 = localObject4;
          content = ((InputStream)localObject4);
          contentRead = true;
          return content;
        }
        finally
        {
          Object localObject6;
          localObject4 = localObject6;
          continue;
        }
        localEOFException = localEOFException;
        ((InputStream)localObject5).close();
      }
    }
    finally {}
    throw ((Throwable)localObject2);
  }
  
  public Charset getContentCharset()
  {
    if ((mediaType == null) || (mediaType.getCharsetParameter() == null)) {
      return irl.b;
    }
    return mediaType.getCharsetParameter();
  }
  
  public String getContentEncoding()
  {
    return contentEncoding;
  }
  
  public int getContentLoggingLimit()
  {
    return contentLoggingLimit;
  }
  
  public String getContentType()
  {
    return contentType;
  }
  
  public HttpHeaders getHeaders()
  {
    return request.getResponseHeaders();
  }
  
  public HttpMediaType getMediaType()
  {
    return mediaType;
  }
  
  public HttpRequest getRequest()
  {
    return request;
  }
  
  public int getStatusCode()
  {
    return statusCode;
  }
  
  public String getStatusMessage()
  {
    return statusMessage;
  }
  
  public HttpTransport getTransport()
  {
    return request.getTransport();
  }
  
  public void ignore()
  {
    InputStream localInputStream = getContent();
    if (localInputStream != null) {
      localInputStream.close();
    }
  }
  
  public boolean isLoggingEnabled()
  {
    return loggingEnabled;
  }
  
  public boolean isSuccessStatusCode()
  {
    return HttpStatusCodes.isSuccess(statusCode);
  }
  
  public <T> T parseAs(Class<T> paramClass)
  {
    if (!hasMessageBody()) {
      return null;
    }
    return (T)request.getParser().parseAndClose(getContent(), getContentCharset(), paramClass);
  }
  
  public Object parseAs(Type paramType)
  {
    if (!hasMessageBody()) {
      return null;
    }
    return request.getParser().parseAndClose(getContent(), getContentCharset(), paramType);
  }
  
  public String parseAsString()
  {
    InputStream localInputStream = getContent();
    if (localInputStream == null) {
      return "";
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    aal.a(localInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toString(getContentCharset().name());
  }
  
  public HttpResponse setContentLoggingLimit(int paramInt)
  {
    if (paramInt >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool, "The content logging limit must be non-negative.");
      contentLoggingLimit = paramInt;
      return this;
    }
  }
  
  public HttpResponse setLoggingEnabled(boolean paramBoolean)
  {
    loggingEnabled = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */