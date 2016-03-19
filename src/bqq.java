import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.widget.ImageView;
import com.google.android.apps.hangouts.conversation.v2.FloatingButtonWithCounter;

public final class bqq
  implements Animator.AnimatorListener
{
  public bqq(FloatingButtonWithCounter paramFloatingButtonWithCounter, ImageView paramImageView) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (a != null) {
      a.setVisibility(0);
    }
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     bqq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */