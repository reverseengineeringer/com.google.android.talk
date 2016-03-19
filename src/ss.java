import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.ViewConfiguration;

public final class ss
{
  private Context a;
  
  private ss(Context paramContext)
  {
    a = paramContext;
  }
  
  public static ss a(Context paramContext)
  {
    return new ss(paramContext);
  }
  
  public int a()
  {
    return a.getResources().getInteger(aal.aZ);
  }
  
  public boolean b()
  {
    if (Build.VERSION.SDK_INT >= 19) {}
    ViewConfiguration localViewConfiguration;
    do
    {
      return true;
      localViewConfiguration = ViewConfiguration.get(a);
    } while (!le.a.b(localViewConfiguration));
    return false;
  }
  
  public int c()
  {
    return a.getResources().getDisplayMetrics().widthPixels / 2;
  }
  
  public boolean d()
  {
    if (a.getApplicationInfo().targetSdkVersion >= 16) {
      return a.getResources().getBoolean(aal.x);
    }
    return a.getResources().getBoolean(aal.y);
  }
  
  public int e()
  {
    TypedArray localTypedArray = a.obtainStyledAttributes(null, sb.a, aen.v, 0);
    int j = localTypedArray.getLayoutDimension(sb.j, 0);
    Resources localResources = a.getResources();
    int i = j;
    if (!d()) {
      i = Math.min(j, localResources.getDimensionPixelSize(aal.C));
    }
    localTypedArray.recycle();
    return i;
  }
  
  public boolean f()
  {
    return a.getApplicationInfo().targetSdkVersion < 14;
  }
  
  public int g()
  {
    return a.getResources().getDimensionPixelSize(aal.D);
  }
}

/* Location:
 * Qualified Name:     ss
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */