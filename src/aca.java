import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class aca
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  aca(abn paramabn, View paramView) {}
  
  public void onGlobalLayout()
  {
    if (Build.VERSION.SDK_INT >= 16) {
      a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
    for (;;)
    {
      b.n();
      return;
      a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }
  }
}

/* Location:
 * Qualified Name:     aca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */