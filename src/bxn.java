import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.apps.hangouts.floatingactionbutton.impl.QuickButtonContainer;

public final class bxn
  extends AnimatorListenerAdapter
{
  public bxn(QuickButtonContainer paramQuickButtonContainer) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (a.c != paramAnimator) {
      return;
    }
    a.b = false;
    a.setVisibility(a.d);
    a.a = false;
    a.c = null;
  }
}

/* Location:
 * Qualified Name:     bxn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */