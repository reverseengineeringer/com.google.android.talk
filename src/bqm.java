import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.os.Build.VERSION;
import com.google.android.apps.hangouts.conversation.v2.FauxConversationSnackbar;
import com.google.android.libraries.quantum.snackbar.Snackbar;

public final class bqm
  extends AnimatorListenerAdapter
{
  public bqm(Snackbar paramSnackbar) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if ((Build.VERSION.SDK_INT < 21) && (a.d() != 0)) {
      FauxConversationSnackbar.a(a);
    }
  }
  
  public void onAnimationStart(Animator paramAnimator)
  {
    a.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     bqm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */