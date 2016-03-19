import android.content.Context;
import java.nio.channels.WritableByteChannel;
import java.util.Map;
import org.chromium.net.CronetEngine.Builder;
import org.chromium.net.HttpUrlConnectionUrlRequestFactory;
import org.chromium.net.HttpUrlRequest;
import org.chromium.net.HttpUrlRequestFactory;
import org.chromium.net.HttpUrlRequestListener;
import org.chromium.net.UrlRequestContextConfig;

public final class iff
{
  private static volatile HttpUrlRequestFactory a;
  
  public static HttpUrlRequest a(Context paramContext, String paramString, int paramInt, Map<String, String> paramMap, WritableByteChannel paramWritableByteChannel, HttpUrlRequestListener paramHttpUrlRequestListener)
  {
    return a(paramContext).b(paramString, paramInt, paramMap, paramWritableByteChannel, paramHttpUrlRequestListener);
  }
  
  public static HttpUrlRequest a(Context paramContext, String paramString, int paramInt, Map<String, String> paramMap, HttpUrlRequestListener paramHttpUrlRequestListener)
  {
    return a(paramContext).b(paramString, paramInt, paramMap, paramHttpUrlRequestListener);
  }
  
  private static HttpUrlRequestFactory a(Context paramContext)
  {
    for (;;)
    {
      try
      {
        if (a == null) {}
        Object localObject1;
        try
        {
          if (a == null)
          {
            Object localObject2 = (HttpUrlRequestFactory)ilh.b(paramContext, HttpUrlRequestFactory.class);
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              localObject2 = (CronetEngine.Builder)ilh.a(paramContext, UrlRequestContextConfig.class);
              localObject1 = null;
              if (!((CronetEngine.Builder)localObject2).e()) {
                localObject1 = HttpUrlRequestFactory.a(paramContext, (CronetEngine.Builder)localObject2);
              }
              if (localObject1 == null)
              {
                paramContext = new HttpUrlConnectionUrlRequestFactory(paramContext, (CronetEngine.Builder)localObject2);
                new StringBuilder("Using network stack: ").append(paramContext.b());
                localObject1 = paramContext;
              }
            }
            else
            {
              a = (HttpUrlRequestFactory)localObject1;
            }
          }
          else
          {
            paramContext = a;
            return paramContext;
          }
        }
        finally {}
        paramContext = (Context)localObject1;
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     iff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */