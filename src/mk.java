import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

public final class mk
  extends AnimatorListenerAdapter
{
  public mk(mn parammn, View paramView) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    a.c(b);
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    a.b(b);
  }
  
  public void onAnimationStart(Animator paramAnimator)
  {
    a.a(b);
  }
}

/* Location:
 * Qualified Name:     mk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */