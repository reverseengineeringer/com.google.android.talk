import android.content.Context;
import java.io.IOException;
import java.util.Locale;
import java.util.Map;
import org.chromium.net.UserAgent;

public class iie
  implements ihs
{
  static final imw a = new imw("debug.allowBackendOverride");
  private static String g;
  private final Context b;
  private final String c;
  private final String d;
  private final String e;
  private final String f;
  
  public iie(Context paramContext, String paramString1, String paramString2)
  {
    this(paramContext, paramString1, paramString2, (byte)0);
  }
  
  private iie(Context paramContext, String paramString1, String paramString2, byte paramByte)
  {
    this(paramContext, paramString1, null, paramString2, null);
  }
  
  public iie(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    b = paramContext;
    c = paramString1;
    d = paramString3;
    f = paramString2;
    e = paramString4;
  }
  
  protected String a(Context paramContext)
  {
    if (g == null) {
      g = String.valueOf(UserAgent.a(paramContext)).concat(" (gzip)");
    }
    return g;
  }
  
  public Map<String, String> a(String paramString)
  {
    hq localhq = new hq();
    localhq.put("Accept-Language", Locale.getDefault().toString());
    localhq.put("User-Agent", a(b));
    if (c != null) {}
    for (;;)
    {
      try
      {
        paramString = ((iia)ilh.a(b, iia.class)).a(d).a(b, c);
        String str = paramString.a();
        long l = paramString.b();
        paramString = String.valueOf(str);
        if (paramString.length() != 0)
        {
          paramString = "Bearer ".concat(paramString);
          localhq.put("Authorization", paramString);
          localhq.put("X-Auth-Time", Long.toString(l));
          if (f != null) {
            localhq.put("X-Goog-PageId", f);
          }
          if ("PUT".equals(e)) {
            localhq.put("X-HTTP-Method-Override", "PUT");
          }
          return localhq;
        }
      }
      catch (Exception paramString)
      {
        new iks(c);
        ilh.a(b, htf.class);
        throw new IOException("Cannot obtain authentication token", paramString);
      }
      paramString = new String("Bearer ");
    }
  }
  
  public void a()
  {
    if (c != null) {}
    try
    {
      ((iia)ilh.a(b, iia.class)).a(d).b(b, c);
      return;
    }
    catch (Exception localException)
    {
      throw new IOException("Cannot invalidate authentication token", localException);
    }
  }
}

/* Location:
 * Qualified Name:     iie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */