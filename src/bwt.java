import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import com.google.android.apps.hangouts.floatingactionbutton.impl.FloatingActionButton;

public final class bwt
  implements ValueAnimator.AnimatorUpdateListener
{
  public bwt(FloatingActionButton paramFloatingActionButton) {}
  
  public void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    paramValueAnimator = (Float)paramValueAnimator.getAnimatedValue();
    a.f = aal.a(paramValueAnimator);
    a.invalidate();
  }
}

/* Location:
 * Qualified Name:     bwt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */