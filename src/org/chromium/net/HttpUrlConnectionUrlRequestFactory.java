package org.chromium.net;

import android.content.Context;
import java.nio.channels.WritableByteChannel;
import java.util.Map;
import mow;

@Deprecated
public final class HttpUrlConnectionUrlRequestFactory
  extends HttpUrlRequestFactory
{
  private final Context a;
  private final String b;
  
  public HttpUrlConnectionUrlRequestFactory(Context paramContext, CronetEngine.Builder paramBuilder)
  {
    a = paramContext;
    paramBuilder = paramBuilder.b();
    paramContext = paramBuilder;
    if (paramBuilder == null) {
      paramContext = new CronetEngine.Builder(a).a();
    }
    b = paramContext;
  }
  
  public boolean a()
  {
    return true;
  }
  
  public String b()
  {
    return "HttpUrlConnection/" + Version.a();
  }
  
  public HttpUrlRequest b(String paramString, int paramInt, Map<String, String> paramMap, WritableByteChannel paramWritableByteChannel, HttpUrlRequestListener paramHttpUrlRequestListener)
  {
    return new mow(a, b, paramString, paramMap, paramWritableByteChannel, paramHttpUrlRequestListener);
  }
  
  public HttpUrlRequest b(String paramString, int paramInt, Map<String, String> paramMap, HttpUrlRequestListener paramHttpUrlRequestListener)
  {
    return new mow(a, b, paramString, paramMap, paramHttpUrlRequestListener);
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.HttpUrlConnectionUrlRequestFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */