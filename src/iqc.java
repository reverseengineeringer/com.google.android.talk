import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;

final class iqc
  implements HttpRequestInitializer
{
  iqc(iqb paramiqb) {}
  
  public void initialize(HttpRequest paramHttpRequest)
  {
    if (a.a != null) {
      a.a.initialize(paramHttpRequest);
    }
    paramHttpRequest.setInterceptor(new iqd(this, paramHttpRequest.getInterceptor()));
  }
}

/* Location:
 * Qualified Name:     iqc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */