package org.chromium.net;

import android.content.Context;
import android.os.Build.VERSION;
import java.nio.channels.WritableByteChannel;
import java.util.Map;
import org.chromium.base.annotations.UsedByReflection;

@Deprecated
@UsedByReflection
public class ChromiumUrlRequestFactory
  extends HttpUrlRequestFactory
{
  private ChromiumUrlRequestContext a;
  
  @UsedByReflection
  public ChromiumUrlRequestFactory(Context paramContext, CronetEngine.Builder paramBuilder)
  {
    if (a())
    {
      String str2 = paramBuilder.b();
      String str1 = str2;
      if (str2 == null) {
        str1 = new CronetEngine.Builder(paramContext).a();
      }
      a = new ChromiumUrlRequestContext(paramContext, str1, paramBuilder);
    }
  }
  
  public ChromiumUrlRequest a(String paramString, int paramInt, Map<String, String> paramMap, WritableByteChannel paramWritableByteChannel, HttpUrlRequestListener paramHttpUrlRequestListener)
  {
    return new ChromiumUrlRequest(a, paramString, paramInt, paramMap, paramWritableByteChannel, paramHttpUrlRequestListener);
  }
  
  public ChromiumUrlRequest a(String paramString, int paramInt, Map<String, String> paramMap, HttpUrlRequestListener paramHttpUrlRequestListener)
  {
    return new ChromiumUrlRequest(a, paramString, paramInt, paramMap, paramHttpUrlRequestListener);
  }
  
  public boolean a()
  {
    return Build.VERSION.SDK_INT >= 14;
  }
  
  public String b()
  {
    return "Chromium/" + Version.a();
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.ChromiumUrlRequestFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */