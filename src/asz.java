import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;

public final class asz
  implements atb<Bitmap, BitmapDrawable>
{
  private final Resources a;
  private final amd b;
  
  public asz(Resources paramResources, amd paramamd)
  {
    a = ((Resources)aal.a(paramResources, "Argument must not be null"));
    b = ((amd)aal.a(paramamd, "Argument must not be null"));
  }
  
  public alr<BitmapDrawable> a(alr<Bitmap> paramalr)
  {
    return aru.a(a, b, (Bitmap)paramalr.c());
  }
}

/* Location:
 * Qualified Name:     asz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */