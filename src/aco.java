import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

public final class aco
{
  public Drawable a;
  public Bitmap b;
  public int c;
  
  public Drawable a(Resources paramResources)
  {
    if (paramResources == null) {
      throw new IllegalArgumentException("resources can not be null!");
    }
    if (a != null) {
      return a;
    }
    if (b == null) {
      return null;
    }
    return new BitmapDrawable(paramResources, b);
  }
}

/* Location:
 * Qualified Name:     aco
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */