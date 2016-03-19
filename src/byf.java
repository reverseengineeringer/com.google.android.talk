import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class byf
  extends bml<byh>
{
  eph e = new byg(this);
  
  public byf(View paramView, byh parambyh, epc paramepc)
  {
    super(paramView, parambyh, paramepc);
  }
  
  protected boolean a()
  {
    return ((byh)c).q() > 0;
  }
  
  protected epa b()
  {
    aal.a(dvd.e(((hpu)ilh.a(b, hpu.class)).a()), 1814);
    epb localepb = e();
    Resources localResources = b.getResources();
    if (((byh)c).q() == 1)
    {
      localepb.a(localResources.getString(StressMode.J, new Object[] { c).r().e }));
      localepb.c(localResources.getString(StressMode.iJ));
      localepb.a(e);
    }
    for (;;)
    {
      localepb.a();
      return localepb.b();
      localepb.a(localResources.getString(StressMode.I, new Object[] { Integer.valueOf(((byh)c).q()) }));
    }
  }
}

/* Location:
 * Qualified Name:     byf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */