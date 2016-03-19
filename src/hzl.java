import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

final class hzl
{
  private int a;
  
  private static hzk a(Context paramContext, int paramInt1, int paramInt2)
  {
    hzk localhzk = new hzk().a(b(paramContext, aal.ui, paramInt1)).c(b(paramContext, aal.ul, paramInt2)).b(b(paramContext, aal.uh, paramInt2));
    paramInt1 = paramContext.getApplicationContext().getResources().getInteger(paramInt2);
    if (localhzk.b() > paramInt1) {
      localhzk.b(Math.round(paramInt1 / localhzk.b() * localhzk.a()));
    }
    paramContext = paramContext.getApplicationContext().getResources();
    return localhzk.b(paramContext.getInteger(aal.uk)).a(paramContext.getInteger(aal.uj));
  }
  
  private static int b(Context paramContext, int paramInt1, int paramInt2)
  {
    Resources localResources = paramContext.getApplicationContext().getResources();
    paramContext = aal.M(paramContext);
    int i = widthPixels;
    i = heightPixels * i << 2;
    paramInt2 = localResources.getInteger(paramInt2);
    if (i == 0) {
      return paramInt2;
    }
    long l = localResources.getInteger(paramInt1);
    return Math.min((int)(i * l / 100L), paramInt2);
  }
  
  public hzj a(Context paramContext)
  {
    a = aal.O(paramContext);
    if (a < 48)
    {
      paramContext = paramContext.getApplicationContext().getResources();
      paramContext = new hzk().a(paramContext.getInteger(aal.uo)).c(paramContext.getInteger(aal.um)).b(paramContext.getInteger(aal.un)).b(paramContext.getInteger(aal.up)).a(paramContext.getInteger(aal.up));
    }
    for (;;)
    {
      return paramContext.c().d();
      if (a < 64) {
        paramContext = a(paramContext, aal.ue, aal.ud);
      } else {
        paramContext = a(paramContext, aal.ug, aal.uf);
      }
    }
  }
}

/* Location:
 * Qualified Name:     hzl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */