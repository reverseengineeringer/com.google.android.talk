import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.view.LayoutInflater;

public final class st
  extends ContextWrapper
{
  private int a;
  private Resources.Theme b;
  private LayoutInflater c;
  
  public st(Context paramContext, int paramInt)
  {
    super(paramContext);
    a = paramInt;
  }
  
  private void b()
  {
    if (b == null) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        b = getResources().newTheme();
        Resources.Theme localTheme = getBaseContext().getTheme();
        if (localTheme != null) {
          b.setTo(localTheme);
        }
      }
      b.applyStyle(a, true);
      return;
    }
  }
  
  public int a()
  {
    return a;
  }
  
  public Object getSystemService(String paramString)
  {
    if ("layout_inflater".equals(paramString))
    {
      if (c == null) {
        c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
      }
      return c;
    }
    return getBaseContext().getSystemService(paramString);
  }
  
  public Resources.Theme getTheme()
  {
    if (b != null) {
      return b;
    }
    if (a == 0) {
      a = aal.bx;
    }
    b();
    return b;
  }
  
  public void setTheme(int paramInt)
  {
    if (a != paramInt)
    {
      a = paramInt;
      b();
    }
  }
}

/* Location:
 * Qualified Name:     st
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */