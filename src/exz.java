import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import java.lang.ref.WeakReference;

final class exz
  extends BitmapDrawable
{
  private final WeakReference<eya> b;
  
  public exz(exw paramexw, Resources paramResources, eya parameya)
  {
    super(paramResources, null);
    b = new WeakReference(parameya);
  }
  
  public eya a()
  {
    return (eya)b.get();
  }
}

/* Location:
 * Qualified Name:     exz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */