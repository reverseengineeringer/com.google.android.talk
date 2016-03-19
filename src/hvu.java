import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;

public final class hvu
  implements ai
{
  final String a;
  final long b;
  public TimeInterpolator c;
  
  public void a(View paramView)
  {
    if (c == null) {
      c = new ValueAnimator().getInterpolator();
    }
    paramView.animate().setInterpolator(c);
  }
}

/* Location:
 * Qualified Name:     hvu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */