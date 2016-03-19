package android.support.design.widget;

import aal;
import aen;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import dcn;
import h;
import ks;
import lc;
import md;

public class Snackbar$SnackbarLayout
  extends LinearLayout
{
  private TextView a;
  private Button b;
  private int c;
  private int d;
  private dcn e;
  private aen f;
  
  public Snackbar$SnackbarLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Snackbar$SnackbarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, h.ag);
    c = paramAttributeSet.getDimensionPixelSize(h.ah, -1);
    d = paramAttributeSet.getDimensionPixelSize(h.aj, -1);
    if (paramAttributeSet.hasValue(h.ai)) {
      ks.f(this, paramAttributeSet.getDimensionPixelSize(h.ai, 0));
    }
    paramAttributeSet.recycle();
    setClickable(true);
    LayoutInflater.from(paramContext).inflate(aal.r, this);
    ks.e(this, 1);
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool = false;
    if (paramInt1 != getOrientation())
    {
      setOrientation(paramInt1);
      bool = true;
    }
    TextView localTextView;
    if ((a.getPaddingTop() != paramInt2) || (a.getPaddingBottom() != paramInt3))
    {
      localTextView = a;
      if (!ks.a.y(localTextView)) {
        break label96;
      }
      paramInt1 = ks.a.v(localTextView);
      int i = ks.a.w(localTextView);
      ks.a.a(localTextView, paramInt1, paramInt2, i, paramInt3);
    }
    for (;;)
    {
      bool = true;
      return bool;
      label96:
      localTextView.setPadding(localTextView.getPaddingLeft(), paramInt2, localTextView.getPaddingRight(), paramInt3);
    }
  }
  
  public void a()
  {
    ks.c(a, 0.0F);
    Object localObject = a;
    ks.a.k((View)localObject).a(1.0F).a(180L).b(70L).c();
    if (b.getVisibility() == 0)
    {
      ks.c(b, 0.0F);
      localObject = b;
      ks.a.k((View)localObject).a(1.0F).a(180L).b(70L).c();
    }
  }
  
  public void a(aen paramaen)
  {
    f = paramaen;
  }
  
  public void a(dcn paramdcn)
  {
    e = paramdcn;
  }
  
  public void b()
  {
    ks.c(a, 1.0F);
    Object localObject = a;
    ks.a.k((View)localObject).a(0.0F).a(180L).b(0L).c();
    if (b.getVisibility() == 0)
    {
      ks.c(b, 1.0F);
      localObject = b;
      ks.a.k((View)localObject).a(0.0F).a(180L).b(0L).c();
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (f != null) {
      f.g();
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    a = ((TextView)findViewById(aal.q));
    b = ((Button)findViewById(aal.p));
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramBoolean) && (e != null)) {
      e.a();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = paramInt1;
    if (c > 0)
    {
      i = paramInt1;
      if (getMeasuredWidth() > c)
      {
        i = View.MeasureSpec.makeMeasureSpec(c, 1073741824);
        super.onMeasure(i, paramInt2);
      }
    }
    int j = getResources().getDimensionPixelSize(aal.m);
    int k = getResources().getDimensionPixelSize(aal.l);
    if (a.getLayout().getLineCount() > 1)
    {
      paramInt1 = 1;
      if ((paramInt1 == 0) || (d <= 0) || (b.getMeasuredWidth() <= d)) {
        break label142;
      }
      if (!a(1, j, j - k)) {
        break label170;
      }
      paramInt1 = 1;
    }
    for (;;)
    {
      if (paramInt1 != 0) {
        super.onMeasure(i, paramInt2);
      }
      return;
      paramInt1 = 0;
      break;
      label142:
      if (paramInt1 != 0) {}
      for (paramInt1 = j;; paramInt1 = k)
      {
        if (!a(0, paramInt1, paramInt1)) {
          break label170;
        }
        paramInt1 = 1;
        break;
      }
      label170:
      paramInt1 = 0;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar.SnackbarLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */