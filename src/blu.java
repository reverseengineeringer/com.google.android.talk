import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class blu
  extends bml<blv>
{
  private bfd e;
  
  public blu(View paramView, blv paramblv, epc paramepc, int paramInt)
  {
    super(paramView, paramblv, paramepc);
    e = dvd.e(paramInt);
  }
  
  public void a(boolean paramBoolean)
  {
    if ((!((blv)c).b()) && (paramBoolean)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      super.a(paramBoolean);
      return;
    }
  }
  
  protected boolean a()
  {
    boolean bool = aal.f(((blv)c).a());
    if ((((eot)ilh.a(b, eot.class)).b(e.g())) && (e.t())) {}
    for (int i = 1; (bool) && (i != 0) && (!((blv)c).c()); i = 0) {
      return true;
    }
    return false;
  }
  
  protected epa b()
  {
    int i = ((blv)c).a();
    String str = null;
    if (aal.h(i))
    {
      if (e.R()) {
        return e().a(b.getResources().getString(StressMode.iF)).b();
      }
      str = e.u();
    }
    for (;;)
    {
      return e().a(b.getString(StressMode.ji, new Object[] { ezm.p(str) })).b();
      if (aal.e(i)) {
        str = bfd.F();
      }
    }
  }
}

/* Location:
 * Qualified Name:     blu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */