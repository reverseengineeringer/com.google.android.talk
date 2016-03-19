package android.support.v7.internal.widget;

import aal;
import aen;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.v7.widget.ActionMenuView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import sb;
import tl;
import ug;
import uk;
import vw;
import vz;
import wb;
import we;

public class ActionBarContextView
  extends ug
{
  private CharSequence g;
  private CharSequence h;
  private View i;
  private View j;
  private LinearLayout k;
  private TextView l;
  private TextView m;
  private int n;
  private int o;
  private boolean p;
  private int q;
  
  public ActionBarContextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, aen.D);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = vw.a(paramContext, paramAttributeSet, sb.y, paramInt);
    setBackgroundDrawable(paramContext.a(sb.z));
    n = paramContext.f(sb.D, 0);
    o = paramContext.f(sb.C, 0);
    e = paramContext.e(sb.B, 0);
    q = paramContext.f(sb.A, aal.bd);
    paramContext.a();
  }
  
  private void g()
  {
    int i4 = 8;
    int i2 = 1;
    if (k == null)
    {
      LayoutInflater.from(getContext()).inflate(aal.ba, this);
      k = ((LinearLayout)getChildAt(getChildCount() - 1));
      l = ((TextView)k.findViewById(aal.ax));
      m = ((TextView)k.findViewById(aal.aw));
      if (n != 0) {
        l.setTextAppearance(getContext(), n);
      }
      if (o != 0) {
        m.setTextAppearance(getContext(), o);
      }
    }
    l.setText(g);
    m.setText(h);
    int i1;
    label167:
    Object localObject;
    if (!TextUtils.isEmpty(g))
    {
      i1 = 1;
      if (TextUtils.isEmpty(h)) {
        break label234;
      }
      localObject = m;
      if (i2 == 0) {
        break label239;
      }
    }
    label234:
    label239:
    for (int i3 = 0;; i3 = 8)
    {
      ((TextView)localObject).setVisibility(i3);
      localObject = k;
      if (i1 == 0)
      {
        i1 = i4;
        if (i2 == 0) {}
      }
      else
      {
        i1 = 0;
      }
      ((LinearLayout)localObject).setVisibility(i1);
      if (k.getParent() == null) {
        addView(k);
      }
      return;
      i1 = 0;
      break;
      i2 = 0;
      break label167;
    }
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void a(View paramView)
  {
    if (j != null) {
      removeView(j);
    }
    j = paramView;
    if ((paramView != null) && (k != null))
    {
      removeView(k);
      k = null;
    }
    if (paramView != null) {
      addView(paramView);
    }
    requestLayout();
  }
  
  public void a(CharSequence paramCharSequence)
  {
    g = paramCharSequence;
    g();
  }
  
  public void a(wb paramwb)
  {
    if (i == null)
    {
      i = LayoutInflater.from(getContext()).inflate(q, this, false);
      addView(i);
    }
    for (;;)
    {
      i.findViewById(aal.aB).setOnClickListener(new uk(this, paramwb));
      paramwb = (tl)paramwb.b();
      if (d != null) {
        d.g();
      }
      d = new we(getContext());
      d.d();
      ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
      paramwb.a(d, b);
      c = ((ActionMenuView)d.a(this));
      c.setBackgroundDrawable(null);
      addView(c, localLayoutParams);
      return;
      if (i.getParent() == null) {
        addView(i);
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean != p) {
      requestLayout();
    }
    p = paramBoolean;
  }
  
  public boolean a()
  {
    if (d != null) {
      return d.e();
    }
    return false;
  }
  
  public CharSequence b()
  {
    return g;
  }
  
  public void b(CharSequence paramCharSequence)
  {
    h = paramCharSequence;
    g();
  }
  
  public CharSequence c()
  {
    return h;
  }
  
  public void d()
  {
    if (i == null) {
      e();
    }
  }
  
  public void e()
  {
    removeAllViews();
    j = null;
    c = null;
  }
  
  public boolean f()
  {
    return p;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.MarginLayoutParams(-1, -2);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (d != null)
    {
      d.f();
      d.h();
    }
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      if (paramAccessibilityEvent.getEventType() == 32)
      {
        paramAccessibilityEvent.setSource(this);
        paramAccessibilityEvent.setClassName(getClass().getName());
        paramAccessibilityEvent.setPackageName(getContext().getPackageName());
        paramAccessibilityEvent.setContentDescription(g);
      }
    }
    else {
      return;
    }
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramBoolean = vz.a(this);
    int i1;
    int i2;
    int i3;
    Object localObject;
    if (paramBoolean)
    {
      i1 = paramInt3 - paramInt1 - getPaddingRight();
      i2 = getPaddingTop();
      i3 = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
      if ((i == null) || (i.getVisibility() == 8)) {
        break label289;
      }
      localObject = (ViewGroup.MarginLayoutParams)i.getLayoutParams();
      if (!paramBoolean) {
        break label252;
      }
      paramInt2 = rightMargin;
      label83:
      if (!paramBoolean) {
        break label261;
      }
      paramInt4 = leftMargin;
      label94:
      paramInt2 = a(i1, paramInt2, paramBoolean);
    }
    label210:
    label252:
    label261:
    label284:
    label289:
    for (paramInt2 = a(a(i, paramInt2, i2, i3, paramBoolean) + paramInt2, paramInt4, paramBoolean);; paramInt2 = i1)
    {
      paramInt4 = paramInt2;
      if (k != null)
      {
        paramInt4 = paramInt2;
        if (j == null)
        {
          paramInt4 = paramInt2;
          if (k.getVisibility() != 8) {
            paramInt4 = paramInt2 + a(k, paramInt2, i2, i3, paramBoolean);
          }
        }
      }
      if (j != null) {
        a(j, paramInt4, i2, i3, paramBoolean);
      }
      if (paramBoolean)
      {
        paramInt1 = getPaddingLeft();
        if (c != null)
        {
          localObject = c;
          if (paramBoolean) {
            break label284;
          }
        }
      }
      for (paramBoolean = true;; paramBoolean = false)
      {
        a((View)localObject, paramInt1, i2, i3, paramBoolean);
        return;
        i1 = getPaddingLeft();
        break;
        paramInt2 = leftMargin;
        break label83;
        paramInt4 = rightMargin;
        break label94;
        paramInt1 = paramInt3 - paramInt1 - getPaddingRight();
        break label210;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i3 = 1073741824;
    int i4 = 0;
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
    }
    if (View.MeasureSpec.getMode(paramInt2) == 0) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
    }
    int i6 = View.MeasureSpec.getSize(paramInt1);
    int i1;
    int i5;
    int i2;
    if (e > 0)
    {
      i1 = e;
      int i7 = getPaddingTop() + getPaddingBottom();
      paramInt1 = i6 - getPaddingLeft() - getPaddingRight();
      i5 = i1 - i7;
      i2 = View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE);
      paramInt2 = paramInt1;
      Object localObject;
      if (i != null)
      {
        paramInt1 = a(i, paramInt1, i2);
        localObject = (ViewGroup.MarginLayoutParams)i.getLayoutParams();
        paramInt2 = leftMargin;
        paramInt2 = paramInt1 - (rightMargin + paramInt2);
      }
      paramInt1 = paramInt2;
      if (c != null)
      {
        paramInt1 = paramInt2;
        if (c.getParent() == this) {
          paramInt1 = a(c, paramInt2, i2);
        }
      }
      paramInt2 = paramInt1;
      if (k != null)
      {
        paramInt2 = paramInt1;
        if (j == null)
        {
          if (!p) {
            break label498;
          }
          paramInt2 = View.MeasureSpec.makeMeasureSpec(0, 0);
          k.measure(paramInt2, i2);
          int i8 = k.getMeasuredWidth();
          if (i8 > paramInt1) {
            break label486;
          }
          i2 = 1;
          label293:
          paramInt2 = paramInt1;
          if (i2 != 0) {
            paramInt2 = paramInt1 - i8;
          }
          localObject = k;
          if (i2 == 0) {
            break label492;
          }
          paramInt1 = 0;
          label318:
          ((LinearLayout)localObject).setVisibility(paramInt1);
        }
      }
      label324:
      if (j != null)
      {
        localObject = j.getLayoutParams();
        if (width == -2) {
          break label513;
        }
        paramInt1 = 1073741824;
        label354:
        i2 = paramInt2;
        if (width >= 0) {
          i2 = Math.min(width, paramInt2);
        }
        if (height == -2) {
          break label520;
        }
        paramInt2 = i3;
        label389:
        if (height < 0) {
          break label527;
        }
        i3 = Math.min(height, i5);
        label409:
        j.measure(View.MeasureSpec.makeMeasureSpec(i2, paramInt1), View.MeasureSpec.makeMeasureSpec(i3, paramInt2));
      }
      if (e > 0) {
        break label542;
      }
      i2 = getChildCount();
      paramInt1 = 0;
      paramInt2 = i4;
      label446:
      if (paramInt2 >= i2) {
        break label534;
      }
      i1 = getChildAt(paramInt2).getMeasuredHeight() + i7;
      if (i1 <= paramInt1) {
        break label550;
      }
      paramInt1 = i1;
    }
    label486:
    label492:
    label498:
    label513:
    label520:
    label527:
    label534:
    label542:
    label550:
    for (;;)
    {
      paramInt2 += 1;
      break label446;
      i1 = View.MeasureSpec.getSize(paramInt2);
      break;
      i2 = 0;
      break label293;
      paramInt1 = 8;
      break label318;
      paramInt2 = a(k, paramInt1, i2);
      break label324;
      paramInt1 = Integer.MIN_VALUE;
      break label354;
      paramInt2 = Integer.MIN_VALUE;
      break label389;
      i3 = i5;
      break label409;
      setMeasuredDimension(i6, paramInt1);
      return;
      setMeasuredDimension(i6, i1);
      return;
    }
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActionBarContextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */