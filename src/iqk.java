import com.google.api.client.http.AbstractInputStreamContent;
import com.google.api.client.http.ByteArrayContent;
import com.google.api.client.http.EmptyContent;
import com.google.api.client.http.GZipEncoding;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestFactory;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.InputStreamContent;
import com.google.api.client.http.MultipartContent;
import java.io.BufferedInputStream;
import java.io.InputStream;
import java.util.Arrays;

public final class iqk
{
  String a = "*";
  iso b = iso.a;
  private int c = iql.a;
  private final AbstractInputStreamContent d;
  private final HttpRequestFactory e;
  private final HttpTransport f;
  private HttpContent g;
  private long h;
  private boolean i;
  private String j = "POST";
  private HttpHeaders k = new HttpHeaders();
  private HttpRequest l;
  private InputStream m;
  private boolean n;
  private long o;
  private int p = 10485760;
  private Byte q;
  private long r;
  private int s;
  private byte[] t;
  private boolean u;
  
  public iqk(AbstractInputStreamContent paramAbstractInputStreamContent, HttpTransport paramHttpTransport, HttpRequestInitializer paramHttpRequestInitializer)
  {
    d = ((AbstractInputStreamContent)fii.a(paramAbstractInputStreamContent));
    f = ((HttpTransport)fii.a(paramHttpTransport));
    if (paramHttpRequestInitializer == null) {}
    for (paramAbstractInputStreamContent = paramHttpTransport.createRequestFactory();; paramAbstractInputStreamContent = paramHttpTransport.createRequestFactory(paramHttpRequestInitializer))
    {
      e = paramAbstractInputStreamContent;
      return;
    }
  }
  
  private static HttpResponse a(HttpRequest paramHttpRequest)
  {
    new iqg().intercept(paramHttpRequest);
    paramHttpRequest.setThrowExceptionOnExecuteError(false);
    return paramHttpRequest.execute();
  }
  
  private HttpResponse b(GenericUrl paramGenericUrl)
  {
    c = iql.d;
    Object localObject1 = d;
    if (g != null)
    {
      localObject1 = new MultipartContent().setContentParts(Arrays.asList(new HttpContent[] { g, d }));
      paramGenericUrl.put("uploadType", "multipart");
    }
    for (;;)
    {
      paramGenericUrl = e.buildRequest(j, paramGenericUrl, (HttpContent)localObject1);
      paramGenericUrl.getHeaders().putAll(k);
      paramGenericUrl = b(paramGenericUrl);
      try
      {
        if (c()) {
          o = d();
        }
        c = iql.e;
        return paramGenericUrl;
      }
      finally
      {
        paramGenericUrl.disconnect();
      }
      paramGenericUrl.put("uploadType", "media");
    }
  }
  
  private HttpResponse b(HttpRequest paramHttpRequest)
  {
    if ((!u) && (!(paramHttpRequest.getContent() instanceof EmptyContent))) {
      paramHttpRequest.setEncoding(new GZipEncoding());
    }
    return a(paramHttpRequest);
  }
  
  private HttpResponse c(GenericUrl paramGenericUrl)
  {
    Object localObject2 = d(paramGenericUrl);
    if (!((HttpResponse)localObject2).isSuccessStatusCode()) {}
    label326:
    int i2;
    label344:
    int i3;
    label382:
    label567:
    label585:
    long l1;
    long l2;
    long l3;
    label682:
    do
    {
      return (HttpResponse)localObject2;
      for (;;)
      {
        int i1;
        try
        {
          paramGenericUrl = new GenericUrl(((HttpResponse)localObject2).getHeaders().getLocation());
          ((HttpResponse)localObject2).disconnect();
          m = d.getInputStream();
          GenericUrl localGenericUrl1 = paramGenericUrl;
          if (!m.markSupported())
          {
            localGenericUrl1 = paramGenericUrl;
            if (c())
            {
              m = new BufferedInputStream(m);
              localGenericUrl1 = paramGenericUrl;
            }
          }
          l = e.buildPutRequest(localGenericUrl1, null);
          if (c())
          {
            i1 = (int)Math.min(p, d() - o);
            if (!c()) {
              break label326;
            }
            m.mark(i1);
            paramGenericUrl = new irk(m, i1);
            paramGenericUrl = new InputStreamContent(d.getType(), paramGenericUrl).setRetrySupported(true).setLength(i1).setCloseInputStream(false);
            a = String.valueOf(d());
            s = i1;
            l.setContent(paramGenericUrl);
            if (i1 != 0) {
              break label585;
            }
            l.getHeaders().setContentRange("bytes */0");
            new iqm(this, l);
            if (!c()) {
              break label682;
            }
            paramGenericUrl = a(l);
            try
            {
              if (!paramGenericUrl.isSuccessStatusCode()) {
                break;
              }
              o = d();
              if (d.getCloseInputStream()) {
                m.close();
              }
              c = iql.e;
              return paramGenericUrl;
            }
            finally
            {
              paramGenericUrl.disconnect();
            }
          }
          i1 = p;
        }
        finally
        {
          ((HttpResponse)localObject2).disconnect();
        }
        continue;
        if (t == null) {
          if (q == null)
          {
            i2 = i1 + 1;
            t = new byte[i1 + 1];
            if (q == null) {
              break label897;
            }
            t[0] = q.byteValue();
            int i4 = 0;
            i3 = i2;
            i2 = i4;
            i4 = aal.a(m, t, i1 + 1 - i3, i3);
            if (i4 >= i3) {
              break label567;
            }
            i2 = Math.max(0, i4) + i2;
            i1 = i2;
            if (q != null)
            {
              i1 = i2 + 1;
              q = null;
            }
            i2 = i1;
            if (a.equals("*")) {
              a = String.valueOf(o + i1);
            }
          }
        }
        for (i2 = i1;; i2 = i1)
        {
          paramGenericUrl = new ByteArrayContent(d.getType(), t, 0, i2);
          r = (o + i2);
          i1 = i2;
          break;
          i2 = i1;
          break label344;
          i2 = (int)(r - o);
          System.arraycopy(t, s - i2, t, 0, i2);
          if (q != null) {
            t[i2] = q.byteValue();
          }
          i3 = i1 - i2;
          break label382;
          q = Byte.valueOf(t[i1]);
        }
        paramGenericUrl = l.getHeaders();
        l1 = o;
        l2 = o;
        l3 = i1;
        localObject2 = a;
        paramGenericUrl.setContentRange(String.valueOf(localObject2).length() + 48 + "bytes " + l1 + "-" + (l2 + l3 - 1L) + "/" + (String)localObject2);
        continue;
        paramGenericUrl = b(l);
      }
      localObject2 = paramGenericUrl;
    } while (paramGenericUrl.getStatusCode() != 308);
    localObject2 = paramGenericUrl.getHeaders().getLocation();
    if (localObject2 != null) {
      GenericUrl localGenericUrl2 = new GenericUrl((String)localObject2);
    }
    localObject2 = paramGenericUrl.getHeaders().getRange();
    if (localObject2 == null)
    {
      l1 = 0L;
      label749:
      l2 = l1 - o;
      if ((l2 < 0L) || (l2 > s)) {
        break label905;
      }
      bool = true;
      label779:
      fii.b(bool);
      l3 = s - l2;
      if (!c()) {
        break label882;
      }
      if (l3 > 0L)
      {
        m.reset();
        if (l2 != m.skip(l2)) {
          break label911;
        }
      }
    }
    label882:
    label897:
    label905:
    label911:
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool);
      for (;;)
      {
        o = l1;
        c = iql.d;
        paramGenericUrl.disconnect();
        break;
        l1 = Long.parseLong(((String)localObject2).substring(((String)localObject2).indexOf('-') + 1)) + 1L;
        break label749;
        if (l3 == 0L) {
          t = null;
        }
      }
      i3 = i2;
      i2 = 0;
      break label382;
      bool = false;
      break label779;
    }
  }
  
  private boolean c()
  {
    return d() >= 0L;
  }
  
  private long d()
  {
    if (!i)
    {
      h = d.getLength();
      i = true;
    }
    return h;
  }
  
  /* Error */
  private HttpResponse d(GenericUrl paramGenericUrl)
  {
    // Byte code:
    //   0: aload_0
    //   1: getstatic 396	iql:b	I
    //   4: putfield 50	iqk:c	I
    //   7: aload_1
    //   8: ldc -121
    //   10: ldc_w 398
    //   13: invokevirtual 143	com/google/api/client/http/GenericUrl:put	(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    //   16: pop
    //   17: aload_0
    //   18: getfield 118	iqk:g	Lcom/google/api/client/http/HttpContent;
    //   21: ifnonnull +94 -> 115
    //   24: new 184	com/google/api/client/http/EmptyContent
    //   27: dup
    //   28: invokespecial 399	com/google/api/client/http/EmptyContent:<init>	()V
    //   31: astore_2
    //   32: aload_0
    //   33: getfield 91	iqk:e	Lcom/google/api/client/http/HttpRequestFactory;
    //   36: aload_0
    //   37: getfield 54	iqk:j	Ljava/lang/String;
    //   40: aload_1
    //   41: aload_2
    //   42: invokevirtual 149	com/google/api/client/http/HttpRequestFactory:buildRequest	(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    //   45: astore_1
    //   46: aload_0
    //   47: getfield 59	iqk:k	Lcom/google/api/client/http/HttpHeaders;
    //   50: ldc_w 401
    //   53: aload_0
    //   54: getfield 81	iqk:d	Lcom/google/api/client/http/AbstractInputStreamContent;
    //   57: invokevirtual 248	com/google/api/client/http/AbstractInputStreamContent:getType	()Ljava/lang/String;
    //   60: invokevirtual 405	com/google/api/client/http/HttpHeaders:set	(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;
    //   63: pop
    //   64: aload_0
    //   65: invokespecial 162	iqk:c	()Z
    //   68: ifeq +21 -> 89
    //   71: aload_0
    //   72: getfield 59	iqk:k	Lcom/google/api/client/http/HttpHeaders;
    //   75: ldc_w 407
    //   78: aload_0
    //   79: invokespecial 165	iqk:d	()J
    //   82: invokestatic 410	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   85: invokevirtual 405	com/google/api/client/http/HttpHeaders:set	(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;
    //   88: pop
    //   89: aload_1
    //   90: invokevirtual 153	com/google/api/client/http/HttpRequest:getHeaders	()Lcom/google/api/client/http/HttpHeaders;
    //   93: aload_0
    //   94: getfield 59	iqk:k	Lcom/google/api/client/http/HttpHeaders;
    //   97: invokevirtual 157	com/google/api/client/http/HttpHeaders:putAll	(Ljava/util/Map;)V
    //   100: aload_0
    //   101: aload_1
    //   102: invokespecial 159	iqk:b	(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;
    //   105: astore_1
    //   106: aload_0
    //   107: getstatic 411	iql:c	I
    //   110: putfield 50	iqk:c	I
    //   113: aload_1
    //   114: areturn
    //   115: aload_0
    //   116: getfield 118	iqk:g	Lcom/google/api/client/http/HttpContent;
    //   119: astore_2
    //   120: goto -88 -> 32
    //   123: astore_2
    //   124: aload_1
    //   125: invokevirtual 176	com/google/api/client/http/HttpResponse:disconnect	()V
    //   128: aload_2
    //   129: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	130	0	this	iqk
    //   0	130	1	paramGenericUrl	GenericUrl
    //   31	89	2	localObject1	Object
    //   123	6	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   106	113	123	finally
  }
  
  public HttpResponse a(GenericUrl paramGenericUrl)
  {
    if (c == iql.a) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      if (!n) {
        break;
      }
      return b(paramGenericUrl);
    }
    return c(paramGenericUrl);
  }
  
  public iqk a(HttpContent paramHttpContent)
  {
    g = paramHttpContent;
    return this;
  }
  
  void a()
  {
    fii.a(l, "The current request should not be null");
    l.setContent(new EmptyContent());
    HttpHeaders localHttpHeaders = l.getHeaders();
    if (c()) {}
    for (Object localObject = Long.valueOf(d());; localObject = "*")
    {
      localObject = String.valueOf(localObject);
      localHttpHeaders.setContentRange(String.valueOf(localObject).length() + 8 + "bytes */" + (String)localObject);
      return;
    }
  }
  
  public iqk b()
  {
    n = true;
    return this;
  }
}

/* Location:
 * Qualified Name:     iqk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */