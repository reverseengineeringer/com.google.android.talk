import android.util.Log;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

final class aem
  implements HttpRequestInterceptor
{
  aem(aej paramaej) {}
  
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    paramHttpContext = a.c;
    if ((paramHttpContext != null) && (Log.isLoggable(h, i)) && ((paramHttpRequest instanceof HttpUriRequest)))
    {
      paramHttpRequest = aej.a((HttpUriRequest)paramHttpRequest, false);
      Log.println(i, h, paramHttpRequest);
    }
  }
}

/* Location:
 * Qualified Name:     aem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */