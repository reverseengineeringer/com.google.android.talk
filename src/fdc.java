import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.view.View;
import com.google.android.apps.hangouts.views.MessageListItemView;
import com.google.android.apps.hangouts.views.MessageStatusView;

public final class fdc
  implements Animator.AnimatorListener
{
  public fdc(MessageListItemView paramMessageListItemView) {}
  
  private void a()
  {
    a.a.f.setVisibility(8);
  }
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    a();
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    a();
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     fdc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */