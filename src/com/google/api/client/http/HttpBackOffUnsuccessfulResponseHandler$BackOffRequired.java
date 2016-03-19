package com.google.api.client.http;

public abstract interface HttpBackOffUnsuccessfulResponseHandler$BackOffRequired
{
  public static final BackOffRequired ALWAYS = new HttpBackOffUnsuccessfulResponseHandler.BackOffRequired.1();
  public static final BackOffRequired ON_SERVER_ERROR = new HttpBackOffUnsuccessfulResponseHandler.BackOffRequired.2();
  
  public abstract boolean isRequired(HttpResponse paramHttpResponse);
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler.BackOffRequired
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */