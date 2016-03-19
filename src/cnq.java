import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;

public final class cnq
  extends FrameLayout
{
  private static final float[] e = { 1.0F, 1.15F, 1.3F, 1.45F, 1.6F, 1.75F };
  boolean a = false;
  int b = 0;
  Handler c = new Handler();
  Runnable d = new cnr(this);
  private final View f;
  private final View g;
  
  public cnq(Context paramContext, ViewGroup paramViewGroup)
  {
    super(paramContext);
    inflate(getContext(), aal.mh, paramViewGroup);
    f = paramViewGroup.findViewById(aal.mg);
    g = paramViewGroup.findViewById(aal.mf);
  }
  
  void a()
  {
    g.setAlpha(0.5F);
    g.setScaleX(1.0F);
    g.setScaleY(1.0F);
    g.animate().alpha(0.0F).scaleX(2.0F).scaleY(2.0F).setDuration(1500L).start();
  }
  
  public void a(int paramInt)
  {
    paramInt = ezc.e(paramInt);
    if (b != paramInt)
    {
      f.animate().scaleX(e[paramInt]).scaleY(e[paramInt]).setDuration(200L).start();
      b = paramInt;
    }
    if ((paramInt > 0) && (!a))
    {
      a = true;
      a();
      c.postDelayed(d, 2000L);
    }
  }
}

/* Location:
 * Qualified Name:     cnq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */