package com.google.api.client.http;

import java.util.Arrays;
import java.util.logging.Logger;

public abstract class HttpTransport
{
  static final Logger LOGGER = Logger.getLogger(HttpTransport.class.getName());
  private static final String[] SUPPORTED_METHODS;
  
  static
  {
    String[] arrayOfString = new String[4];
    arrayOfString[0] = "DELETE";
    arrayOfString[1] = "GET";
    arrayOfString[2] = "POST";
    arrayOfString[3] = "PUT";
    SUPPORTED_METHODS = arrayOfString;
    Arrays.sort(arrayOfString);
  }
  
  HttpRequest buildRequest()
  {
    return new HttpRequest(this, null);
  }
  
  public abstract LowLevelHttpRequest buildRequest(String paramString1, String paramString2);
  
  public final HttpRequestFactory createRequestFactory()
  {
    return createRequestFactory(null);
  }
  
  public final HttpRequestFactory createRequestFactory(HttpRequestInitializer paramHttpRequestInitializer)
  {
    return new HttpRequestFactory(this, paramHttpRequestInitializer);
  }
  
  public void shutdown() {}
  
  public boolean supportsMethod(String paramString)
  {
    return Arrays.binarySearch(SUPPORTED_METHODS, paramString) >= 0;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpTransport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */