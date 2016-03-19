import android.os.Build.VERSION;
import android.view.MenuItem;
import android.view.View;

public final class jr
{
  static final jv a = new js();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
    {
      a = new ju();
      return;
    }
    if (i >= 11)
    {
      a = new jt();
      return;
    }
  }
  
  public static MenuItem a(MenuItem paramMenuItem, View paramView)
  {
    if ((paramMenuItem instanceof gj)) {
      return ((gj)paramMenuItem).setActionView(paramView);
    }
    return a.a(paramMenuItem, paramView);
  }
  
  public static MenuItem a(MenuItem paramMenuItem, iq paramiq)
  {
    Object localObject = paramMenuItem;
    if ((paramMenuItem instanceof gj)) {
      localObject = ((gj)paramMenuItem).a(paramiq);
    }
    return (MenuItem)localObject;
  }
  
  public static View a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof gj)) {
      return ((gj)paramMenuItem).getActionView();
    }
    return a.a(paramMenuItem);
  }
  
  public static void a(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof gj))
    {
      ((gj)paramMenuItem).setShowAsAction(paramInt);
      return;
    }
    a.a(paramMenuItem, paramInt);
  }
  
  public static MenuItem b(MenuItem paramMenuItem, int paramInt)
  {
    if ((paramMenuItem instanceof gj)) {
      return ((gj)paramMenuItem).setActionView(paramInt);
    }
    return a.b(paramMenuItem, paramInt);
  }
  
  public static boolean b(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof gj)) {
      return ((gj)paramMenuItem).expandActionView();
    }
    return a.b(paramMenuItem);
  }
  
  public static boolean c(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof gj)) {
      return ((gj)paramMenuItem).isActionViewExpanded();
    }
    return a.c(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     jr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */