import android.support.design.widget.Snackbar;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

public final class u
  implements Animation.AnimationListener
{
  public u(Snackbar paramSnackbar) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (Snackbar.b(a) != null) {
      Snackbar.b(a);
    }
    fdr.b().b(Snackbar.a(a));
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */