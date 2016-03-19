import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cck
  extends bml<ccl>
{
  public cck(View paramView, ccl paramccl, epc paramepc)
  {
    super(paramView, paramccl, paramepc);
  }
  
  protected boolean a()
  {
    return (((ccl)c).c()) && (((ccl)c).a()) && (((ccl)c).b());
  }
  
  protected epa b()
  {
    if (((ccl)c).d()) {}
    for (int i = StressMode.eV;; i = StressMode.eW)
    {
      String str = b.getResources().getString(i, new Object[] { ((ccl)c).e() });
      return e().a(str).a().b();
    }
  }
}

/* Location:
 * Qualified Name:     cck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */