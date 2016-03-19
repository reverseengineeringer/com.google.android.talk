import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.google.android.apps.hangouts.views.FadeImageView;

public final class fbz
  implements Animation.AnimationListener
{
  public fbz(FadeImageView paramFadeImageView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    a.b.setAnimationListener(null);
    a.setBackgroundDrawable(a.c);
    a.startAnimation(a.a);
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     fbz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */