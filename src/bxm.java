import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import com.google.android.apps.hangouts.floatingactionbutton.impl.QuickButtonContainer;

public final class bxm
  implements ValueAnimator.AnimatorUpdateListener
{
  public bxm(QuickButtonContainer paramQuickButtonContainer) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    if (a.a) {
      a.setAlpha(paramValueAnimator.getAnimatedFraction());
    }
  }
}

/* Location:
 * Qualified Name:     bxm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */