import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.List;

final class cwy
  extends cxt
{
  cwy(Context paramContext, int paramInt, cwx paramcwx)
  {
    super(paramContext, paramInt, paramcwx);
    paramcwx = (cwz)b.get(0);
    cxo localcxo = (cxo)h.get(0);
    if (i == 1)
    {
      b(a);
      c(a);
      g = aal.a(paramInt, a, a, e, g);
      e = r;
      if (c)
      {
        f = paramContext.getResources().getQuantityString(aal.ht, d, new Object[] { Integer.valueOf(d) });
        return;
      }
      f = paramContext.getString(StressMode.ii);
      return;
    }
    g = aal.d(paramContext, paramInt);
    g.putExtra("is_chat_notification", true);
    e = paramContext.getString(StressMode.ih, new Object[] { Integer.valueOf(i) });
    if (h.size() == 2)
    {
      paramcwx = (cxo)h.get(1);
      f = paramContext.getString(StressMode.ij, new Object[] { r, r });
      return;
    }
    paramContext = new StringBuilder(q);
    paramInt = 1;
    while (paramInt < h.size())
    {
      paramContext.append(", ");
      paramContext.append(h.get(paramInt)).q);
      paramInt += 1;
    }
    f = paramContext.toString();
  }
  
  protected void a(boolean paramBoolean)
  {
    u.a(e).b(f);
    cwz localcwz = (cwz)l.b.get(0);
    if (i == 1)
    {
      t = new cx(u).b(f);
      u.c(e);
    }
    for (;;)
    {
      u.a(g / 1000L);
      super.a(paramBoolean);
      return;
      u.c(m());
      db localdb = new db(u);
      int i = 0;
      if (i < h.size())
      {
        cxo localcxo = (cxo)h.get(i);
        int j;
        if (c) {
          j = localcxo.a(q);
        }
        for (String str = p.getResources().getQuantityString(aal.ht, j, new Object[] { Integer.valueOf(j) });; str = p.getString(StressMode.gH))
        {
          localdb.b(a(r, str, null, 0));
          i += 1;
          break;
        }
      }
      t = localdb;
    }
  }
  
  protected void i()
  {
    super.i();
    cwz localcwz = (cwz)l.b.get(0);
    bfd localbfd = dvd.e(q);
    if (h.size() == 1) {}
    for (int i = 2234;; i = 2235)
    {
      aal.a(localbfd, i);
      return;
    }
  }
  
  protected String j()
  {
    return a(p, q, r.a());
  }
  
  protected void k()
  {
    super.k();
    cwz localcwz = (cwz)l.b.get(0);
    bfd localbfd = dvd.e(q);
    if (h.size() == 1) {}
    for (int i = 2236;; i = 2237)
    {
      aal.a(localbfd, i);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     cwy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */