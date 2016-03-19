import android.widget.PopupWindow;
import java.lang.reflect.Method;

class pm
  extends po
{
  public void a(PopupWindow paramPopupWindow, int paramInt)
  {
    if (!aen.s) {}
    try
    {
      Method localMethod = PopupWindow.class.getDeclaredMethod("setWindowLayoutType", new Class[] { Integer.TYPE });
      aen.r = localMethod;
      localMethod.setAccessible(true);
      aen.s = true;
      if (aen.r != null) {}
      try
      {
        aen.r.invoke(paramPopupWindow, new Object[] { Integer.valueOf(paramInt) });
        return;
      }
      catch (Exception paramPopupWindow) {}
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     pm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */