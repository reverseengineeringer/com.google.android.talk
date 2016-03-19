import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.RequestWrapper;
import org.apache.http.message.BasicHeader;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

public final class gab
  implements HttpClient
{
  private static final String[] d = { "text/", "application/xml", "application/json" };
  public gaf a;
  public HttpParams b = new gac(this);
  private gae c;
  private Context e;
  private String f;
  
  public gab(Context paramContext, String paramString) {}
  
  private gab(Context paramContext, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramString = paramString + " (" + Build.DEVICE + " " + Build.ID + ")";
    e = paramContext;
    f = paramString;
    a = new gaf(e, paramBoolean2);
  }
  
  private static String a(HttpUriRequest paramHttpUriRequest, boolean paramBoolean)
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
      if ((paramBoolean) || ((!((Header)localObject2).getName().equals("Authorization")) && (!((Header)localObject2).getName().equals("Cookie"))))
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
          if (((HttpEntity)localObject1).getContentLength() >= 1048576L) {
            break label359;
          }
          localObject2 = new ByteArrayOutputStream();
          ((HttpEntity)localObject1).writeTo((OutputStream)localObject2);
          if (!a(paramHttpUriRequest)) {
            break label333;
          }
          paramHttpUriRequest = Base64.encodeToString(((ByteArrayOutputStream)localObject2).toByteArray(), 2);
          localStringBuilder.insert(0, "echo '" + paramHttpUriRequest + "' | base64 -d > /tmp/$$.bin; ");
          localStringBuilder.append(" --data-binary @/tmp/$$.bin");
        }
      }
      for (;;)
      {
        return localStringBuilder.toString();
        label333:
        paramHttpUriRequest = ((ByteArrayOutputStream)localObject2).toString();
        localStringBuilder.append(" --data-ascii \"").append(paramHttpUriRequest).append("\"");
        continue;
        label359:
        localStringBuilder.append(" [TOO MUCH DATA TO INCLUDE]");
      }
    }
  }
  
  private HttpResponse a(HttpURLConnection paramHttpURLConnection)
  {
    Object localObject2 = null;
    int i = paramHttpURLConnection.getResponseCode();
    if (i < 0) {
      throw new IOException("Cannot retrieve a valid HTTP status code from server response");
    }
    a.a(paramHttpURLConnection.getURL().toString(), i);
    gad localgad = new gad();
    a = paramHttpURLConnection;
    localgad.setStatusLine(HttpVersion.HTTP_1_1, i, paramHttpURLConnection.getResponseMessage());
    Iterator localIterator1 = paramHttpURLConnection.getHeaderFields().entrySet().iterator();
    Object localObject1 = null;
    while (localIterator1.hasNext())
    {
      Object localObject3 = (Map.Entry)localIterator1.next();
      String str = (String)((Map.Entry)localObject3).getKey();
      if (str != null)
      {
        Iterator localIterator2 = ((List)((Map.Entry)localObject3).getValue()).iterator();
        localObject3 = localObject1;
        Object localObject4 = localObject2;
        localObject2 = localObject4;
        localObject1 = localObject3;
        if (localIterator2.hasNext())
        {
          localObject1 = (String)localIterator2.next();
          if (str.equalsIgnoreCase("content-type")) {
            localObject2 = localObject1;
          }
          for (;;)
          {
            localgad.addHeader(new BasicHeader(str, (String)localObject1));
            localObject3 = localObject2;
            break;
            localObject2 = localObject3;
            if (str.equalsIgnoreCase("content-encoding"))
            {
              localObject4 = localObject1;
              localObject2 = localObject3;
            }
          }
        }
      }
    }
    if (i >= 400) {}
    for (paramHttpURLConnection = paramHttpURLConnection.getErrorStream();; paramHttpURLConnection = paramHttpURLConnection.getInputStream())
    {
      if (paramHttpURLConnection != null)
      {
        paramHttpURLConnection = new InputStreamEntity(paramHttpURLConnection, -1L);
        if (localObject1 != null) {
          paramHttpURLConnection.setContentType((String)localObject1);
        }
        if (localObject2 != null) {
          paramHttpURLConnection.setContentEncoding((String)localObject2);
        }
        localgad.setEntity(paramHttpURLConnection);
      }
      return localgad;
    }
  }
  
  private void a(HttpURLConnection paramHttpURLConnection, HttpUriRequest paramHttpUriRequest)
  {
    paramHttpURLConnection.setRequestMethod(paramHttpUriRequest.getMethod());
    Object localObject = paramHttpUriRequest.getAllHeaders();
    int j = localObject.length;
    int i = 0;
    Header localHeader;
    while (i < j)
    {
      localHeader = localObject[i];
      paramHttpURLConnection.addRequestProperty(localHeader.getName(), localHeader.getValue());
      i += 1;
    }
    if (paramHttpURLConnection.getRequestProperty("User-Agent") == null) {
      paramHttpURLConnection.setRequestProperty("User-Agent", f);
    }
    if (((paramHttpUriRequest instanceof HttpEntityEnclosingRequest)) && (((HttpEntityEnclosingRequest)paramHttpUriRequest).getEntity() != null))
    {
      paramHttpUriRequest = ((HttpEntityEnclosingRequest)paramHttpUriRequest).getEntity();
      paramHttpURLConnection.setDoOutput(true);
      if (paramHttpUriRequest.isChunked()) {}
      for (long l = -1L;; l = paramHttpUriRequest.getContentLength())
      {
        localObject = paramHttpUriRequest.getContentType();
        localHeader = paramHttpUriRequest.getContentEncoding();
        if (l > 0L) {
          paramHttpURLConnection.setRequestProperty("content-length", Long.toString(l));
        }
        if (localObject != null) {
          paramHttpURLConnection.setRequestProperty("content-type", ((Header)localObject).getValue());
        }
        if (localHeader != null) {
          paramHttpURLConnection.setRequestProperty("content-encoding", localHeader.getValue());
        }
        paramHttpUriRequest.writeTo(paramHttpURLConnection.getOutputStream());
        return;
      }
    }
    paramHttpURLConnection.connect();
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
  
  private HttpResponse b(HttpUriRequest paramHttpUriRequest)
  {
    if ((Looper.myLooper() != null) && (Looper.myLooper() == Looper.getMainLooper())) {
      throw new RuntimeException("This thread forbids HTTP requests");
    }
    Object localObject;
    long l;
    if ((paramHttpUriRequest instanceof HttpEntityEnclosingRequest))
    {
      localObject = ((HttpEntityEnclosingRequest)paramHttpUriRequest).getEntity();
      if (localObject == null) {
        l = 0L;
      }
    }
    for (;;)
    {
      if (l >= 0L) {
        paramHttpUriRequest.addHeader("content-length", Long.toString(l));
      }
      localObject = c;
      if ((localObject != null) && (((gae)localObject).a())) {
        ((gae)localObject).a(a(paramHttpUriRequest, a));
      }
      localObject = paramHttpUriRequest.getURI().toURL();
      localObject = a.a((URL)localObject, null);
      ((HttpURLConnection)localObject).setInstanceFollowRedirects(false);
      RequestWrapper localRequestWrapper;
      if (!paramHttpUriRequest.getURI().toString().equals(((HttpURLConnection)localObject).getURL().toString())) {
        localRequestWrapper = c(paramHttpUriRequest);
      }
      try
      {
        localRequestWrapper.setURI(((HttpURLConnection)localObject).getURL().toURI());
        a((HttpURLConnection)localObject, paramHttpUriRequest);
        return a((HttpURLConnection)localObject);
        if (!((HttpEntity)localObject).isChunked())
        {
          l = ((HttpEntity)localObject).getContentLength();
          continue;
        }
        l = -1L;
      }
      catch (URISyntaxException localURISyntaxException)
      {
        for (;;) {}
      }
    }
  }
  
  /* Error */
  private static RequestWrapper c(HttpUriRequest paramHttpUriRequest)
  {
    // Byte code:
    //   0: aload_0
    //   1: instanceof 141
    //   4: ifeq +21 -> 25
    //   7: new 432	org/apache/http/impl/client/EntityEnclosingRequestWrapper
    //   10: dup
    //   11: aload_0
    //   12: checkcast 141	org/apache/http/HttpEntityEnclosingRequest
    //   15: invokespecial 435	org/apache/http/impl/client/EntityEnclosingRequestWrapper:<init>	(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    //   18: astore_0
    //   19: aload_0
    //   20: invokevirtual 438	org/apache/http/impl/client/RequestWrapper:resetHeaders	()V
    //   23: aload_0
    //   24: areturn
    //   25: new 130	org/apache/http/impl/client/RequestWrapper
    //   28: dup
    //   29: aload_0
    //   30: invokespecial 441	org/apache/http/impl/client/RequestWrapper:<init>	(Lorg/apache/http/HttpRequest;)V
    //   33: astore_0
    //   34: goto -15 -> 19
    //   37: astore_0
    //   38: new 443	org/apache/http/client/ClientProtocolException
    //   41: dup
    //   42: aload_0
    //   43: invokespecial 446	org/apache/http/client/ClientProtocolException:<init>	(Ljava/lang/Throwable;)V
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	paramHttpUriRequest	HttpUriRequest
    // Exception table:
    //   from	to	target	type
    //   0	19	37	org/apache/http/ProtocolException
    //   19	23	37	org/apache/http/ProtocolException
    //   25	34	37	org/apache/http/ProtocolException
  }
  
  public void a(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("name");
    }
    c = new gae(paramString, 2, false);
  }
  
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    throw new UnsupportedOperationException();
  }
  
  public <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    throw new UnsupportedOperationException();
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return (T)execute(paramHttpUriRequest, paramResponseHandler, null);
  }
  
  public <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    throw new UnsupportedOperationException();
  }
  
  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
  {
    throw new UnsupportedOperationException();
  }
  
  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    throw new UnsupportedOperationException();
  }
  
  public HttpResponse execute(HttpUriRequest paramHttpUriRequest)
  {
    return execute(paramHttpUriRequest, null);
  }
  
  public HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
  {
    return b(paramHttpUriRequest);
  }
  
  public ClientConnectionManager getConnectionManager()
  {
    throw new UnsupportedOperationException();
  }
  
  public HttpParams getParams()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     gab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */