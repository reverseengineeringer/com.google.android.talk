import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.widget.ImageView;
import java.lang.reflect.Method;

final class qp
{
  private static final int[] a = { 16843531 };
  
  public static Drawable a(Activity paramActivity)
  {
    paramActivity = paramActivity.obtainStyledAttributes(a);
    Drawable localDrawable = paramActivity.getDrawable(0);
    paramActivity.recycle();
    return localDrawable;
  }
  
  public static qq a(Activity paramActivity, Drawable paramDrawable, int paramInt)
  {
    qq localqq = new qq(paramActivity);
    if (a != null) {}
    for (;;)
    {
      try
      {
        paramActivity = paramActivity.getActionBar();
        a.invoke(paramActivity, new Object[] { paramDrawable });
        b.invoke(paramActivity, new Object[] { Integer.valueOf(paramInt) });
        return localqq;
      }
      catch (Exception paramActivity) {}
      if (c != null)
      {
        c.setImageDrawable(paramDrawable);
        return localqq;
      }
    }
    return localqq;
  }
  
  public static qq a(qq paramqq, Activity paramActivity, int paramInt)
  {
    qq localqq = paramqq;
    if (paramqq == null) {
      localqq = new qq(paramActivity);
    }
    if (a != null) {}
    try
    {
      paramqq = paramActivity.getActionBar();
      b.invoke(paramqq, new Object[] { Integer.valueOf(paramInt) });
      if (Build.VERSION.SDK_INT <= 19) {
        paramqq.setSubtitle(paramqq.getSubtitle());
      }
      return localqq;
    }
    catch (Exception paramqq) {}
    return localqq;
  }
}

/* Location:
 * Qualified Name:     qp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */