import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.people.accountswitcherview.SelectedAccountNavigationView;
import java.util.ArrayList;

public final class gmt
  extends AnimatorListenerAdapter
{
  public gmt(SelectedAccountNavigationView paramSelectedAccountNavigationView) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    a.d.B.setVisibility(8);
    a.d.y.setVisibility(8);
    if (a.d.C != null) {
      a.d.C.setVisibility(8);
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
 * Qualified Name:     gmt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */