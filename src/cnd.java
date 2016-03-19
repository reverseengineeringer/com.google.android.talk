import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;

final class cnd
  extends hku
  implements ilu, iox, ioy, ioz
{
  final Context a;
  cmu b;
  private boolean c;
  private final cnf d;
  private final cne e;
  
  cnd(Context paramContext, iog paramiog)
  {
    super((byte)0);
    a = paramContext;
    d = new cnf(this);
    e = new cne(this);
    paramiog.a(this);
  }
  
  private void j()
  {
    hks localhks = cfc.a().f();
    if ((localhks != null) && (!c))
    {
      ((hbh)localhks.q().a(hbh.class)).a(d);
      ((hbj)localhks.q().a(hbj.class)).a(e);
      c = true;
    }
  }
  
  private void k()
  {
    hks localhks = cfc.a().f();
    if (localhks != null)
    {
      ((hbh)localhks.q().a(hbh.class)).b(d);
      ((hbj)localhks.q().a(hbj.class)).b(e);
      c = false;
    }
  }
  
  public void a(int paramInt)
  {
    cmu localcmu = b;
    Context localContext = a;
    localcmu.a(new cmt().a(localContext.getResources().getString(StressMode.cE)).a(0).b());
    k();
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    b = ((cmu)paramilh.a(cmu.class));
  }
  
  public void a(hkw paramhkw)
  {
    j();
  }
  
  public void s_()
  {
    cfc.a().a(this);
    j();
  }
  
  public void t_()
  {
    cfc.a().b(this);
    k();
  }
}

/* Location:
 * Qualified Name:     cnd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */