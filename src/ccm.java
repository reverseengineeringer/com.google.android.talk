import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class ccm
  extends bml<cco>
{
  public ccm(View paramView, cco paramcco, epc paramepc)
  {
    super(paramView, paramcco, paramepc);
  }
  
  protected boolean a()
  {
    return ((cco)c).F();
  }
  
  protected epa b()
  {
    epb localepb = e();
    Resources localResources = b.getResources();
    localepb.a(localResources.getString(StressMode.ay));
    localepb.c(localResources.getString(StressMode.V));
    localepb.a(new ccn(this));
    return localepb.b();
  }
}

/* Location:
 * Qualified Name:     ccm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */