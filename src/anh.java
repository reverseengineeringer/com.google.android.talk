import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;

public final class anh
{
  private final Context a;
  private ActivityManager b;
  private ani c;
  private float d = 2.0F;
  private float e = 4.0F;
  private float f = 0.4F;
  private float g = 0.33F;
  private int h = 4194304;
  
  public anh(Context paramContext)
  {
    a = paramContext;
    b = ((ActivityManager)paramContext.getSystemService("activity"));
    c = new ani(paramContext.getResources().getDisplayMetrics());
  }
  
  public ang a()
  {
    return new ang(a, b, c, d, e, h, f, g);
  }
}

/* Location:
 * Qualified Name:     anh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */