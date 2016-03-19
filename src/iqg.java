import com.google.api.client.http.EmptyContent;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.UrlEncodedContent;

public final class iqg
  implements HttpExecuteInterceptor, HttpRequestInitializer
{
  private final boolean a = false;
  
  public iqg()
  {
    this((byte)0);
  }
  
  private iqg(byte paramByte) {}
  
  public void initialize(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.setInterceptor(this);
  }
  
  public void intercept(HttpRequest paramHttpRequest)
  {
    int j = 1;
    String str = paramHttpRequest.getRequestMethod();
    int i;
    if (!str.equals("POST")) {
      if (str.equals("GET"))
      {
        if (paramHttpRequest.getUrl().build().length() <= 2048) {
          break label121;
        }
        i = j;
        if (i != 0)
        {
          str = paramHttpRequest.getRequestMethod();
          paramHttpRequest.setRequestMethod("POST");
          paramHttpRequest.getHeaders().set("X-HTTP-Method-Override", str);
          if (!str.equals("GET")) {
            break label140;
          }
          paramHttpRequest.setContent(new UrlEncodedContent(paramHttpRequest.getUrl().clone()));
          paramHttpRequest.getUrl().clear();
        }
      }
    }
    label121:
    label140:
    while (paramHttpRequest.getContent() != null)
    {
      return;
      i = j;
      if (a) {
        break;
      }
      i = j;
      if (!paramHttpRequest.getTransport().supportsMethod(str)) {
        break;
      }
      i = 0;
      break;
    }
    paramHttpRequest.setContent(new EmptyContent());
  }
}

/* Location:
 * Qualified Name:     iqg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */