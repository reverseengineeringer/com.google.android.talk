import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class aso
  extends Drawable.ConstantState
{
  final Context a;
  final amd b;
  final asr c;
  
  public aso(Context paramContext, amd paramamd, asr paramasr)
  {
    b = paramamd;
    a = paramContext.getApplicationContext();
    c = paramasr;
  }
  
  public int getChangingConfigurations()
  {
    return 0;
  }
  
  public Drawable newDrawable()
  {
    return new asn(this);
  }
  
  public Drawable newDrawable(Resources paramResources)
  {
    return newDrawable();
  }
}

/* Location:
 * Qualified Name:     aso
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */