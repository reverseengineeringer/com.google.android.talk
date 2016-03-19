import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class ccp
  extends bml<ccq>
{
  public ccp(View paramView, ccq paramccq, epc paramepc)
  {
    super(paramView, paramccq, paramepc);
  }
  
  protected boolean a()
  {
    if (aal.a(aal.oJ, "babel_network_change_notification", false)) {
      return (((ccq)c).C()) && (!((ccq)c).D());
    }
    return false;
  }
  
  protected epa b()
  {
    return e().a(b.getResources().getString(StressMode.gx)).a().b();
  }
}

/* Location:
 * Qualified Name:     ccp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */