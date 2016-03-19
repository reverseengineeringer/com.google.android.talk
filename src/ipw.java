import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpExecuteInterceptor;
import com.google.api.client.http.HttpHeaders;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.http.HttpUnsuccessfulResponseHandler;
import com.google.api.client.json.JsonFactory;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ipw
  implements HttpExecuteInterceptor, HttpRequestInitializer, HttpUnsuccessfulResponseHandler
{
  static final Logger a = Logger.getLogger(ipw.class.getName());
  public final iro b;
  public final HttpTransport c;
  public final HttpExecuteInterceptor d;
  public final JsonFactory e;
  public final String f;
  private final Lock g = new ReentrantLock();
  private final ipx h;
  private String i;
  private Long j;
  private String k;
  private final Collection<a> l;
  private final HttpRequestInitializer m;
  
  public ipw(ipy paramipy)
  {
    h = ((ipx)fii.a(a));
    c = b;
    e = c;
    if (d == null) {}
    for (String str = null;; str = d.build())
    {
      f = str;
      d = f;
      m = g;
      l = Collections.unmodifiableCollection(h);
      b = ((iro)fii.a(e));
      return;
    }
  }
  
  private Long b()
  {
    g.lock();
    try
    {
      Long localLong = j;
      if (localLong == null) {
        return null;
      }
      long l1 = (j.longValue() - b.a()) / 1000L;
      return Long.valueOf(l1);
    }
    finally
    {
      g.unlock();
    }
  }
  
  private boolean c()
  {
    int n = 1;
    g.lock();
    for (;;)
    {
      try
      {
        Object localObject1 = a();
        if (localObject1 == null) {
          break label162;
        }
        a((iqe)localObject1);
        localObject1 = l.iterator();
        if (((Iterator)localObject1).hasNext())
        {
          ((Iterator)localObject1).next();
          continue;
        }
      }
      catch (iqf localiqf)
      {
        if ((400 > localiqf.getStatusCode()) || (localiqf.getStatusCode() >= 500)) {
          break label151;
        }
        if ((a != null) && (n != 0))
        {
          a(null);
          b(null);
        }
        Iterator localIterator = l.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localIterator.next();
        continue;
      }
      finally
      {
        g.unlock();
      }
      return true;
      label151:
      n = 0;
    }
    if (n != 0) {
      throw ((Throwable)localObject2);
    }
    label162:
    g.unlock();
    return false;
  }
  
  public ipw a(iqe paramiqe)
  {
    a(a);
    if (c != null) {
      b(c);
    }
    b(b);
    return this;
  }
  
  public ipw a(Long paramLong)
  {
    g.lock();
    try
    {
      j = paramLong;
      return this;
    }
    finally
    {
      g.unlock();
    }
  }
  
  public ipw a(String paramString)
  {
    g.lock();
    try
    {
      i = paramString;
      return this;
    }
    finally
    {
      g.unlock();
    }
  }
  
  public iqe a()
  {
    if (k == null) {
      return null;
    }
    return new ipz(c, e, new GenericUrl(f), k).a(d).a(m).a();
  }
  
  public ipw b(Long paramLong)
  {
    if (paramLong == null) {}
    for (paramLong = null;; paramLong = Long.valueOf(b.a() + paramLong.longValue() * 1000L)) {
      return a(paramLong);
    }
  }
  
  /* Error */
  public ipw b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 61	ipw:g	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 122 1 0
    //   9: aload_1
    //   10: ifnull +39 -> 49
    //   13: aload_0
    //   14: getfield 82	ipw:e	Lcom/google/api/client/json/JsonFactory;
    //   17: ifnull +48 -> 65
    //   20: aload_0
    //   21: getfield 78	ipw:c	Lcom/google/api/client/http/HttpTransport;
    //   24: ifnull +41 -> 65
    //   27: aload_0
    //   28: getfield 91	ipw:d	Lcom/google/api/client/http/HttpExecuteInterceptor;
    //   31: ifnull +34 -> 65
    //   34: aload_0
    //   35: getfield 87	ipw:f	Ljava/lang/String;
    //   38: ifnull +27 -> 65
    //   41: iconst_1
    //   42: istore_2
    //   43: iload_2
    //   44: ldc -45
    //   46: invokestatic 214	fii:a	(ZLjava/lang/Object;)V
    //   49: aload_0
    //   50: aload_1
    //   51: putfield 192	ipw:k	Ljava/lang/String;
    //   54: aload_0
    //   55: getfield 61	ipw:g	Ljava/util/concurrent/locks/Lock;
    //   58: invokeinterface 127 1 0
    //   63: aload_0
    //   64: areturn
    //   65: iconst_0
    //   66: istore_2
    //   67: goto -24 -> 43
    //   70: astore_1
    //   71: aload_0
    //   72: getfield 61	ipw:g	Ljava/util/concurrent/locks/Lock;
    //   75: invokeinterface 127 1 0
    //   80: aload_1
    //   81: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	82	0	this	ipw
    //   0	82	1	paramString	String
    //   42	25	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   13	41	70	finally
    //   43	49	70	finally
    //   49	54	70	finally
  }
  
  public boolean handleResponse(HttpRequest paramHttpRequest, HttpResponse paramHttpResponse, boolean paramBoolean)
  {
    boolean bool = true;
    Object localObject = paramHttpResponse.getHeaders().getAuthenticateAsList();
    int n;
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      for (;;)
      {
        if (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          if (str.startsWith("Bearer "))
          {
            paramBoolean = ipv.a.matcher(str).find();
            n = 1;
            if (n == 0)
            {
              if (paramHttpResponse.getStatusCode() != 401) {
                break label235;
              }
              paramBoolean = true;
            }
            label90:
            if (!paramBoolean) {
              break;
            }
          }
        }
      }
    }
    for (;;)
    {
      try
      {
        g.lock();
        try
        {
          paramHttpResponse = i;
          paramHttpRequest = paramHttpRequest.getHeaders().getAuthorizationAsList();
          if (paramHttpRequest == null) {
            break label240;
          }
          paramHttpRequest = paramHttpRequest.iterator();
          if (!paramHttpRequest.hasNext()) {
            break label240;
          }
          localObject = (String)paramHttpRequest.next();
          if (!((String)localObject).startsWith("Bearer ")) {
            continue;
          }
          paramHttpRequest = ((String)localObject).substring(7);
          paramBoolean = bool;
          if (StressMode.a(paramHttpResponse, paramHttpRequest))
          {
            paramBoolean = c();
            if (!paramBoolean) {
              break label245;
            }
            paramBoolean = bool;
          }
          return paramBoolean;
        }
        finally
        {
          g.unlock();
        }
        return false;
      }
      catch (IOException paramHttpRequest)
      {
        a.log(Level.SEVERE, "unable to refresh token", paramHttpRequest);
      }
      n = 0;
      paramBoolean = false;
      break;
      label235:
      paramBoolean = false;
      break label90;
      label240:
      paramHttpRequest = null;
      continue;
      label245:
      paramBoolean = false;
    }
  }
  
  public void initialize(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.setInterceptor(this);
    paramHttpRequest.setUnsuccessfulResponseHandler(this);
  }
  
  /* Error */
  public void intercept(HttpRequest paramHttpRequest)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 61	ipw:g	Ljava/util/concurrent/locks/Lock;
    //   4: invokeinterface 122 1 0
    //   9: aload_0
    //   10: invokespecial 300	ipw:b	()Ljava/lang/Long;
    //   13: astore_2
    //   14: aload_0
    //   15: getfield 190	ipw:i	Ljava/lang/String;
    //   18: ifnull +18 -> 36
    //   21: aload_2
    //   22: ifnull +38 -> 60
    //   25: aload_2
    //   26: invokevirtual 133	java/lang/Long:longValue	()J
    //   29: ldc2_w 301
    //   32: lcmp
    //   33: ifgt +27 -> 60
    //   36: aload_0
    //   37: invokespecial 275	ipw:c	()Z
    //   40: pop
    //   41: aload_0
    //   42: getfield 190	ipw:i	Ljava/lang/String;
    //   45: astore_2
    //   46: aload_2
    //   47: ifnonnull +13 -> 60
    //   50: aload_0
    //   51: getfield 61	ipw:g	Ljava/util/concurrent/locks/Lock;
    //   54: invokeinterface 127 1 0
    //   59: return
    //   60: aload_0
    //   61: getfield 190	ipw:i	Ljava/lang/String;
    //   64: astore_3
    //   65: aload_1
    //   66: invokevirtual 261	com/google/api/client/http/HttpRequest:getHeaders	()Lcom/google/api/client/http/HttpHeaders;
    //   69: astore_2
    //   70: ldc -19
    //   72: invokestatic 305	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   75: astore_1
    //   76: aload_3
    //   77: invokestatic 305	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   80: astore_3
    //   81: aload_3
    //   82: invokevirtual 308	java/lang/String:length	()I
    //   85: ifeq +25 -> 110
    //   88: aload_1
    //   89: aload_3
    //   90: invokevirtual 312	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   93: astore_1
    //   94: aload_2
    //   95: aload_1
    //   96: invokevirtual 316	com/google/api/client/http/HttpHeaders:setAuthorization	(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;
    //   99: pop
    //   100: aload_0
    //   101: getfield 61	ipw:g	Ljava/util/concurrent/locks/Lock;
    //   104: invokeinterface 127 1 0
    //   109: return
    //   110: new 235	java/lang/String
    //   113: dup
    //   114: aload_1
    //   115: invokespecial 317	java/lang/String:<init>	(Ljava/lang/String;)V
    //   118: astore_1
    //   119: goto -25 -> 94
    //   122: astore_1
    //   123: aload_0
    //   124: getfield 61	ipw:g	Ljava/util/concurrent/locks/Lock;
    //   127: invokeinterface 127 1 0
    //   132: aload_1
    //   133: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	this	ipw
    //   0	134	1	paramHttpRequest	HttpRequest
    //   13	82	2	localObject	Object
    //   64	26	3	str	String
    // Exception table:
    //   from	to	target	type
    //   9	21	122	finally
    //   25	36	122	finally
    //   36	46	122	finally
    //   60	94	122	finally
    //   94	100	122	finally
    //   110	119	122	finally
  }
}

/* Location:
 * Qualified Name:     ipw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */