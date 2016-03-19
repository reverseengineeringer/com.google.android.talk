package com.google.api.client.http;

public final class HttpRequestFactory
{
  private final HttpRequestInitializer initializer;
  private final HttpTransport transport;
  
  HttpRequestFactory(HttpTransport paramHttpTransport, HttpRequestInitializer paramHttpRequestInitializer)
  {
    transport = paramHttpTransport;
    initializer = paramHttpRequestInitializer;
  }
  
  public HttpRequest buildDeleteRequest(GenericUrl paramGenericUrl)
  {
    return buildRequest("DELETE", paramGenericUrl, null);
  }
  
  public HttpRequest buildGetRequest(GenericUrl paramGenericUrl)
  {
    return buildRequest("GET", paramGenericUrl, null);
  }
  
  public HttpRequest buildHeadRequest(GenericUrl paramGenericUrl)
  {
    return buildRequest("HEAD", paramGenericUrl, null);
  }
  
  public HttpRequest buildPatchRequest(GenericUrl paramGenericUrl, HttpContent paramHttpContent)
  {
    return buildRequest("PATCH", paramGenericUrl, paramHttpContent);
  }
  
  public HttpRequest buildPostRequest(GenericUrl paramGenericUrl, HttpContent paramHttpContent)
  {
    return buildRequest("POST", paramGenericUrl, paramHttpContent);
  }
  
  public HttpRequest buildPutRequest(GenericUrl paramGenericUrl, HttpContent paramHttpContent)
  {
    return buildRequest("PUT", paramGenericUrl, paramHttpContent);
  }
  
  public HttpRequest buildRequest(String paramString, GenericUrl paramGenericUrl, HttpContent paramHttpContent)
  {
    HttpRequest localHttpRequest = transport.buildRequest();
    if (initializer != null) {
      initializer.initialize(localHttpRequest);
    }
    localHttpRequest.setRequestMethod(paramString);
    if (paramGenericUrl != null) {
      localHttpRequest.setUrl(paramGenericUrl);
    }
    if (paramHttpContent != null) {
      localHttpRequest.setContent(paramHttpContent);
    }
    return localHttpRequest;
  }
  
  public HttpRequestInitializer getInitializer()
  {
    return initializer;
  }
  
  public HttpTransport getTransport()
  {
    return transport;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpRequestFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */