import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cca
  extends bml<ccb>
{
  public cca(View paramView, ccb paramccb, epc paramepc)
  {
    super(paramView, paramccb, paramepc);
  }
  
  protected boolean a()
  {
    return (((ccb)c).c()) && (((ccb)c).b() != ((ccb)c).a());
  }
  
  protected epa b()
  {
    epb localepb = e();
    if (((ccb)c).b()) {}
    for (int i = StressMode.jZ;; i = StressMode.ka)
    {
      localepb.a(b.getResources().getString(i));
      return localepb.b();
    }
  }
}

/* Location:
 * Qualified Name:     cca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */