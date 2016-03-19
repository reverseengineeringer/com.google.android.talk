import android.content.Context;
import android.net.SSLCertificateSocketFactory;
import android.net.SSLSessionCache;
import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import junit.framework.Assert;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.RequestWrapper;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;

public final class aej
  implements HttpClient
{
  public static long a = 256L;
  static final HttpRequestInterceptor b = new aek();
  private static String[] d = { "text/", "application/xml", "application/json" };
  volatile aen c;
  private final HttpClient e;
  private RuntimeException f = new IllegalStateException("AndroidHttpClient created and never closed");
  
  private aej(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    e = new ael(this, paramClientConnectionManager, paramHttpParams);
  }
  
  public static aej a(String paramString, Context paramContext, boolean paramBoolean)
  {
    Object localObject = null;
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 60000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 60000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpClientParams.setRedirecting(localBasicHttpParams, false);
    if (paramContext == null) {
      paramContext = null;
    }
    for (;;)
    {
      HttpProtocolParams.setUserAgent(localBasicHttpParams, paramString);
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      try
      {
        paramString = SSLCertificateSocketFactory.class.getMethod("getHttpSocketFactory", new Class[] { Integer.TYPE, SSLSessionCache.class });
        paramString.setAccessible(true);
        paramString = (SSLSocketFactory)paramString.invoke(null, new Object[] { Integer.valueOf(60000), paramContext });
        Assert.assertNotNull(paramString);
        localSchemeRegistry.register(new Scheme("https", paramString, 443));
        if (paramBoolean)
        {
          paramString = new aeq(localBasicHttpParams, localSchemeRegistry);
          return new aej(paramString, localBasicHttpParams);
          paramContext = new SSLSessionCache(paramContext);
        }
      }
      catch (NoSuchMethodException paramString)
      {
        for (;;)
        {
          Assert.fail(paramString.toString());
          paramString = (String)localObject;
        }
      }
      catch (InvocationTargetException paramString)
      {
        for (;;)
        {
          Assert.fail(paramString.toString());
          paramString = (String)localObject;
        }
      }
      catch (IllegalAccessException paramString)
      {
        for (;;)
        {
          Assert.fail(paramString.toString());
          paramString = (String)localObject;
          continue;
          paramString = new aep(localBasicHttpParams, localSchemeRegistry);
        }
      }
    }
  }
  
  static String a(HttpUriRequest paramHttpUriRequest, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("curl ");
    localStringBuilder.append("-X ");
    localStringBuilder.append(paramHttpUriRequest.getMethod());
    localStringBuilder.append(" ");
    Object localObject1 = paramHttpUriRequest.getAllHeaders();
    int j = localObject1.length;
    int i = 0;
    Object localObject2;
    while (i < j)
    {
      localObject2 = localObject1[i];
      if ((!((Header)localObject2).getName().equals("Authorization")) && (!((Header)localObject2).getName().equals("Cookie")))
      {
        localStringBuilder.append("--header \"");
        localStringBuilder.append(localObject2.toString().trim());
        localStringBuilder.append("\" ");
      }
      i += 1;
    }
    localObject1 = paramHttpUriRequest.getURI();
    if ((paramHttpUriRequest instanceof RequestWrapper))
    {
      localObject2 = ((RequestWrapper)paramHttpUriRequest).getOriginal();
      if ((localObject2 instanceof HttpUriRequest)) {
        localObject1 = ((HttpUriRequest)localObject2).getURI();
      }
    }
    for (;;)
    {
      localStringBuilder.append("\"");
      localStringBuilder.append(localObject1);
      localStringBuilder.append("\"");
      if ((paramHttpUriRequest instanceof HttpEntityEnclosingRequest))
      {
        localObject1 = ((HttpEntityEnclosingRequest)paramHttpUriRequest).getEntity();
        if ((localObject1 != null) && (((HttpEntity)localObject1).isRepeatable()))
        {
          if (((HttpEntity)localObject1).getContentLength() >= 1024L) {
            break label372;
          }
          localObject2 = new ByteArrayOutputStream();
          ((HttpEntity)localObject1).writeTo((OutputStream)localObject2);
          if (!a(paramHttpUriRequest)) {
            break label345;
          }
          paramHttpUriRequest = Base64.encodeToString(((ByteArrayOutputStream)localObject2).toByteArray(), 2);
          localStringBuilder.insert(0, String.valueOf(paramHttpUriRequest).length() + 35 + "echo '" + paramHttpUriRequest + "' | base64 -d > /tmp/$$.bin; ");
          localStringBuilder.append(" --data-binary @/tmp/$$.bin");
        }
      }
      for (;;)
      {
        return localStringBuilder.toString();
        label345:
        paramHttpUriRequest = ((ByteArrayOutputStream)localObject2).toString();
        localStringBuilder.append(" --data-ascii \"").append(paramHttpUriRequest).append("\"");
        continue;
        label372:
        localStringBuilder.append(" [TOO MUCH DATA TO INCLUDE]");
      }
    }
  }
  
  private static boolean a(HttpUriRequest paramHttpUriRequest)
  {
    Header[] arrayOfHeader = paramHttpUriRequest.getHeaders("content-encoding");
    int j;
    int i;
    if (arrayOfHeader != null)
    {
      j = arrayOfHeader.length;
      i = 0;
      if (i < j) {
        if (!"gzip".equalsIgnoreCase(arrayOfHeader[i].getValue())) {}
      }
    }
    for (;;)
    {
      return true;
      i += 1;
      break;
      paramHttpUriRequest = paramHttpUriRequest.getHeaders("content-type");
      if (paramHttpUriRequest != null)
      {
        int k = paramHttpUriRequest.length;
        i = 0;
        while (i < k)
        {
          arrayOfHeader = paramHttpUriRequest[i];
          String[] arrayOfString = d;
          int m = arrayOfString.length;
          j = 0;
          while (j < m)
          {
            String str = arrayOfString[j];
            if (arrayOfHeader.getValue().startsWith(str)) {
              return false;
            }
            j += 1;
          }
          i += 1;
        }
      }
    }
  }
  
  public void a()
  {
    if (f != null)
    {
      getConnectionManager().shutdown();
      f = null;
    }
  }
  
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return (T)e.execute(paramHttpHost, paramHttpRequest, paramResponseHandler);
  }
  
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    return (T)e.execute(paramHttpHost, paramHttpRequest, paramResponseHandler, paramHttpContext);
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return (T)e.execute(paramHttpUriRequest, paramResponseHandler);
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    return (T)e.execute(paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }
  
  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
  {
    return e.execute(paramHttpHost, paramHttpRequest);
  }
  
  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    return e.execute(paramHttpHost, paramHttpRequest, paramHttpContext);
  }
  
  public HttpResponse execute(HttpUriRequest paramHttpUriRequest)
  {
    return e.execute(paramHttpUriRequest);
  }
  
  public HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
  {
    return e.execute(paramHttpUriRequest, paramHttpContext);
  }
  
  protected void finalize()
  {
    super.finalize();
    if (f != null)
    {
      Log.e("MmsHttpClient", "Leak found", f);
      f = null;
    }
  }
  
  public ClientConnectionManager getConnectionManager()
  {
    return e.getConnectionManager();
  }
  
  public HttpParams getParams()
  {
    return e.getParams();
  }
}

/* Location:
 * Qualified Name:     aej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */