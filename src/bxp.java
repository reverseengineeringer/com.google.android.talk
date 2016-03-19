import android.content.Context;
import android.content.res.Resources;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

public final class bxp
  implements bws
{
  private final float a = 1.0F;
  private final float b = 0.0F;
  
  public Animation a(Context paramContext, long paramLong)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(a, b);
    localAlphaAnimation.setInterpolator(new nu());
    localAlphaAnimation.setDuration(paramContext.getResources().getInteger(aal.lw));
    return localAlphaAnimation;
  }
}

/* Location:
 * Qualified Name:     bxp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */