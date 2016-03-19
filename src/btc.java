import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class btc
  implements ViewTreeObserver.OnPreDrawListener
{
  btc(btb parambtb, View paramView) {}
  
  public boolean onPreDraw()
  {
    b.f = new int[] { a.getWidth(), a.getHeight() };
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    return true;
  }
}

/* Location:
 * Qualified Name:     btc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */