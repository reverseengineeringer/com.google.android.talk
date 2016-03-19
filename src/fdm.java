import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import com.google.android.apps.hangouts.views.MessageListAnimationManager;
import com.google.android.apps.hangouts.views.MessageListItemWrapperView;
import com.google.android.apps.hangouts.views.MessageListItemWrapperView.WatermarkGalleryStateTransition;

public final class fdm
  implements Animator.AnimatorListener
{
  public fdm(MessageListItemWrapperView.WatermarkGalleryStateTransition paramWatermarkGalleryStateTransition) {}
  
  private void a()
  {
    if (aal.a(a.b.getContext(), "babel_crash_on_conversation_scroll_error", false)) {
      ezi.c("Babel_Scroll", "watermarkGalleryMeasuredHeightReduction animation finishing", new Object[0]);
    }
    a.b.c = a.b.d;
    a.b.d = -1;
    a.b.b.a(a.b.e, a.a);
    fcx localfcx = a.b.f.a();
    if (localfcx != null) {
      localfcx.b();
    }
  }
  
  public void onAnimationCancel(Animator paramAnimator)
  {
    a();
  }
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    a();
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator)
  {
    if (aal.a(a.b.getContext(), "babel_crash_on_conversation_scroll_error", false)) {
      ezi.c("Babel_Scroll", "watermarkGalleryMeasuredHeightReduction animation starting", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     fdm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */