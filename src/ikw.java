import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class ikw
  implements Animator.AnimatorListener
{
  public boolean a;
  
  ikw(ikv paramikv) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    a = true;
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if ((!a) && (!b.al)) {
      paramAnimator.start();
    }
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator)
  {
    a = false;
  }
}

/* Location:
 * Qualified Name:     ikw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */