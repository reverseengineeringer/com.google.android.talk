package android.support.v7.internal.view.menu;

import aal;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.Toast;
import ks;
import lc;
import sb;
import te;
import tf;
import tn;
import tp;
import uc;
import wl;
import xr;
import ze;

public class ActionMenuItemView
  extends xr
  implements View.OnClickListener, View.OnLongClickListener, uc, wl
{
  public tp a;
  public tn b;
  public tf c;
  private CharSequence d;
  private Drawable e;
  private ze f;
  private boolean g;
  private boolean h;
  private int i;
  private int j;
  private int k;
  
  public ActionMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = paramContext.getResources();
    g = localResources.getBoolean(aal.z);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, sb.v, paramInt, 0);
    i = paramContext.getDimensionPixelSize(sb.w, 0);
    paramContext.recycle();
    k = ((int)(getDisplayMetricsdensity * 32.0F + 0.5F));
    setOnClickListener(this);
    setOnLongClickListener(this);
    j = -1;
  }
  
  private void f()
  {
    int i1 = 0;
    int m;
    if (!TextUtils.isEmpty(d))
    {
      m = 1;
      if (e != null)
      {
        n = i1;
        if (!a.l()) {
          break label51;
        }
        if (!g)
        {
          n = i1;
          if (!h) {
            break label51;
          }
        }
      }
      int n = 1;
      label51:
      if ((m & n) == 0) {
        break label75;
      }
    }
    label75:
    for (CharSequence localCharSequence = d;; localCharSequence = null)
    {
      setText(localCharSequence);
      return;
      m = 0;
      break;
    }
  }
  
  public tp a()
  {
    return a;
  }
  
  public void a(Drawable paramDrawable)
  {
    e = paramDrawable;
    if (paramDrawable != null)
    {
      int i2 = paramDrawable.getIntrinsicWidth();
      int i1 = paramDrawable.getIntrinsicHeight();
      int n = i1;
      int m = i2;
      float f1;
      if (i2 > k)
      {
        f1 = k / i2;
        m = k;
        n = (int)(i1 * f1);
      }
      i2 = n;
      i1 = m;
      if (n > k)
      {
        f1 = k / n;
        i2 = k;
        i1 = (int)(m * f1);
      }
      paramDrawable.setBounds(0, 0, i1, i2);
    }
    setCompoundDrawables(paramDrawable, null, null, null);
    f();
  }
  
  public void a(CharSequence paramCharSequence)
  {
    d = paramCharSequence;
    setContentDescription(d);
    f();
  }
  
  public void a(tf paramtf)
  {
    c = paramtf;
  }
  
  public void a(tn paramtn)
  {
    b = paramtn;
  }
  
  public void a(tp paramtp)
  {
    a = paramtp;
    a(paramtp.getIcon());
    a(paramtp.a(this));
    setId(paramtp.getItemId());
    if (paramtp.isVisible()) {}
    for (int m = 0;; m = 8)
    {
      setVisibility(m);
      setEnabled(paramtp.isEnabled());
      if ((paramtp.hasSubMenu()) && (f == null)) {
        f = new te(this);
      }
      return;
    }
  }
  
  public boolean b()
  {
    return !TextUtils.isEmpty(getText());
  }
  
  public boolean c()
  {
    return true;
  }
  
  public boolean d()
  {
    return (b()) && (a.getIcon() == null);
  }
  
  public boolean e()
  {
    return b();
  }
  
  public void onClick(View paramView)
  {
    if (b != null) {
      b.a(a);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    g = getContext().getResources().getBoolean(aal.z);
    f();
  }
  
  public boolean onLongClick(View paramView)
  {
    if (b()) {
      return false;
    }
    int[] arrayOfInt = new int[2];
    Rect localRect = new Rect();
    getLocationOnScreen(arrayOfInt);
    getWindowVisibleDisplayFrame(localRect);
    Context localContext = getContext();
    int m = getWidth();
    int i1 = getHeight();
    int i2 = arrayOfInt[1];
    int i3 = i1 / 2;
    int n = arrayOfInt[0];
    n = m / 2 + n;
    m = n;
    if (ks.a.u(paramView) == 0) {
      m = getResourcesgetDisplayMetricswidthPixels - n;
    }
    paramView = Toast.makeText(localContext, a.getTitle(), 0);
    if (i2 + i3 < localRect.height()) {
      paramView.setGravity(8388661, m, arrayOfInt[1] + i1 - top);
    }
    for (;;)
    {
      paramView.show();
      return true;
      paramView.setGravity(81, 0, i1);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool = b();
    if ((bool) && (j >= 0)) {
      super.setPadding(j, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }
    super.onMeasure(paramInt1, paramInt2);
    int m = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int n = getMeasuredWidth();
    if (m == Integer.MIN_VALUE) {}
    for (paramInt1 = Math.min(paramInt1, i);; paramInt1 = i)
    {
      if ((m != 1073741824) && (i > 0) && (n < paramInt1)) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      }
      if ((!bool) && (e != null)) {
        super.setPadding((getMeasuredWidth() - e.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
      }
      return;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((a.hasSubMenu()) && (f != null) && (f.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    j = paramInt1;
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.ActionMenuItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */