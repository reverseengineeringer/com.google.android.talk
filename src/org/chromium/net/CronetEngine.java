package org.chromium.net;

import java.lang.reflect.Constructor;
import java.util.Collection;
import java.util.concurrent.Executor;

public abstract class CronetEngine
{
  static CronetEngine a(CronetEngine.Builder paramBuilder)
  {
    try
    {
      paramBuilder = (CronetEngine)CronetEngine.class.getClassLoader().loadClass("org.chromium.net.CronetUrlRequestContext").asSubclass(CronetEngine.class).getConstructor(new Class[] { CronetEngine.Builder.class }).newInstance(new Object[] { paramBuilder });
      boolean bool = paramBuilder.a();
      if (bool) {
        return paramBuilder;
      }
    }
    catch (ClassNotFoundException paramBuilder)
    {
      return null;
    }
    catch (Exception paramBuilder)
    {
      throw new IllegalStateException("Cannot instantiate: org.chromium.net.CronetUrlRequestContext", paramBuilder);
    }
    return null;
  }
  
  public abstract UrlRequest a(String paramString, UrlRequest.Callback paramCallback, Executor paramExecutor, int paramInt, Collection<Object> paramCollection);
  
  public abstract boolean a();
  
  public abstract String b();
}

/* Location:
 * Qualified Name:     org.chromium.net.CronetEngine
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */