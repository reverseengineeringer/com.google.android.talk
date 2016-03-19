import android.os.Build.VERSION;
import android.widget.PopupWindow;

public final class pj
{
  public static final po a = new po();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new pl();
      return;
    }
    if (i >= 21)
    {
      a = new pk();
      return;
    }
    if (i >= 19)
    {
      a = new pn();
      return;
    }
    if (i >= 9)
    {
      a = new pm();
      return;
    }
  }
  
  public static void a(PopupWindow paramPopupWindow, int paramInt)
  {
    a.a(paramPopupWindow, paramInt);
  }
}

/* Location:
 * Qualified Name:     pj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */