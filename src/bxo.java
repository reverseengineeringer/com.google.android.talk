import android.content.Context;
import android.content.res.Resources;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.LinearInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;

public final class bxo
  implements bws
{
  public Animation a(Context paramContext, long paramLong)
  {
    int i = paramContext.getResources().getInteger(aal.lx);
    int j = paramContext.getResources().getInteger(aal.ly);
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation.setInterpolator(new LinearInterpolator());
    localAlphaAnimation.setDuration(i);
    ScaleAnimation localScaleAnimation = new ScaleAnimation(0.5F, 1.0F, 0.5F, 1.0F, 1, 0.5F, 1, 0.5F);
    localScaleAnimation.setInterpolator(new nv());
    localScaleAnimation.setFillAfter(true);
    localScaleAnimation.setDuration(j);
    paramContext = new TranslateAnimation(0.0F, 0.0F, paramContext.getResources().getDimensionPixelSize(aal.lm), 0.0F);
    paramContext.setInterpolator(new nv());
    paramContext.setDuration(j);
    AnimationSet localAnimationSet = new AnimationSet(false);
    localAnimationSet.addAnimation(localAlphaAnimation);
    localAnimationSet.addAnimation(localScaleAnimation);
    localAnimationSet.addAnimation(paramContext);
    localAnimationSet.setStartOffset(paramLong);
    return localAnimationSet;
  }
}

/* Location:
 * Qualified Name:     bxo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */