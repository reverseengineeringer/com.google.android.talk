import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;

public class ahi
{
  public final HttpClient a;
  
  public ahi(HttpClient paramHttpClient)
  {
    a = paramHttpClient;
  }
  
  static void a(HttpUriRequest paramHttpUriRequest, Map<String, String> paramMap)
  {
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramHttpUriRequest.setHeader(str, (String)paramMap.get(str));
    }
  }
  
  public HttpResponse a(agr<?> paramagr, Map<String, String> paramMap)
  {
    Object localObject;
    switch (paramagr.a())
    {
    default: 
      throw new IllegalStateException("Unknown request method.");
    case -1: 
      byte[] arrayOfByte = paramagr.i();
      if (arrayOfByte != null)
      {
        localObject = new HttpPost(paramagr.c());
        ((HttpPost)localObject).addHeader("Content-Type", paramagr.h());
        ((HttpPost)localObject).setEntity(new ByteArrayEntity(arrayOfByte));
      }
      break;
    }
    for (;;)
    {
      a((HttpUriRequest)localObject, paramMap);
      a((HttpUriRequest)localObject, paramagr.g());
      paramMap = ((HttpUriRequest)localObject).getParams();
      int i = d.a();
      HttpConnectionParams.setConnectionTimeout(paramMap, 5000);
      HttpConnectionParams.setSoTimeout(paramMap, i);
      return a.execute((HttpUriRequest)localObject);
      localObject = new HttpGet(paramagr.c());
      continue;
      localObject = new HttpGet(paramagr.c());
      continue;
      localObject = new HttpDelete(paramagr.c());
      continue;
      localObject = new HttpPost(paramagr.c());
      ((HttpPost)localObject).addHeader("Content-Type", paramagr.k());
      continue;
      localObject = new HttpPut(paramagr.c());
      ((HttpPut)localObject).addHeader("Content-Type", paramagr.k());
      continue;
      localObject = new HttpHead(paramagr.c());
      continue;
      localObject = new HttpOptions(paramagr.c());
      continue;
      localObject = new HttpTrace(paramagr.c());
      continue;
      localObject = new ahh(paramagr.c());
      ((ahh)localObject).addHeader("Content-Type", paramagr.k());
    }
  }
}

/* Location:
 * Qualified Name:     ahi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */