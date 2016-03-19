import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;

final class hiw
  implements fif, fih
{
  private final fic b;
  private final fgr c;
  private final mdx d;
  
  hiw(hiv paramhiv)
  {
    hkt localhkt = b.l().a();
    fid localfid = new fid(a).a(fgr.c);
    if (localhkt == null) {}
    for (Object localObject = null;; localObject = localhkt.n())
    {
      b = localfid.a((String)localObject).a(this).b();
      b.b();
      c = paramhiv.a();
      localObject = a;
      if (localhkt == null) {
        break;
      }
      paramhiv = localhkt.d();
      d = paramhiv;
      return;
    }
    paramhiv = new mdx();
    b = Integer.valueOf(407);
    c = Integer.valueOf(2);
    if (aal.N((Context)localObject)) {}
    for (int i = 3;; i = 2)
    {
      a = Integer.valueOf(i);
      break;
    }
  }
  
  private kls c(int paramInt)
  {
    kls localkls = new kls();
    e = d;
    a = new kli();
    a.j = new klj();
    a.j.a = Integer.valueOf(paramInt);
    hkv localhkv = a.b.l();
    hkt localhkt = localhkv.a();
    hkw localhkw = localhkv.b();
    a.a = new klh();
    if (localhkw != null)
    {
      a.a.c = localhkw.a();
      a.a.d = localhkw.b();
    }
    for (;;)
    {
      if (localhkt != null) {
        a.a.a = localhkt.p();
      }
      a.a.k = localhkv.c();
      a.a.b = localhkv.d();
      a.a.e = localhkv.f();
      return localkls;
      if (localhkt != null) {
        a.a.c = localhkt.f();
      }
    }
  }
  
  void a()
  {
    c.a(b);
  }
  
  public void a(int paramInt)
  {
    hlk.a("vclib", "ImpressionReporter GoogleApiClient suspended: %d.", new Object[] { Integer.valueOf(paramInt) });
  }
  
  void a(long paramLong, int paramInt1, int paramInt2)
  {
    kls localkls = c(3015);
    a.j.i = new klo();
    a.j.i.a = Long.valueOf(paramLong);
    a.j.i.b = Integer.valueOf(paramInt1);
    a.j.i.c = Integer.valueOf(paramInt2);
    c.a(lyi.a(localkls)).b(b);
    hlk.a(3, "vclib", "Logging UMA event to clearcut: \n%s", new Object[] { localkls });
  }
  
  public void a(ConnectionResult paramConnectionResult)
  {
    hlk.c("vclib", "ImpressionReporter GoogleApiClient failed: %s", new Object[] { paramConnectionResult });
  }
  
  public void a_(Bundle paramBundle)
  {
    hlk.a(4, "vclib", "ImpressionReporter connected to GoogleApiClient.");
  }
  
  void b(int paramInt)
  {
    kls localkls = c(paramInt);
    c.a(lyi.a(localkls)).b(b);
    hlk.a(3, "vclib", "Logging to clearcut: \n%s", new Object[] { localkls });
  }
}

/* Location:
 * Qualified Name:     hiw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */