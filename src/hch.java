import com.google.android.libraries.hangouts.video.internal.DecoderManager;
import com.google.android.libraries.hangouts.video.internal.EncoderManager;
import com.google.android.libraries.hangouts.video.internal.RendererManager;
import java.util.Iterator;
import java.util.List;

final class hch
  extends hcv
{
  hch(hcd paramhcd) {}
  
  public void a(hcs paramhcs)
  {
    a.l = true;
    a.r();
    Object localObject1;
    if (a.k.y())
    {
      paramhcs = a;
      localObject1 = a.b.a();
      if ((m != 0) && (localObject1 != null) && (k != null)) {
        break label63;
      }
    }
    for (;;)
    {
      return;
      label63:
      Object localObject2 = ((hcs)localObject1).a(a, k.c(), k.e(), b.b(), k.r());
      localObject1 = new hel(a);
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        kju localkju = (kju)((Iterator)localObject2).next();
        c.a(localkju);
        if (k.y()) {
          ((hel)localObject1).a(k, localkju);
        }
      }
    }
  }
  
  public void a(hil paramhil, atn paramatn)
  {
    if (((paramatn instanceof hin)) && (paramhil.k()))
    {
      a.m = 2;
      hlk.a("vclib", "Call joined; participant id = %s", new Object[] { paramhil.a() });
      a.p = new hkw(a.b.a().a()).a(paramhil.a());
      a.j.a(2690);
      a.c.a(a.p);
    }
  }
  
  public void b(hcs paramhcs)
  {
    int i;
    if (paramhcs == null)
    {
      i = 30;
      if (a.p == null)
      {
        if (i != 30) {
          break label193;
        }
        a.j.a(2907);
      }
    }
    for (;;)
    {
      hlk.a(4, "vclib", 29 + "Call.onCallEnded: " + i);
      a.a(paramhcs);
      paramhcs = a;
      if (!o)
      {
        paramhcs.a(null);
        paramhcs.a(null);
        paramhcs.a(null);
        i.a();
        f.a();
        h.a();
        g.b();
        d.a();
        e.a();
        j.b();
        hdf.a.a();
        o = true;
      }
      a.c.a(i);
      a.m = 4;
      hgd.a().a(null);
      return;
      i = paramhcs.p();
      break;
      label193:
      a.j.a(2691);
    }
  }
}

/* Location:
 * Qualified Name:     hch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */