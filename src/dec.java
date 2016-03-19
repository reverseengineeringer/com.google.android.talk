import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import java.util.Random;

public final class dec
  extends fe<aco>
  implements acn, bhv
{
  private static final Random a = new Random();
  private final bfd b;
  private final int c;
  private eyd d;
  private bhs e;
  private final Context f;
  
  public dec(Context paramContext, String paramString, int paramInt, bfd parambfd)
  {
    super(paramContext);
    f = paramContext;
    b = parambfd;
    c = paramInt;
    a(paramString, c);
  }
  
  private void a(aco paramaco)
  {
    if ((!r()) && (p())) {
      super.b(paramaco);
    }
  }
  
  private void a(String paramString, int paramInt)
  {
    Context localContext = f;
    bfd localbfd = b;
    int i = -1;
    switch (paramInt)
    {
    }
    for (;;)
    {
      paramString = new eyd(paramString, localbfd.a()).a(i, i).a(false).d(false);
      if (paramInt == 1) {
        paramString.b(true);
      }
      d = paramString;
      e = new bhs(d, this, true, null);
      return;
      i = bfq.a(localContext);
      continue;
      i = localContext.getResources().getDimensionPixelSize(aal.dN);
      continue;
      i = aal.a(Integer.valueOf(abn.b), 0);
      int j = ((bdp)ilh.a(localContext, bdp.class)).a("babel_pull_image_resolution_var_range", 50);
      if (j > 0) {
        i = a.nextInt(j) + i;
      }
    }
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    if (parambhs == e)
    {
      e = null;
      parambhs = new aco();
      if (paramBoolean1)
      {
        c = 0;
        if (paramexs != null)
        {
          if (paramexs.f()) {
            break label113;
          }
          a = new fcd(paramexs);
          a(parambhs);
        }
      }
    }
    label113:
    while (parameys == null) {
      for (;;)
      {
        return;
        hbs.b("Expected non-null", parameys);
        parameys = parameys.d();
        hbs.b("Expected non-null", parameys);
        parameys.setDensity(160);
        a = new BitmapDrawable(f.getResources(), parameys);
        continue;
        c = 1;
      }
    }
    parameys.b();
  }
  
  public void a(String paramString)
  {
    a(paramString, c);
  }
  
  protected void i()
  {
    ((eit)ilh.a(n(), eit.class)).a(e);
  }
}

/* Location:
 * Qualified Name:     dec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */