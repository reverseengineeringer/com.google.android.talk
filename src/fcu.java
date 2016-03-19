import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewPropertyAnimator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.views.FixedAspectRatioImageView;

public abstract class fcu
  extends LinearLayout
  implements bhv, cuk
{
  public static final boolean e = false;
  public static boolean f;
  private static int j;
  private eys a;
  private fcd b;
  private final ImageView c;
  private final ImageView d;
  public bhs g;
  public final FixedAspectRatioImageView h;
  public boolean i;
  
  static
  {
    imx localimx = ezi.u;
  }
  
  public fcu(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, null);
    if (j == 0) {
      j = getResources().getDimensionPixelSize(aal.dN);
    }
    setOrientation(1);
    inflate(paramContext, aal.go, this);
    c = ((ImageView)findViewById(aen.dq));
    h = ((FixedAspectRatioImageView)findViewById(aen.dt));
    d = ((ImageView)findViewById(aen.ds));
    if (a())
    {
      d.setImageResource(R.drawable.bk);
      d.setContentDescription(getResources().getString(StressMode.hw));
    }
    setLongClickable(true);
  }
  
  protected void a(int paramInt)
  {
    setContentDescription(getResources().getString(paramInt));
  }
  
  public void a(bfd parambfd, boolean paramBoolean, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramString == null) {
      if (a()) {
        d.setVisibility(0);
      }
    }
    label346:
    label351:
    for (;;)
    {
      return;
      int k = paramInt1;
      if (paramInt1 == 0) {
        k = j;
      }
      paramInt1 = paramInt2;
      if (paramInt2 == 0) {
        paramInt1 = j;
      }
      if (Math.abs(paramInt3 % 180) == 90)
      {
        h.a(paramInt1, k);
        if (aal.a(getContext(), "babel_crash_on_conversation_scroll_error", false)) {
          ezi.c("Babel_Scroll", 85 + "setting MediaThumbnailAttachmentView.mImageView dimensions to " + paramInt1 + "x" + k, new Object[0]);
        }
        i = paramBoolean;
        g = new bhs(new eyd(paramString, parambfd.a()).a(j).a(false).c(f()).d(false), this, null, true, null);
        if (!((eit)ilh.a(getContext(), eit.class)).a(g, i)) {
          break label346;
        }
        g = null;
      }
      for (;;)
      {
        if ((!aal.a(getContext(), "babel_extra_log_scrolling", false)) && (!aal.a(getContext(), "babel_crash_on_conversation_scroll_error", false))) {
          break label351;
        }
        paramInt1 = h.getHeight();
        ezi.c("Babel_Scroll", 39 + "Image request begin, Height:" + paramInt1, new Object[0]);
        return;
        h.a(k, paramInt1);
        if (!aal.a(getContext(), "babel_crash_on_conversation_scroll_error", false)) {
          break;
        }
        ezi.c("Babel_Scroll", 85 + "setting MediaThumbnailAttachmentView.mImageView dimensions to " + k + "x" + paramInt1, new Object[0]);
        break;
        e();
      }
    }
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    Object localObject1;
    Object localObject2;
    if (e)
    {
      if (parameys == null)
      {
        localObject1 = null;
        if (paramexs != null) {
          break label121;
        }
        localObject2 = null;
        label20:
        localObject2 = String.valueOf(localObject2);
        new StringBuilder(String.valueOf(localObject1).length() + 80 + String.valueOf(localObject2).length()).append("MediaThumbnailView: setImageBitmap ").append((String)localObject1).append("gifImage=").append((String)localObject2).append(" success=").append(paramBoolean1).append(" loadedFromCache=").append(paramBoolean2);
      }
    }
    else
    {
      if (g == parambhs) {
        break label130;
      }
      if (parameys != null) {
        parameys.b();
      }
    }
    label121:
    label130:
    label176:
    label268:
    label349:
    label360:
    label392:
    label505:
    for (;;)
    {
      return;
      localObject1 = parameys.toString();
      break;
      localObject2 = paramexs.toString();
      break label20;
      g = null;
      int k;
      if (!paramBoolean2)
      {
        k = 1;
        if (k == 0) {
          break label349;
        }
        h.setAlpha(0.0F);
        h.animate().alpha(1.0F).setDuration(250L).start();
        c.setVisibility(4);
        h.setVisibility(0);
        if (a()) {
          d.setVisibility(0);
        }
        if (!paramBoolean1) {
          break label392;
        }
        if (parambhs.n().q() != null) {
          a(parambhs.n().q());
        }
        if (paramexs == null) {
          break label360;
        }
        b = new fcd(paramexs);
        h.setImageDrawable(b);
        b.a();
        h.requestLayout();
      }
      for (;;)
      {
        if ((!aal.a(getContext(), "babel_extra_log_scrolling", false)) && (!aal.a(getContext(), "babel_crash_on_conversation_scroll_error", false))) {
          break label505;
        }
        k = h.getHeight();
        ezi.c("Babel_Scroll", 37 + "Image Update done, Height:" + k, new Object[0]);
        return;
        k = 0;
        break;
        h.setAlpha(1.0F);
        break label176;
        hbs.a("Expected null", a);
        a = parameys;
        h.setImageBitmap(a.e());
        break label268;
        parameys = getResources();
        if (a())
        {
          h.setBackgroundColor(parameys.getColor(aal.di));
        }
        else
        {
          h.setBackgroundColor(parameys.getColor(aal.do));
          d.setImageResource(R.drawable.aG);
          d.setVisibility(0);
          paramexs = new TextView(getContext());
          paramexs.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
          paramexs.setText(StressMode.fO);
          paramexs.setTextColor(parameys.getColor(aal.cQ));
          addView(paramexs, 0);
        }
      }
    }
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void b()
  {
    if (g != null)
    {
      g.b();
      g = null;
    }
    h.setImageBitmap(null);
    if (a != null)
    {
      a.b();
      a = null;
    }
    i = false;
    if (b != null)
    {
      b.c();
      b = null;
    }
  }
  
  public void b_()
  {
    if (b != null) {
      b.a();
    }
  }
  
  public void c(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      TextView localTextView = (TextView)findViewById(aen.at);
      localTextView.setText(paramString);
      localTextView.setVisibility(0);
    }
  }
  
  public void c_()
  {
    if (b != null) {
      b.b();
    }
  }
  
  public void d_()
  {
    if (i)
    {
      i = false;
      boolean bool = ((eit)ilh.a(getContext(), eit.class)).a(g);
      if ((g != null) && (bool)) {
        g = null;
      }
    }
  }
  
  public void e()
  {
    AnimationDrawable localAnimationDrawable = fbq.a((cbr)getContext());
    c.setBackgroundDrawable(localAnimationDrawable);
    c.setVisibility(0);
    h.setVisibility(4);
  }
  
  protected boolean f()
  {
    return false;
  }
  
  protected void onAttachedToWindow()
  {
    if (b != null) {
      b.a();
    }
    super.onAttachedToWindow();
  }
  
  protected void onDetachedFromWindow()
  {
    if (b != null) {
      b.b();
    }
    super.onDetachedFromWindow();
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt4 > 0) && (paramInt2 > paramInt4)) {
      f = true;
    }
  }
}

/* Location:
 * Qualified Name:     fcu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */