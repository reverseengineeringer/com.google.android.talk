import android.view.View;
import android.view.View.AccessibilityDelegate;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

class kw
  extends ku
{
  static Field a;
  static boolean b = false;
  
  public void a(View paramView, ii paramii)
  {
    if (paramii == null) {}
    for (paramii = null;; paramii = paramii.a())
    {
      paramView.setAccessibilityDelegate((View.AccessibilityDelegate)paramii);
      return;
    }
  }
  
  public boolean a(View paramView, int paramInt)
  {
    return paramView.canScrollHorizontally(paramInt);
  }
  
  public boolean b(View paramView, int paramInt)
  {
    return paramView.canScrollVertically(paramInt);
  }
  
  public boolean j(View paramView)
  {
    if (b) {}
    for (;;)
    {
      return false;
      if (a == null) {}
      try
      {
        Field localField = View.class.getDeclaredField("mAccessibilityDelegate");
        a = localField;
        localField.setAccessible(true);
      }
      catch (Throwable paramView)
      {
        try
        {
          paramView = a.get(paramView);
          if (paramView == null) {
            continue;
          }
          return true;
        }
        catch (Throwable paramView)
        {
          b = true;
        }
        paramView = paramView;
        b = true;
        return false;
      }
    }
    return false;
  }
  
  public md k(View paramView)
  {
    if (c == null) {
      c = new WeakHashMap();
    }
    md localmd2 = (md)c.get(paramView);
    md localmd1 = localmd2;
    if (localmd2 == null)
    {
      localmd1 = new md(paramView);
      c.put(paramView, localmd1);
    }
    return localmd1;
  }
}

/* Location:
 * Qualified Name:     kw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */