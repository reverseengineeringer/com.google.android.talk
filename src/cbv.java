import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cbv
  extends bml<cbw>
{
  public cbv(View paramView, cbw paramcbw, epc paramepc)
  {
    super(paramView, paramcbw, paramepc);
  }
  
  protected boolean a()
  {
    boolean bool = false;
    if (aal.a(aal.oJ, "babel_gcm_change_notification", false)) {
      bool = ((cbw)c).B();
    }
    return bool;
  }
  
  protected epa b()
  {
    return e().a(b.getResources().getString(StressMode.cg)).b();
  }
}

/* Location:
 * Qualified Name:     cbv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */