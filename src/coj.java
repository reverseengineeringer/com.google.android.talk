import android.content.Context;
import android.os.ConditionVariable;
import java.util.Map;
import org.apache.http.client.HttpResponseException;
import org.chromium.net.HttpUrlRequest;

public final class coj
  implements hbr
{
  public byte[] a(Context paramContext, String paramString, Map<String, String> paramMap, byte[] paramArrayOfByte, int paramInt)
  {
    return a(paramContext, paramString, paramMap, paramArrayOfByte, paramInt, 3);
  }
  
  public byte[] a(Context paramContext, String paramString, Map<String, String> paramMap, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    cok localcok = new cok();
    if (ezi.a("Babel_CronetHttpSender", 3)) {
      ezi.a("Babel_CronetHttpSender", String.format("Request headers for [%s]: %s", new Object[] { paramString, paramMap }), new Object[0]);
    }
    paramContext = iff.a(paramContext, paramString, paramInt2, paramMap, localcok);
    if (paramArrayOfByte != null)
    {
      paramContext.a("application/x-protobuf", paramArrayOfByte);
      paramContext.a("POST");
    }
    for (;;)
    {
      paramContext.h();
      if (a.block(paramInt1)) {
        break;
      }
      paramContext = new HttpResponseException(0, "cronet http timeout");
      ezi.c("Babel_CronetHttpSender", "Cronet HTTP request timeout", paramContext);
      throw paramContext;
      paramContext.a("GET");
    }
    if (c != null)
    {
      ezi.c("Babel_CronetHttpSender", "Cronet HTTP request failed", c);
      throw c;
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     coj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */