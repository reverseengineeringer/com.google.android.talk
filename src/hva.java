import android.content.Context;
import android.text.TextUtils;

public final class hva
  implements huy
{
  Context a;
  hye b;
  private int c = -1;
  private hvb d = null;
  private hvd e = new hvd(this);
  private hve f = new hve(this);
  private igp g = new hvc();
  
  public hva(Context paramContext)
  {
    a = paramContext;
    paramContext = ilh.b(paramContext);
    b = ((hye)paramContext.a(hye.class));
    paramContext = (huz)paramContext.b(huz.class);
    if (paramContext != null) {
      c = paramContext.a();
    }
  }
  
  private icw a(hvb paramhvb, igr paramigr)
  {
    icw localicw = (icw)b.a(paramhvb);
    if (localicw == null)
    {
      localicw = new icw(b, paramhvb);
      switch (paramhvb.b())
      {
      default: 
        c = null;
        paramhvb = localicw;
      }
    }
    for (;;)
    {
      b.a(paramhvb, paramigr);
      return paramhvb;
      c = e;
      paramhvb = localicw;
      continue;
      c = f;
      paramhvb = localicw;
      continue;
      paramhvb.a(d);
      d = paramhvb;
      paramhvb = localicw;
    }
  }
  
  public igp a(Context paramContext, String paramString, int paramInt1, int paramInt2, igr paramigr)
  {
    if (TextUtils.isEmpty(paramString))
    {
      paramigr.a(g);
      return g;
    }
    paramString = icu.a(paramContext, paramString, ida.a);
    int i = c;
    Context localContext;
    if (d != null)
    {
      paramContext = d;
      d = ((hvb)d.h());
      paramContext.a(null);
      localContext = a;
      switch (paramInt1)
      {
      default: 
        paramInt1 = 0;
      }
    }
    for (;;)
    {
      paramContext.a(0, paramString, paramInt1, i, paramInt2);
      return a(paramContext, paramigr);
      paramContext = new hvb(this);
      break;
      paramInt1 = aal.z(localContext);
      continue;
      paramInt1 = aal.B(localContext);
      continue;
      paramInt1 = aal.D(localContext);
      continue;
      paramInt1 = aal.F(localContext);
    }
  }
}

/* Location:
 * Qualified Name:     hva
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */