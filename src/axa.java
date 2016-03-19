import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

public final class axa
  extends AnimatorListenerAdapter
{
  public axa(View paramView) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (a.getAlpha() == 0.0F) {
      a.setVisibility(8);
    }
  }
  
  public void onAnimationStart(Animator paramAnimator)
  {
    a.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     axa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */