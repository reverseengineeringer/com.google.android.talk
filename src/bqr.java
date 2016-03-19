import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import com.google.android.apps.hangouts.conversation.v2.FloatingButtonWithCounter;
import com.google.android.libraries.quantum.fab.FloatingActionButton;

public final class bqr
  implements Animator.AnimatorListener
{
  public bqr(FloatingButtonWithCounter paramFloatingButtonWithCounter) {}
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    a.a.b(a.getContext().getResources().getColor(aal.jx));
    a.a.clearColorFilter();
    a.findViewById(aal.jM).setVisibility(0);
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator) {}
}

/* Location:
 * Qualified Name:     bqr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */