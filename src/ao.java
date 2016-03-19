import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.util.ArrayList;

final class ao
  implements ViewTreeObserver.OnPreDrawListener
{
  ao(an paraman, View paramView, Object paramObject, ArrayList paramArrayList, ien paramien, boolean paramBoolean, av paramav1, av paramav2) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    if (b != null)
    {
      aal.a(b, c);
      c.clear();
      hq localhq = an.a(h, d, e, f);
      aal.a(b, d.f, localhq, c);
      an.a(h, localhq, d);
      an.a(f, g, e, localhq);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */