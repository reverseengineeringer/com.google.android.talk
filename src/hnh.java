import android.app.Application;
import android.content.Context;

public final class hnh
{
  public static final String a = hmn.class.getName();
  public static final String b = hnj.class.getName();
  private static hng c;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (c == null) {
      c = new hng();
    }
    Object localObject = (hmt)ilh.b(paramContext, hmt.class);
    hmy localhmy = (hmy)ilh.b(paramContext, hmy.class);
    hmq localhmq = (hmq)ilh.b(paramContext, hmq.class);
    hmv localhmv = (hmv)ilh.b(paramContext, hmv.class);
    hmx localhmx = (hmx)ilh.b(paramContext, hmx.class);
    hmp localhmp = hmo.newBuilder();
    if (localObject != null) {
      localhmp.a((hmt)localObject);
    }
    if (localhmy != null) {
      localhmp.a(localhmy);
    }
    if (localhmq != null) {
      localhmp.a(localhmq);
    }
    if (localhmv != null) {
      localhmp.a(localhmv);
    }
    if (localhmx != null) {
      localhmp.a(localhmx);
    }
    localObject = hnq.newBuilder().b(ilh.c(paramContext, hnn.class)).a(ilh.c(paramContext, hnj.class)).a();
    if (hng.a) {}
    for (paramContext = hmn.a((hnn)localObject, (Application)paramContext.getApplicationContext(), localhmp.a());; paramContext = hmn.a(((hnq)localObject).a(), (Application)paramContext.getApplicationContext(), localhmp.a()))
    {
      paramilh.a(hmn.class, paramContext);
      return;
    }
  }
  
  public static void b(Context paramContext, ilh paramilh)
  {
    if (c == null) {
      c = new hng();
    }
    String str = ilh.a(paramContext, "com.google.android.libraries.performance.primes.modules.clearcutlogsource");
    aen.a(str);
    paramilh.a(hnj.class, new hnj[] { new hnt((gyi)ilh.a(paramContext, gyi.class), str) });
  }
}

/* Location:
 * Qualified Name:     hnh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */