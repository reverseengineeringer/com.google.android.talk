import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import com.google.android.apps.hangouts.views.RichStatusView;

final class fei
  implements Animation.AnimationListener
{
  private final boolean b;
  
  fei(feh paramfeh, boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (!b)
    {
      a.b.setVisibility(8);
      paramAnimation = a.e;
      i = 0;
      if (i >= 3) {
        break label75;
      }
      if (a[i].b.getVisibility() != 0) {
        break label61;
      }
    }
    label61:
    label75:
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        paramAnimation.setVisibility(0);
        return;
        i += 1;
        break;
      }
      paramAnimation.setVisibility(8);
      return;
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     fei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */