import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;

final class hgx
  implements HttpRequestInitializer
{
  hgx(String paramString1, String paramString2, iqi paramiqi, int paramInt) {}
  
  public void initialize(HttpRequest paramHttpRequest)
  {
    HttpHeaders localHttpHeaders;
    if (paramHttpRequest != null)
    {
      localHttpHeaders = paramHttpRequest.getHeaders();
      if (a == null) {
        break label63;
      }
    }
    label63:
    for (String str = a;; str = "none")
    {
      localHttpHeaders.put("X-Auth-Time", str);
      if (b != null) {
        c.initialize(paramHttpRequest);
      }
      paramHttpRequest.setConnectTimeout(d);
      paramHttpRequest.setReadTimeout(d);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     hgx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */