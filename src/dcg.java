import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.os.Handler;
import com.google.android.apps.hangouts.peoplelistv2.impl.ScrollViewCustom;

public final class dcg
  implements Animator.AnimatorListener
{
  public dcg(ScrollViewCustom paramScrollViewCustom) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    a.c = false;
    a.b.post(a.d);
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    a.c = false;
    a.b.post(a.d);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator)
  {
    a.c = true;
  }
}

/* Location:
 * Qualified Name:     dcg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */