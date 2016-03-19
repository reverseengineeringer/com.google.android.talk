import android.animation.ObjectAnimator;
import android.content.res.Resources;
import com.google.android.apps.hangouts.views.MessageListItemView;

public final class fdf
  implements Runnable
{
  public fdf(MessageListItemView paramMessageListItemView) {}
  
  public void run()
  {
    ObjectAnimator localObjectAnimator = ObjectAnimator.ofFloat(a.a, "showPercentage", new float[] { 1.0F, 0.0F });
    localObjectAnimator.setDuration(a.getResources().getInteger(aal.eN));
    localObjectAnimator.setInterpolator(new axe(axi.a));
    localObjectAnimator.addListener(new fdg(this));
    localObjectAnimator.start();
  }
}

/* Location:
 * Qualified Name:     fdf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */