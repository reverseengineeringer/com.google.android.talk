import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.google.android.apps.hangouts.views.EasterEggView;
import java.util.List;

public final class fbo
  implements Animation.AnimationListener, bhv
{
  private bhs b = new bhs(parameyd, this, true, null);
  private ImageView c = null;
  private Animation d;
  private fcd e;
  
  public fbo(EasterEggView paramEasterEggView, eyd parameyd, int paramInt)
  {
    d = AnimationUtils.loadAnimation(paramEasterEggView.getContext(), paramInt);
    d.setAnimationListener(this);
    ((eit)ilh.a(paramEasterEggView.getContext(), eit.class)).c(b);
  }
  
  public void a()
  {
    if (b != null)
    {
      b.b();
      b = null;
    }
    if (d != null)
    {
      d.cancel();
      d = null;
    }
    if (c != null)
    {
      a.removeView(c);
      c.clearAnimation();
      c.setImageDrawable(null);
      c.setImageBitmap(null);
      c = null;
    }
    if (e != null)
    {
      e.c();
      e = null;
    }
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    if (parambhs.equals(b))
    {
      b = null;
      if (!paramBoolean1)
      {
        ezi.a("Babel", "Failed to download easter egg image.", new Object[0]);
        a.h.remove(this);
      }
      hbs.b("Expected non-null", paramexs);
      c = new ImageView(a.getContext());
      c.setScaleType(ImageView.ScaleType.FIT_CENTER);
      e = new fcd(paramexs);
      c.setImageDrawable(e);
      e.a();
      c.startAnimation(d);
      a.addView(c);
    }
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    if (c != null) {
      c.setVisibility(8);
    }
    a.post(new fbp(this, this));
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     fbo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */