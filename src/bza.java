import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.google.android.apps.hangouts.fragments.CallContactPickerFragment;

public final class bza
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  int a = 0;
  int b = 0;
  
  public bza(CallContactPickerFragment paramCallContactPickerFragment, View paramView) {}
  
  public void onGlobalLayout()
  {
    boolean bool = true;
    if (!d.isResumed()) {}
    int i;
    do
    {
      return;
      if (!d.f.h())
      {
        d.g.a(true);
        return;
      }
      if (d.e == 0)
      {
        i = c.getHeight();
        int j = c.getWidth();
        if (j != b)
        {
          a = 0;
          b = j;
        }
        a = Math.max(i, a);
        if (i >= a) {}
      }
      for (i = 1;; i = 0)
      {
        if (d.g != null) {
          break label167;
        }
        if (i == 0) {
          break;
        }
        d.c.setVisibility(8);
        return;
      }
    } while (d.d.getVisibility() != 8);
    d.c.setVisibility(0);
    return;
    label167:
    bwp localbwp = d.g;
    if (i == 0) {}
    for (;;)
    {
      localbwp.a(bool);
      return;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     bza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */