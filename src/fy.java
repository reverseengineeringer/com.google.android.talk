import android.graphics.drawable.Drawable;
import java.lang.reflect.Method;

class fy
  extends fx
{
  public void b(Drawable paramDrawable, int paramInt)
  {
    if (!aen.k) {}
    try
    {
      Method localMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", new Class[] { Integer.TYPE });
      aen.j = localMethod;
      localMethod.setAccessible(true);
      aen.k = true;
      if (aen.j != null) {}
      try
      {
        aen.j.invoke(paramDrawable, new Object[] { Integer.valueOf(paramInt) });
        return;
      }
      catch (Exception paramDrawable)
      {
        aen.j = null;
        return;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
  
  public int d(Drawable paramDrawable)
  {
    int i = aen.a(paramDrawable);
    if (i >= 0) {
      return i;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     fy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */