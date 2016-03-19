import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.PopupWindow.OnDismissListener;

final class xo
  implements PopupWindow.OnDismissListener
{
  xo(xl paramxl, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener) {}
  
  public void onDismiss()
  {
    ViewTreeObserver localViewTreeObserver = b.c.getViewTreeObserver();
    if (localViewTreeObserver != null) {
      localViewTreeObserver.removeGlobalOnLayoutListener(a);
    }
  }
}

/* Location:
 * Qualified Name:     xo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */