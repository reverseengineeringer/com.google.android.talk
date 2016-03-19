import android.os.Handler;
import java.util.Set;

final class cib
  extends hku
{
  cib(chu paramchu)
  {
    super((byte)0);
  }
  
  public void a(hke paramhke, Set<hkd> paramSet)
  {
    a.f.k();
    if (paramhke == hke.b) {
      aal.a(a.c, chu.a);
    }
    for (;;)
    {
      a.j();
      return;
      paramhke = a.c;
      aal.y().removeCallbacks(paramhke);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    chu localchu = a;
    if (localchu.i())
    {
      localchu.h();
      return;
    }
    localchu.d();
    localchu.m();
  }
  
  public void b(int paramInt)
  {
    a.d();
    if (paramInt == 1)
    {
      hjk localhjk = a.b.k();
      if (localhjk != null)
      {
        ezi.c("Babel_calls", "Disabling camera because there are only PSTN participants", new Object[0]);
        localhjk.a(false);
      }
    }
  }
  
  public void c()
  {
    hbs.b(a.h, cic.a);
    a.d();
    a.j();
  }
  
  public void c(hkx paramhkx)
  {
    if ((paramhkx.g()) && (!paramhkx.e()) && (a.b.r() != null) && (a.b.r().K()))
    {
      aal.c(1536);
      a.b.r().x();
    }
  }
  
  public void h()
  {
    a.k();
    a.c();
  }
}

/* Location:
 * Qualified Name:     cib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */