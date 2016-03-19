import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.Locale;

public class fbe
  extends FrameLayout
  implements Checkable
{
  private static final StyleSpan b = new StyleSpan(1);
  private static ForegroundColorSpan c;
  private static AccessibilityManager d;
  public final ObjectAnimator a;
  private boolean e;
  private a f;
  
  public fbe(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public fbe(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, null);
    if (c == null) {
      c = new ForegroundColorSpan(paramContext.getApplicationContext().getResources().getColor(aal.db));
    }
    if (d == null) {
      d = (AccessibilityManager)getContext().getSystemService("accessibility");
    }
    a = ObjectAnimator.ofFloat(null, "alpha", new float[] { 0.0F, 1.0F });
    a.setInterpolator(new axe(axi.a));
  }
  
  protected void a(View paramView, boolean paramBoolean)
  {
    float f1 = 1.0F;
    a.cancel();
    if (paramBoolean)
    {
      a.setTarget(paramView);
      ObjectAnimator localObjectAnimator = a;
      float f3 = paramView.getAlpha();
      float f2;
      if (e)
      {
        f2 = 1.0F;
        localObjectAnimator.setFloatValues(new float[] { f3, f2 });
        f2 = paramView.getAlpha();
        if (!e) {
          break label110;
        }
      }
      for (;;)
      {
        f1 = Math.abs(f2 - f1);
        a.setDuration((int)(f1 * 200.0F));
        a.start();
        return;
        f2 = 0.0F;
        break;
        label110:
        f1 = 0.0F;
      }
    }
    if (e) {}
    for (;;)
    {
      paramView.setAlpha(f1);
      return;
      f1 = 0.0F;
    }
  }
  
  protected void a(TextView paramTextView, String paramString1, SpannableStringBuilder paramSpannableStringBuilder, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)) || (d.isEnabled()))
    {
      paramTextView.setText(paramString1);
      return;
    }
    int i = paramString1.toUpperCase(Locale.getDefault()).indexOf(paramString2);
    if (i == -1)
    {
      paramTextView.setText(paramString1);
      return;
    }
    paramSpannableStringBuilder.clear();
    paramSpannableStringBuilder.append(paramString1);
    int j = paramString2.length() + i;
    paramSpannableStringBuilder.setSpan(b, i, j, 0);
    paramSpannableStringBuilder.setSpan(c, i, j, 0);
    paramTextView.setText(paramSpannableStringBuilder);
  }
  
  protected void a(boolean paramBoolean)
  {
    int j = 0;
    Object localObject = findViewById(aen.aV);
    if ((localObject instanceof Checkable)) {
      ((Checkable)localObject).setChecked(e);
    }
    a((View)localObject, paramBoolean);
    localObject = (TextView)findViewById(aen.eq);
    if (e)
    {
      i = 1;
      ((TextView)localObject).setTypeface(null, i);
      if (!e) {
        break label106;
      }
    }
    label106:
    for (int i = -872415232;; i = -1711276032)
    {
      ((TextView)localObject).setTextColor(i);
      i = j;
      if (e) {
        i = -1;
      }
      setBackgroundColor(i);
      return;
      i = 0;
      break;
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (e == paramBoolean1) {
      return;
    }
    e = paramBoolean1;
    a(paramBoolean2);
  }
  
  public boolean isChecked()
  {
    return e;
  }
  
  public void j()
  {
    f = null;
  }
  
  public void k()
  {
    a(false, false);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    a(false);
  }
  
  public final void setChecked(boolean paramBoolean)
  {
    a(paramBoolean, true);
  }
  
  public void toggle()
  {
    if (!e) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool, true);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     fbe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */