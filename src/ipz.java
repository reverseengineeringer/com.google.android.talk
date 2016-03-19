import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;

public final class ipz
  extends iqb
{
  @isd(a="refresh_token")
  private String c;
  
  public ipz(HttpTransport paramHttpTransport, JsonFactory paramJsonFactory, GenericUrl paramGenericUrl, String paramString)
  {
    super(paramHttpTransport, paramJsonFactory, paramGenericUrl, "refresh_token");
    c = ((String)fii.a(paramString));
  }
  
  private ipz b(String paramString, Object paramObject)
  {
    return (ipz)super.a(paramString, paramObject);
  }
  
  public ipz a(HttpExecuteInterceptor paramHttpExecuteInterceptor)
  {
    return (ipz)super.b(paramHttpExecuteInterceptor);
  }
  
  public ipz a(HttpRequestInitializer paramHttpRequestInitializer)
  {
    return (ipz)super.b(paramHttpRequestInitializer);
  }
}

/* Location:
 * Qualified Name:     ipz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */