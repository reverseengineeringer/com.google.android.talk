import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.apps.hangouts.floatingactionbutton.impl.FloatingActionButton;

public final class bwu
  extends AnimatorListenerAdapter
{
  public bwu(FloatingActionButton paramFloatingActionButton) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    if (a.g == bwx.a)
    {
      a.b = a.d;
      a.c = a.e;
    }
    a.d = -1;
    a.e = null;
    a.f = 0.0F;
    a.invalidate();
  }
}

/* Location:
 * Qualified Name:     bwu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */