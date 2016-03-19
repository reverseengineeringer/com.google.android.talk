package com.google.api.client.http;

import aal;
import fii;
import irg;
import iso;

public class HttpBackOffUnsuccessfulResponseHandler
  implements HttpUnsuccessfulResponseHandler
{
  private final irg backOff;
  private HttpBackOffUnsuccessfulResponseHandler.BackOffRequired backOffRequired = HttpBackOffUnsuccessfulResponseHandler.BackOffRequired.ON_SERVER_ERROR;
  private iso sleeper = iso.a;
  
  public HttpBackOffUnsuccessfulResponseHandler(irg paramirg)
  {
    backOff = ((irg)fii.a(paramirg));
  }
  
  public final irg getBackOff()
  {
    return backOff;
  }
  
  public final HttpBackOffUnsuccessfulResponseHandler.BackOffRequired getBackOffRequired()
  {
    return backOffRequired;
  }
  
  public final iso getSleeper()
  {
    return sleeper;
  }
  
  public final boolean handleResponse(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse, boolean paramBoolean)
  {
    if (!paramBoolean) {}
    while (!backOffRequired.isRequired(paramHttpResponse)) {
      return false;
    }
    try
    {
      paramBoolean = aal.a(sleeper, backOff);
      return paramBoolean;
    }
    catch (InterruptedException paramHttpRequest) {}
    return false;
  }
  
  public HttpBackOffUnsuccessfulResponseHandler setBackOffRequired(HttpBackOffUnsuccessfulResponseHandler.BackOffRequired paramBackOffRequired)
  {
    backOffRequired = ((HttpBackOffUnsuccessfulResponseHandler.BackOffRequired)fii.a(paramBackOffRequired));
    return this;
  }
  
  public HttpBackOffUnsuccessfulResponseHandler setSleeper(iso paramiso)
  {
    sleeper = ((iso)fii.a(paramiso));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpBackOffUnsuccessfulResponseHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */