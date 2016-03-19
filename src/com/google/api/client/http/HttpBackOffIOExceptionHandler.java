package com.google.api.client.http;

import aal;
import fii;
import irg;
import iso;

public class HttpBackOffIOExceptionHandler
  implements HttpIOExceptionHandler
{
  private final irg backOff;
  private iso sleeper = iso.a;
  
  public HttpBackOffIOExceptionHandler(irg paramirg)
  {
    backOff = ((irg)fii.a(paramirg));
  }
  
  public final irg getBackOff()
  {
    return backOff;
  }
  
  public final iso getSleeper()
  {
    return sleeper;
  }
  
  public boolean handleIOException(HttpRequest paramHttpRequest, boolean paramBoolean)
  {
    if (!paramBoolean) {
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
  
  public HttpBackOffIOExceptionHandler setSleeper(iso paramiso)
  {
    sleeper = ((iso)fii.a(paramiso));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.api.client.http.HttpBackOffIOExceptionHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */