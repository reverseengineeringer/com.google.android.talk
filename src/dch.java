import android.view.View;
import com.google.android.apps.hangouts.peoplelistv2.impl.ScrollViewCustom;

public final class dch
  implements Runnable
{
  public dch(ScrollViewCustom paramScrollViewCustom) {}
  
  public void run()
  {
    int i = a.getChildAt(0).getMeasuredHeight();
    int j = a.a;
    a.smoothScrollTo(0, Math.max(0, i - j));
    a.getChildAt(a.getChildCount() - 1).requestFocus();
  }
}

/* Location:
 * Qualified Name:     dch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */