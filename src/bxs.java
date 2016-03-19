import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class bxs
  extends bml<bxt>
{
  private int e;
  
  public bxs(View paramView, bxt parambxt, epc paramepc)
  {
    super(paramView, parambxt, paramepc);
  }
  
  protected boolean a()
  {
    return (((bxt)c).v()) && (!aal.a(djd.b));
  }
  
  protected epa b()
  {
    if (aal.f(((bxt)c).d())) {}
    for (e = StressMode.D;; e = StressMode.C)
    {
      aal.b(djd.b);
      return e().a(b.getResources().getString(e)).b();
    }
  }
}

/* Location:
 * Qualified Name:     bxs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */