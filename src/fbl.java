import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import com.google.android.apps.hangouts.views.ConversationListItemWrapper;

public final class fbl
  implements Animator.AnimatorListener
{
  public fbl(ConversationListItemWrapper paramConversationListItemWrapper, Runnable paramRunnable) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    a.run();
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     fbl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */