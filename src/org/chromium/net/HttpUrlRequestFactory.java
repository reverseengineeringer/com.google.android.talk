package org.chromium.net;

import android.content.Context;
import java.lang.reflect.Constructor;
import java.nio.channels.WritableByteChannel;
import java.util.Map;

@Deprecated
public abstract class HttpUrlRequestFactory
{
  public static HttpUrlRequestFactory a(Context paramContext, CronetEngine.Builder paramBuilder)
  {
    try
    {
      paramContext = (HttpUrlRequestFactory)HttpUrlRequestFactory.class.getClassLoader().loadClass("org.chromium.net.ChromiumUrlRequestFactory").asSubclass(HttpUrlRequestFactory.class).getConstructor(new Class[] { Context.class, CronetEngine.Builder.class }).newInstance(new Object[] { paramContext, paramBuilder });
      boolean bool = paramContext.a();
      if (bool) {
        return paramContext;
      }
    }
    catch (ClassNotFoundException paramContext)
    {
      return null;
    }
    catch (Exception paramContext)
    {
      throw new IllegalStateException("Cannot instantiate: org.chromium.net.ChromiumUrlRequestFactory", paramContext);
    }
    return null;
  }
  
  public abstract boolean a();
  
  public abstract String b();
  
  public abstract HttpUrlRequest b(String paramString, int paramInt, Map<String, String> paramMap, WritableByteChannel paramWritableByteChannel, HttpUrlRequestListener paramHttpUrlRequestListener);
  
  public abstract HttpUrlRequest b(String paramString, int paramInt, Map<String, String> paramMap, HttpUrlRequestListener paramHttpUrlRequestListener);
}

/* Location:
 * Qualified Name:     org.chromium.net.HttpUrlRequestFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */