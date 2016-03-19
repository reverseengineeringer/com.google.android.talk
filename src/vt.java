import android.content.res.Resources;
import android.graphics.drawable.Drawable;

final class vt
  extends vl
{
  private final vv a;
  
  public vt(Resources paramResources, vv paramvv)
  {
    super(paramResources);
    a = paramvv;
  }
  
  public Drawable getDrawable(int paramInt)
  {
    Drawable localDrawable = super.getDrawable(paramInt);
    if (localDrawable != null) {
      a.a(paramInt, localDrawable);
    }
    return localDrawable;
  }
}

/* Location:
 * Qualified Name:     vt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */