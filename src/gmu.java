import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.gms.people.accountswitcherview.SelectedAccountNavigationView;
import java.util.ArrayList;

public final class gmu
  extends AnimatorListenerAdapter
{
  gmu(SelectedAccountNavigationView paramSelectedAccountNavigationView) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    paramAnimator = a;
    if (c != null) {
      c.a(b);
    }
    paramAnimator = a;
    if (k != null)
    {
      b = k;
      k = null;
    }
    if ((l != null) || (m != null))
    {
      a.clear();
      if (l != null) {
        a.add(l);
      }
      if (m != null) {
        a.add(m);
      }
      l = null;
      m = null;
    }
    a.c();
    a.j = null;
  }
}

/* Location:
 * Qualified Name:     gmu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */