package android.support.v7.internal.widget;

import aal;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import iq;
import sb;
import uq;
import uv;
import uw;
import ux;
import uy;
import uz;
import va;
import ys;
import za;

public final class ActivityChooserView
  extends ViewGroup
{
  public final uz a;
  public final ys b;
  public final Drawable c;
  public final FrameLayout d;
  public final FrameLayout e;
  public final ImageView f;
  public iq g;
  public final DataSetObserver h = new uv(this);
  public PopupWindow.OnDismissListener i;
  public boolean j;
  public int k = 4;
  public int l;
  private final va m;
  private final ImageView n;
  private final int o;
  private final ViewTreeObserver.OnGlobalLayoutListener p = new uw(this);
  private za q;
  private boolean r;
  
  public ActivityChooserView(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private ActivityChooserView(Context paramContext, byte paramByte)
  {
    this(paramContext, null);
  }
  
  private ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, null, 0);
    Object localObject = paramContext.obtainStyledAttributes(null, sb.E, 0, 0);
    k = ((TypedArray)localObject).getInt(sb.G, 4);
    paramAttributeSet = ((TypedArray)localObject).getDrawable(sb.F);
    ((TypedArray)localObject).recycle();
    LayoutInflater.from(getContext()).inflate(aal.be, this, true);
    m = new va(this);
    b = ((ys)findViewById(aal.aC));
    c = b.getBackground();
    e = ((FrameLayout)findViewById(aal.aJ));
    e.setOnClickListener(m);
    e.setOnLongClickListener(m);
    f = ((ImageView)e.findViewById(aal.aM));
    localObject = (FrameLayout)findViewById(aal.aK);
    ((FrameLayout)localObject).setOnClickListener(m);
    ((FrameLayout)localObject).setOnTouchListener(new ux(this, (View)localObject));
    d = ((FrameLayout)localObject);
    n = ((ImageView)((FrameLayout)localObject).findViewById(aal.aM));
    n.setImageDrawable(paramAttributeSet);
    a = new uz(this);
    a.registerDataSetObserver(new uy(this));
    paramContext = paramContext.getResources();
    o = Math.max(getDisplayMetricswidthPixels / 2, paramContext.getDimensionPixelSize(aal.E));
  }
  
  public void a(int paramInt)
  {
    String str = getContext().getString(paramInt);
    n.setContentDescription(str);
  }
  
  public void a(Drawable paramDrawable)
  {
    n.setImageDrawable(paramDrawable);
  }
  
  public void a(iq paramiq)
  {
    g = paramiq;
  }
  
  public void a(uq paramuq)
  {
    a.a(paramuq);
    if (c())
    {
      b();
      a();
    }
  }
  
  public boolean a()
  {
    if ((c()) || (!r)) {
      return false;
    }
    j = false;
    b(k);
    return true;
  }
  
  public void b(int paramInt)
  {
    if (a.e() == null) {
      throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }
    getViewTreeObserver().addOnGlobalLayoutListener(p);
    boolean bool;
    int i1;
    label59:
    label91:
    za localza;
    if (e.getVisibility() == 0)
    {
      bool = true;
      int i2 = a.c();
      if (!bool) {
        break label191;
      }
      i1 = 1;
      if ((paramInt == Integer.MAX_VALUE) || (i2 <= i1 + paramInt)) {
        break label196;
      }
      a.a(true);
      a.a(paramInt - 1);
      localza = d();
      if (!localza.n())
      {
        if ((!j) && (bool)) {
          break label215;
        }
        a.a(true, bool);
      }
    }
    for (;;)
    {
      localza.e(Math.min(a.a(), o));
      localza.c();
      if (g != null) {
        g.a(true);
      }
      localza.p().setContentDescription(getContext().getString(aal.bs));
      return;
      bool = false;
      break;
      label191:
      i1 = 0;
      break label59;
      label196:
      a.a(false);
      a.a(paramInt);
      break label91;
      label215:
      a.a(false, false);
    }
  }
  
  public boolean b()
  {
    if (c())
    {
      d().k();
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive()) {
        localViewTreeObserver.removeGlobalOnLayoutListener(p);
      }
    }
    return true;
  }
  
  public void c(int paramInt)
  {
    l = paramInt;
  }
  
  public boolean c()
  {
    return d().n();
  }
  
  public za d()
  {
    if (q == null)
    {
      q = new za(getContext());
      q.a(a);
      q.a(this);
      q.e();
      q.a(m);
      q.a(m);
    }
    return q;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    uq localuq = a.e();
    if (localuq != null) {
      localuq.registerObserver(h);
    }
    r = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Object localObject = a.e();
    if (localObject != null) {
      ((uq)localObject).unregisterObserver(h);
    }
    localObject = getViewTreeObserver();
    if (((ViewTreeObserver)localObject).isAlive()) {
      ((ViewTreeObserver)localObject).removeGlobalOnLayoutListener(p);
    }
    if (c()) {
      b();
    }
    r = false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    if (!c()) {
      b();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    ys localys = b;
    int i1 = paramInt2;
    if (e.getVisibility() != 0) {
      i1 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt2), 1073741824);
    }
    measureChild(localys, paramInt1, i1);
    setMeasuredDimension(localys.getMeasuredWidth(), localys.getMeasuredHeight());
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActivityChooserView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */