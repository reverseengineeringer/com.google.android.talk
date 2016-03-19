import android.graphics.Rect;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.inputmethod.InputMethodManager;

final class bpe
  implements ViewTreeObserver.OnGlobalLayoutListener, ios, iov, ioz
{
  private final Rect b = new Rect();
  private final View c;
  private Boolean d = null;
  
  bpe(bng parambng, View paramView)
  {
    c = paramView;
    lifecycle.a(this);
  }
  
  public void X_()
  {
    c.getViewTreeObserver().addOnGlobalLayoutListener(this);
  }
  
  public void a()
  {
    aen.a(c, this);
  }
  
  public void onGlobalLayout()
  {
    c.getWindowVisibleDisplayFrame(b);
    int i = c.getRootView().getHeight() - b.height() - exa.a(a.context);
    if (Build.VERSION.SDK_INT >= 21) {
      i -= exa.b(a.context);
    }
    for (;;)
    {
      if (i > 250) {}
      for (boolean bool = true;; bool = false)
      {
        if (bool) {
          a.aO.a(i);
        }
        if ((a.i.b().a() == 1) && (!bool) && (d == null))
        {
          View localView = a.getView();
          aal.b(localView.getContext()).toggleSoftInputFromWindow(localView.getWindowToken(), 2, 0);
        }
        if (((d == null) || (aal.a(d, false) != bool)) && (bool)) {
          a.aO.b();
        }
        d = Boolean.valueOf(bool);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     bpe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */