import android.view.View;
import android.view.animation.Animation;

final class bk
  extends bl
{
  bk(bh parambh, View paramView, Animation paramAnimation, av paramav)
  {
    super(paramView, paramAnimation);
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    super.onAnimationEnd(paramAnimation);
    if (a.l != null)
    {
      a.l = null;
      b.a(a, a.m, 0, 0, false);
    }
  }
}

/* Location:
 * Qualified Name:     bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */