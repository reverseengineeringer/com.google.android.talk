import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class bnm
  implements Animation.AnimationListener
{
  bnm(bng parambng, boolean paramBoolean) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if ((a) && (b.bh != null))
    {
      b.bh.run();
      b.bh = null;
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     bnm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */