import com.google.api.client.http.HttpIOExceptionHandler;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpUnsuccessfulResponseHandler;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

class iqm
  implements HttpIOExceptionHandler, HttpUnsuccessfulResponseHandler
{
  static final Logger a = Logger.getLogger(iqm.class.getName());
  private final iqk b;
  private final HttpIOExceptionHandler c;
  private final HttpUnsuccessfulResponseHandler d;
  
  public iqm(iqk paramiqk, HttpRequest paramHttpRequest)
  {
    b = ((iqk)fii.a(paramiqk));
    c = paramHttpRequest.getIOExceptionHandler();
    d = paramHttpRequest.getUnsuccessfulResponseHandler();
    paramHttpRequest.setIOExceptionHandler(this);
    paramHttpRequest.setUnsuccessfulResponseHandler(this);
  }
  
  public boolean handleIOException(HttpRequest paramHttpRequest, boolean paramBoolean)
  {
    if ((c != null) && (c.handleIOException(paramHttpRequest, paramBoolean))) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      if (paramBoolean) {}
      try
      {
        b.a();
        return paramBoolean;
      }
      catch (IOException paramHttpRequest)
      {
        a.log(Level.WARNING, "exception thrown while calling server callback", paramHttpRequest);
      }
    }
    return paramBoolean;
  }
  
  public boolean handleResponse(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse, boolean paramBoolean)
  {
    if ((d != null) && (d.handleResponse(paramHttpRequest, paramHttpResponse, paramBoolean))) {}
    for (boolean bool = true;; bool = false)
    {
      if ((bool) && (paramBoolean) && (paramHttpResponse.getStatusCode() / 100 == 5)) {}
      try
      {
        b.a();
        return bool;
      }
      catch (IOException paramHttpRequest)
      {
        a.log(Level.WARNING, "exception thrown while calling server callback", paramHttpRequest);
      }
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     iqm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */