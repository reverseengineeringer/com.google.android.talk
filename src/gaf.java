import android.content.Context;
import android.net.Network;
import android.net.SSLCertificateSocketFactory;
import android.net.SSLSessionCache;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import android.webkit.URLUtil;
import java.io.Closeable;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

public final class gaf
  implements Closeable
{
  public int a = 60000;
  public int b = 60000;
  public SSLSocketFactory c;
  private Context d;
  private HostnameVerifier e;
  private gai f;
  
  public gaf(Context paramContext, boolean paramBoolean)
  {
    d = paramContext;
    f = new gai(d);
    if (paramBoolean) {}
    for (Object localObject1 = a();; localObject1 = null)
    {
      c = ((SSLSocketFactory)localObject1);
      if (c == null)
      {
        localObject1 = localObject2;
        if (paramContext != null)
        {
          localObject1 = localObject2;
          if (Build.VERSION.SDK_INT > 18) {
            localObject1 = new SSLSessionCache(paramContext);
          }
        }
        c = SSLCertificateSocketFactory.getDefault(60000, (SSLSessionCache)localObject1);
      }
      e = new gag(this);
      return;
    }
  }
  
  private SSLSocketFactory a()
  {
    try
    {
      Object localObject = fhr.d(d);
      if (localObject == null) {
        return null;
      }
      localObject = (SSLSocketFactory)((Context)localObject).getClassLoader().loadClass("com.google.android.gms.common.net.SSLCertificateSocketFactory").getMethod("getDefaultWithSessionCache", new Class[] { Integer.TYPE, Context.class }).invoke(null, new Object[] { Integer.valueOf(60000), d });
      return (SSLSocketFactory)localObject;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public HttpURLConnection a(URL paramURL, Network paramNetwork)
  {
    aal.d(paramURL);
    Object localObject = f.a(paramURL.toString());
    paramNetwork = paramURL;
    if (localObject != null)
    {
      if (((Bundle)localObject).getString("block") != null)
      {
        new StringBuilder("Blocked by ").append(((Bundle)localObject).getString("name")).append(": ").append(paramURL);
        throw new arw((Bundle)localObject);
      }
      localObject = ((Bundle)localObject).getString("rewrite");
      paramNetwork = paramURL;
      if (localObject != null) {
        if (!URLUtil.isHttpUrl((String)localObject))
        {
          paramNetwork = paramURL;
          if (!URLUtil.isHttpsUrl((String)localObject)) {}
        }
        else
        {
          if (Log.isLoggable("GoogleURLConnFactory", 3)) {
            new StringBuilder("Rewrote ").append(paramURL.toString()).append(" to ").append((String)localObject);
          }
          paramNetwork = new URL((String)localObject);
        }
      }
    }
    paramURL = paramNetwork.openConnection();
    paramURL.setConnectTimeout(b);
    paramURL.setReadTimeout(a);
    if ((paramURL instanceof HttpsURLConnection))
    {
      if (c != null) {
        ((HttpsURLConnection)paramURL).setSSLSocketFactory(c);
      }
      if (e != null) {
        ((HttpsURLConnection)paramURL).setHostnameVerifier(e);
      }
    }
    return (HttpURLConnection)paramURL;
  }
  
  void a(String paramString, int paramInt)
  {
    f.a(paramString, paramInt);
  }
  
  @Deprecated
  public void close() {}
}

/* Location:
 * Qualified Name:     gaf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */