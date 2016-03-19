import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

public final class aru
  implements alr<BitmapDrawable>
{
  private final Bitmap a;
  private final Resources b;
  private final amd c;
  
  private aru(Resources paramResources, amd paramamd, Bitmap paramBitmap)
  {
    b = ((Resources)aal.a(paramResources, "Argument must not be null"));
    c = ((amd)aal.a(paramamd, "Argument must not be null"));
    a = ((Bitmap)aal.a(paramBitmap, "Argument must not be null"));
  }
  
  public static aru a(Resources paramResources, amd paramamd, Bitmap paramBitmap)
  {
    return new aru(paramResources, paramamd, paramBitmap);
  }
  
  public Class<BitmapDrawable> b()
  {
    return BitmapDrawable.class;
  }
  
  public int d()
  {
    return avq.a(a);
  }
  
  public void e()
  {
    c.a(a);
  }
}

/* Location:
 * Qualified Name:     aru
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */