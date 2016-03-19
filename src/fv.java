import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;

public final class fv
{
  public static final fw a = new fw();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new gc();
      return;
    }
    if (i >= 22)
    {
      a = new gb();
      return;
    }
    if (i >= 21)
    {
      a = new ga();
      return;
    }
    if (i >= 19)
    {
      a = new fz();
      return;
    }
    if (i >= 17)
    {
      a = new fy();
      return;
    }
    if (i >= 11)
    {
      a = new fx();
      return;
    }
  }
  
  public static <T extends Drawable> T a(Drawable paramDrawable)
  {
    Drawable localDrawable = paramDrawable;
    if ((paramDrawable instanceof gd)) {
      localDrawable = ((gd)paramDrawable).a();
    }
    return localDrawable;
  }
  
  public static void a(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    a.a(paramDrawable, paramFloat1, paramFloat2);
  }
  
  public static void a(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.a(paramDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void a(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    a.a(paramDrawable, paramColorStateList);
  }
  
  public static void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    a.a(paramDrawable, paramMode);
  }
}

/* Location:
 * Qualified Name:     fv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */