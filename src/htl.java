import android.animation.Animator;
import android.animation.Animator.AnimatorListener;

final class htl
  implements Animator.AnimatorListener
{
  private htj b;
  
  public htl(hti paramhti, htj paramhtj)
  {
    b = paramhtj;
  }
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator) {}
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator)
  {
    a.a(b);
  }
}

/* Location:
 * Qualified Name:     htl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */