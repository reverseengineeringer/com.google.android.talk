import android.animation.Animator;
import android.animation.AnimatorSet;

public final class hph
{
  private final hpg a;
  private Animator b = new AnimatorSet();
  
  public hph(hpg paramhpg)
  {
    a = paramhpg;
  }
  
  private void a()
  {
    if (b.isStarted()) {
      b.end();
    }
  }
  
  public void a(Animator paramAnimator)
  {
    a();
    if (!a.c()) {
      return;
    }
    b = paramAnimator;
    b.start();
  }
  
  public void b(Animator paramAnimator)
  {
    a();
    if (a.c()) {
      return;
    }
    b = paramAnimator;
    b.start();
  }
}

/* Location:
 * Qualified Name:     hph
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */