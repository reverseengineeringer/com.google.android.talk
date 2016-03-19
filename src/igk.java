import android.content.Context;
import android.net.Uri;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class igk
{
  private static igk a;
  private final Context b;
  private final Map<String, Integer> c = new ConcurrentHashMap();
  private hac d;
  
  private igk(Context paramContext)
  {
    b = paramContext.getApplicationContext();
  }
  
  public static igk a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = new igk(paramContext);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  public void a(Uri paramUri, String paramString, ign paramign, igm paramigm)
  {
    Object localObject = c;
    String str = String.valueOf(paramUri);
    localObject = (Integer)((Map)localObject).get(String.valueOf(str).length() + 0 + String.valueOf(paramString).length() + str + paramString);
    if (localObject != null)
    {
      paramign.b(((Integer)localObject).intValue());
      return;
    }
    if (ipk.a(paramUri))
    {
      paramigm = paramigm.a(paramUri);
      b.grantUriPermission("com.google.android.gms", paramigm, 1);
    }
    if (d == null) {
      d = ((hac)ilh.a(b, hac.class));
    }
    new igl(this, paramUri, paramString, paramign);
  }
}

/* Location:
 * Qualified Name:     igk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */