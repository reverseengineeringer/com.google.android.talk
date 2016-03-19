import android.content.Context;
import org.chromium.net.CronetEngine.Builder;
import org.chromium.net.UrlRequestContextConfig;

public final class efj
{
  public static final String a = UrlRequestContextConfig.class.getName();
  public static final String b = ihv.class.getName();
  public static final String c = efg.class.getName();
  public static final String d = bwl.class.getName();
  public static final String e = CronetEngine.Builder.class.getName();
  private static efi f;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (f == null) {
      f = new efi();
    }
    paramilh.a(UrlRequestContextConfig.class, f.c(paramContext));
  }
  
  public static void a(ilh paramilh)
  {
    if (f == null) {
      f = new efi();
    }
    paramilh.a(bwl.class, f.a());
  }
  
  public static void b(Context paramContext, ilh paramilh)
  {
    if (f == null) {
      f = new efi();
    }
    paramilh.a(ihv.class, f.a(paramContext));
  }
  
  public static void c(Context paramContext, ilh paramilh)
  {
    if (f == null) {
      f = new efi();
    }
    paramilh.a(efg.class, f.b(paramContext));
  }
  
  public static void d(Context paramContext, ilh paramilh)
  {
    if (f == null) {
      f = new efi();
    }
    paramilh.a(CronetEngine.Builder.class, (CronetEngine.Builder)ilh.a(paramContext, UrlRequestContextConfig.class));
  }
}

/* Location:
 * Qualified Name:     efj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */