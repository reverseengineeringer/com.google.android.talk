import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;

final class iqd
  implements HttpExecuteInterceptor
{
  iqd(iqc paramiqc, HttpExecuteInterceptor paramHttpExecuteInterceptor) {}
  
  public void intercept(HttpRequest paramHttpRequest)
  {
    if (a != null) {
      a.intercept(paramHttpRequest);
    }
    if (b.a.b != null) {
      b.a.b.intercept(paramHttpRequest);
    }
  }
}

/* Location:
 * Qualified Name:     iqd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */