import android.content.Context;
import android.view.View;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class bls
  extends bml<blt>
{
  public bls(View paramView, blt paramblt, epc paramepc)
  {
    super(paramView, paramblt, paramepc);
  }
  
  protected boolean a()
  {
    if ((dvd.i()) && (aal.g(((blt)c).d()))) {}
    for (int i = 1; (((blt)c).b()) && (!((blt)c).c()) && (i != 0); i = 0) {
      return true;
    }
    return false;
  }
  
  protected epa b()
  {
    int i = ((blt)c).a().g();
    awo localawo = (awo)ilh.a(b, awo.class);
    return e().a(b.getString(StressMode.ji, new Object[] { localawo.c(i) })).b();
  }
}

/* Location:
 * Qualified Name:     bls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */