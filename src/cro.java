import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.view.View;
import java.util.Map;

final class cro
  implements Animator.AnimatorListener
{
  cro(crk paramcrk, crq paramcrq, ObjectAnimator paramObjectAnimator, View paramView) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    d.c.remove(a);
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (d.c.containsValue(b))
    {
      c.setAlpha(1.0F);
      d.b.c(a);
      d.c.remove(a);
    }
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator)
  {
    d.c.put(a, b);
  }
}

/* Location:
 * Qualified Name:     cro
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */