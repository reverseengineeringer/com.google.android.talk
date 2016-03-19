import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.apps.hangouts.peoplelistv2.impl.EditParticipantsView;

public final class dar
  implements Animator.AnimatorListener
{
  public dar(EditParticipantsView paramEditParticipantsView) {}
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    paramAnimator = (View)((ObjectAnimator)paramAnimator).getTarget();
    a.d.removeView(paramAnimator);
    a.a();
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    paramAnimator = (View)((ObjectAnimator)paramAnimator).getTarget();
    a.d.removeView(paramAnimator);
    a.a();
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     dar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */