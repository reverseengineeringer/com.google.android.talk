import android.content.Context;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public final class hhd
  extends hgz
{
  private final hbr j;
  private final Context k;
  
  hhd(long paramLong, String paramString1, byte[] paramArrayOfByte, int paramInt, hbr paramhbr, String paramString2, hhb paramhhb, Context paramContext)
  {
    super(paramLong, paramString1, paramArrayOfByte, paramInt, null, paramString2, paramhhb);
    hbs.b("Expected non-null", paramhbr);
    k = paramContext;
    j = paramhbr;
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    super.a(paramArrayOfByte);
  }
  
  public byte[] c()
  {
    for (;;)
    {
      try
      {
        Object localObject2 = j;
        Context localContext = k;
        String str = String.valueOf(f);
        Object localObject1 = String.valueOf(b);
        if (((String)localObject1).length() != 0)
        {
          str = str.concat((String)localObject1);
          HashMap localHashMap = new HashMap();
          localHashMap.put("Accept-Encoding", "gzip");
          localObject1 = String.valueOf(h);
          if (((String)localObject1).length() != 0)
          {
            localObject1 = "Bearer ".concat((String)localObject1);
            localHashMap.put("Authorization", localObject1);
            localHashMap.put("X-Auth-Time", i);
            localObject1 = new StringBuilder("HangoutsApiaryClient");
            ((StringBuilder)localObject1).append("; G+ SDK/");
            ((StringBuilder)localObject1).append("1.0.0");
            ((StringBuilder)localObject1).append(";");
            localHashMap.put("User-Agent", ((StringBuilder)localObject1).toString());
            return ((hbr)localObject2).a(localContext, str, localHashMap, c, d);
          }
        }
        else
        {
          str = new String(str);
          continue;
        }
        localObject1 = new String("Bearer ");
      }
      catch (IOException localIOException)
      {
        localObject1 = f;
        localObject2 = b;
        hlk.a(5, "vclib", String.valueOf(localObject1).length() + 29 + String.valueOf(localObject2).length() + "Error sending cronet request " + (String)localObject1 + (String)localObject2, localIOException);
        return null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     hhd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */