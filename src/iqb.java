import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestFactory;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.UrlEncodedContent;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import com.google.api.client.util.GenericData;

public class iqb
  extends GenericData
{
  HttpRequestInitializer a;
  HttpExecuteInterceptor b;
  private final HttpTransport c;
  private final JsonFactory d;
  private GenericUrl e;
  @isd(a="grant_type")
  private String f;
  
  public iqb(HttpTransport paramHttpTransport, JsonFactory paramJsonFactory, GenericUrl paramGenericUrl, String paramString)
  {
    c = ((HttpTransport)fii.a(paramHttpTransport));
    d = ((JsonFactory)fii.a(paramJsonFactory));
    a(paramGenericUrl);
    a(paramString);
  }
  
  public iqb a(GenericUrl paramGenericUrl)
  {
    e = paramGenericUrl;
    if (paramGenericUrl.getFragment() == null) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      return this;
    }
  }
  
  public iqb a(String paramString)
  {
    f = ((String)fii.a(paramString));
    return this;
  }
  
  public iqb a(String paramString, Object paramObject)
  {
    return (iqb)super.set(paramString, paramObject);
  }
  
  public iqe a()
  {
    Object localObject = c.createRequestFactory(new iqc(this)).buildPostRequest(e, new UrlEncodedContent(this));
    ((HttpRequest)localObject).setParser(new JsonObjectParser(d));
    ((HttpRequest)localObject).setThrowExceptionOnExecuteError(false);
    localObject = ((HttpRequest)localObject).execute();
    if (((HttpResponse)localObject).isSuccessStatusCode()) {
      return (iqe)((HttpResponse)localObject).parseAs(iqe.class);
    }
    throw iqf.a(d, (HttpResponse)localObject);
  }
  
  public iqb b(HttpExecuteInterceptor paramHttpExecuteInterceptor)
  {
    b = paramHttpExecuteInterceptor;
    return this;
  }
  
  public iqb b(HttpRequestInitializer paramHttpRequestInitializer)
  {
    a = paramHttpRequestInitializer;
    return this;
  }
}

/* Location:
 * Qualified Name:     iqb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */