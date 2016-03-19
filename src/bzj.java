import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class bzj
  extends bml<ccq>
{
  public bzj(View paramView, epc paramepc)
  {
    super(paramView, null, paramepc);
  }
  
  protected boolean a()
  {
    if (aal.a(aal.oJ, "babel_network_change_notification", false))
    {
      cwo localcwo = (cwo)ilh.a(b, cwo.class);
      return (localcwo != null) && (localcwo.a() == cwn.c);
    }
    return false;
  }
  
  protected epa b()
  {
    return e().a(b.getResources().getString(StressMode.W)).b();
  }
}

/* Location:
 * Qualified Name:     bzj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */