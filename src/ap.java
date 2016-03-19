import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class ap
  implements ViewTreeObserver.OnPreDrawListener
{
  ap(an paraman, View paramView, ien paramien, int paramInt, Object paramObject) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    an.a(e, b, c, d);
    return true;
  }
}

/* Location:
 * Qualified Name:     ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */