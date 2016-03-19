import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;

final class dti
  implements HttpRequestInitializer
{
  dti(Long paramLong, String paramString1, iqi paramiqi, String paramString2, int paramInt) {}
  
  public void initialize(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.getHeaders().put("X-Device-ID", dth.b);
    String str = exa.b();
    paramHttpRequest.getHeaders().put("X-Network-ID", str);
    paramHttpRequest.getHeaders().setUserAgent(aal.i());
    HttpHeaders localHttpHeaders = paramHttpRequest.getHeaders();
    if (a != null) {}
    for (str = a.toString();; str = "none")
    {
      localHttpHeaders.put("X-Auth-Time", str);
      if (b != null) {
        c.initialize(paramHttpRequest);
      }
      if (d != null) {
        paramHttpRequest.getHeaders().put("X-Goog-PageId", d);
      }
      paramHttpRequest.setConnectTimeout(e);
      paramHttpRequest.setReadTimeout(e);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dti
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */