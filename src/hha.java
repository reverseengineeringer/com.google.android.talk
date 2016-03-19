import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpResponse;
import java.io.InputStream;

public final class hha
{
  final HttpResponse a;
  
  hha(HttpResponse paramHttpResponse)
  {
    a = paramHttpResponse;
  }
  
  public InputStream a()
  {
    return a.getContent();
  }
  
  public String a(String paramString)
  {
    return a.getHeaders().getFirstHeaderStringValue(paramString);
  }
}

/* Location:
 * Qualified Name:     hha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */