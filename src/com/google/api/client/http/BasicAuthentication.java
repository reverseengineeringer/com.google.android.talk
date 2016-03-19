package com.google.api.client.http;

import fii;

public final class BasicAuthentication
  implements HttpExecuteInterceptor, HttpRequestInitializer
{
  private final String password;
  private final String username;
  
  public BasicAuthentication(String paramString1, String paramString2)
  {
    username = ((String)fii.a(paramString1));
    password = ((String)fii.a(paramString2));
  }
  
  public String getPassword()
  {
    return password;
  }
  
  public String getUsername()
  {
    return username;
  }
  
  public void initialize(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.setInterceptor(this);
  }
  
  public void intercept(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.getHeaders().setBasicAuthentication(username, password);
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.BasicAuthentication
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */