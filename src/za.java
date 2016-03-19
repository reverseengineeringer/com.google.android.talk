import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import java.lang.reflect.Method;

public class za
{
  private static Method a;
  private static Method b;
  private final zj A = new zj(this);
  private final zh B = new zh(this);
  private Runnable C;
  private Rect D = new Rect();
  private boolean E;
  private int F;
  private Context c;
  PopupWindow d;
  zd e;
  int f = Integer.MAX_VALUE;
  final zl g = new zl(this);
  final Handler h;
  private ListAdapter i;
  private int j = -2;
  private int k = -2;
  private int l;
  private int m;
  private int n = 1002;
  private boolean o;
  private int p = 0;
  private boolean q = false;
  private boolean r = false;
  private View s;
  private int t = 0;
  private DataSetObserver u;
  private View v;
  private Drawable w;
  private AdapterView.OnItemClickListener x;
  private AdapterView.OnItemSelectedListener y;
  private final zk z = new zk(this);
  
  static
  {
    try
    {
      a = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", new Class[] { Boolean.TYPE });
      try
      {
        b = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", new Class[] { View.class, Integer.TYPE, Boolean.TYPE });
        return;
      }
      catch (NoSuchMethodException localNoSuchMethodException1) {}
    }
    catch (NoSuchMethodException localNoSuchMethodException2)
    {
      for (;;) {}
    }
  }
  
  public za(Context paramContext)
  {
    this(paramContext, null, aen.X);
  }
  
  public za(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  public za(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    c = paramContext;
    h = new Handler(paramContext.getMainLooper());
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, sb.aI, paramInt1, paramInt2);
    l = localTypedArray.getDimensionPixelOffset(sb.aJ, 0);
    m = localTypedArray.getDimensionPixelOffset(sb.aK, 0);
    if (m != 0) {
      o = true;
    }
    localTypedArray.recycle();
    d = new vb(paramContext, paramAttributeSet, paramInt1);
    d.setInputMethodMode(1);
    paramContext = c.getResources().getConfiguration().locale;
    F = hn.a.a(paramContext);
  }
  
  private int a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (b != null) {
      try
      {
        int i1 = ((Integer)b.invoke(d, new Object[] { paramView, Integer.valueOf(paramInt), Boolean.valueOf(paramBoolean) })).intValue();
        return i1;
      }
      catch (Exception localException) {}
    }
    return d.getMaxAvailableHeight(paramView, paramInt);
  }
  
  public void a(int paramInt)
  {
    l = paramInt;
  }
  
  public void a(Drawable paramDrawable)
  {
    d.setBackgroundDrawable(paramDrawable);
  }
  
  public void a(View paramView)
  {
    v = paramView;
  }
  
  public void a(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    x = paramOnItemClickListener;
  }
  
  public void a(ListAdapter paramListAdapter)
  {
    if (u == null) {
      u = new zi(this);
    }
    for (;;)
    {
      i = paramListAdapter;
      if (i != null) {
        paramListAdapter.registerDataSetObserver(u);
      }
      if (e != null) {
        e.setAdapter(i);
      }
      return;
      if (i != null) {
        i.unregisterDataSetObserver(u);
      }
    }
  }
  
  public void a(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    d.setOnDismissListener(paramOnDismissListener);
  }
  
  public void b(int paramInt)
  {
    m = paramInt;
    o = true;
  }
  
  public void c()
  {
    boolean bool3 = true;
    boolean bool2 = true;
    Object localObject2;
    boolean bool1;
    Object localObject1;
    View localView;
    LinearLayout.LayoutParams localLayoutParams;
    label255:
    int i2;
    int i1;
    if (e == null)
    {
      localObject2 = c;
      C = new zb(this);
      if (!E)
      {
        bool1 = true;
        e = new zd((Context)localObject2, bool1);
        if (w != null) {
          e.setSelector(w);
        }
        e.setAdapter(i);
        e.setOnItemClickListener(x);
        e.setFocusable(true);
        e.setFocusableInTouchMode(true);
        e.setOnItemSelectedListener(new zc(this));
        e.setOnScrollListener(A);
        if (y != null) {
          e.setOnItemSelectedListener(y);
        }
        localObject1 = e;
        localView = s;
        if (localView == null) {
          break label1240;
        }
        localObject2 = new LinearLayout((Context)localObject2);
        ((LinearLayout)localObject2).setOrientation(1);
        localLayoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0F);
        switch (t)
        {
        default: 
          Log.e("ListPopupWindow", "Invalid hint position " + t);
          if (k >= 0)
          {
            i2 = k;
            i1 = Integer.MIN_VALUE;
            label271:
            localView.measure(View.MeasureSpec.makeMeasureSpec(i2, i1), 0);
            localObject1 = (LinearLayout.LayoutParams)localView.getLayoutParams();
            i1 = localView.getMeasuredHeight();
            i2 = topMargin;
            i1 = bottomMargin + (i1 + i2);
            localObject1 = localObject2;
          }
          break;
        }
      }
    }
    for (;;)
    {
      d.setContentView((View)localObject1);
      for (;;)
      {
        label327:
        localObject1 = d.getBackground();
        int i3;
        label390:
        label404:
        int i4;
        if (localObject1 != null)
        {
          ((Drawable)localObject1).getPadding(D);
          i2 = D.top + D.bottom;
          i3 = i2;
          if (!o)
          {
            m = (-D.top);
            i3 = i2;
          }
          if (d.getInputMethodMode() != 2) {
            break label727;
          }
          bool1 = true;
          i4 = a(g(), m, bool1);
          if ((!q) && (j != -1)) {
            break label733;
          }
          i1 = i4 + i3;
          bool1 = o();
          pj.a(d, n);
          if (!d.isShowing()) {
            break label984;
          }
          if (k != -1) {
            break label882;
          }
          i2 = -1;
          label477:
          if (j != -1) {
            break label958;
          }
          if (!bool1) {
            break label910;
          }
          label490:
          if (!bool1) {
            break label920;
          }
          localObject1 = d;
          if (k != -1) {
            break label915;
          }
          i3 = -1;
          label511:
          ((PopupWindow)localObject1).setWidth(i3);
          d.setHeight(0);
          label525:
          localObject1 = d;
          if ((r) || (q)) {
            break label978;
          }
          bool1 = bool2;
          label549:
          ((PopupWindow)localObject1).setOutsideTouchable(bool1);
          localObject1 = d;
          localObject2 = g();
          i4 = l;
          int i5 = m;
          i3 = i2;
          if (i2 < 0) {
            i3 = -1;
          }
          i2 = i1;
          if (i1 < 0) {
            i2 = -1;
          }
          ((PopupWindow)localObject1).update((View)localObject2, i4, i5, i3, i2);
        }
        for (;;)
        {
          return;
          bool1 = false;
          break;
          ((LinearLayout)localObject2).addView((View)localObject1, localLayoutParams);
          ((LinearLayout)localObject2).addView(localView);
          break label255;
          ((LinearLayout)localObject2).addView(localView);
          ((LinearLayout)localObject2).addView((View)localObject1, localLayoutParams);
          break label255;
          i1 = 0;
          i2 = 0;
          break label271;
          d.getContentView();
          localObject1 = s;
          if (localObject1 != null)
          {
            localObject2 = (LinearLayout.LayoutParams)((View)localObject1).getLayoutParams();
            i1 = ((View)localObject1).getMeasuredHeight();
            i2 = topMargin;
            i1 = bottomMargin + (i1 + i2);
            break label327;
            D.setEmpty();
            i3 = 0;
            break label390;
            label727:
            bool1 = false;
            break label404;
            label733:
            switch (k)
            {
            default: 
              i2 = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
            }
            for (;;)
            {
              i4 = e.a(i2, i4 - i1);
              i2 = i1;
              if (i4 > 0) {
                i2 = i1 + i3;
              }
              i1 = i2 + i4;
              break;
              i2 = View.MeasureSpec.makeMeasureSpec(c.getResources().getDisplayMetrics().widthPixels - (D.left + D.right), Integer.MIN_VALUE);
              continue;
              i2 = View.MeasureSpec.makeMeasureSpec(c.getResources().getDisplayMetrics().widthPixels - (D.left + D.right), 1073741824);
            }
            label882:
            if (k == -2)
            {
              i2 = g().getWidth();
              break label477;
            }
            i2 = k;
            break label477;
            label910:
            i1 = -1;
            break label490;
            label915:
            i3 = 0;
            break label511;
            label920:
            localObject1 = d;
            if (k == -1) {}
            for (i3 = -1;; i3 = 0)
            {
              ((PopupWindow)localObject1).setWidth(i3);
              d.setHeight(-1);
              break;
            }
            label958:
            if (j == -2) {
              break label525;
            }
            i1 = j;
            break label525;
            label978:
            bool1 = false;
            break label549;
            label984:
            if (k == -1)
            {
              i2 = -1;
              label994:
              if (j != -1) {
                break label1207;
              }
              i1 = -1;
              label1004:
              d.setWidth(i2);
              d.setHeight(i1);
              if (a == null) {}
            }
            try
            {
              a.invoke(d, new Object[] { Boolean.valueOf(true) });
              localObject1 = d;
              if ((!r) && (!q)) {}
              for (bool1 = bool3;; bool1 = false)
              {
                ((PopupWindow)localObject1).setOutsideTouchable(bool1);
                d.setTouchInterceptor(z);
                localObject1 = d;
                localObject2 = g();
                i1 = l;
                i2 = m;
                i3 = p;
                pj.a.a((PopupWindow)localObject1, (View)localObject2, i1, i2, i3);
                e.setSelection(-1);
                if ((!E) || (e.isInTouchMode())) {
                  m();
                }
                if (E) {
                  break;
                }
                h.post(B);
                return;
                if (k == -2)
                {
                  i2 = g().getWidth();
                  break label994;
                }
                i2 = k;
                break label994;
                label1207:
                if (j == -2) {
                  break label1004;
                }
                i1 = j;
                break label1004;
              }
            }
            catch (Exception localException)
            {
              for (;;) {}
            }
          }
        }
        i1 = 0;
      }
      label1240:
      i1 = 0;
    }
  }
  
  public void c(int paramInt)
  {
    p = paramInt;
  }
  
  public void d()
  {
    t = 0;
  }
  
  public void d(int paramInt)
  {
    k = paramInt;
  }
  
  public void e()
  {
    E = true;
    d.setFocusable(true);
  }
  
  public void e(int paramInt)
  {
    Drawable localDrawable = d.getBackground();
    if (localDrawable != null)
    {
      localDrawable.getPadding(D);
      k = (D.left + D.right + paramInt);
      return;
    }
    d(paramInt);
  }
  
  public Drawable f()
  {
    return d.getBackground();
  }
  
  public void f(int paramInt)
  {
    zd localzd = e;
    if ((n()) && (localzd != null))
    {
      g = false;
      localzd.setSelection(paramInt);
      if ((Build.VERSION.SDK_INT >= 11) && (localzd.getChoiceMode() != 0)) {
        localzd.setItemChecked(paramInt, true);
      }
    }
  }
  
  public View g()
  {
    return v;
  }
  
  public int h()
  {
    return l;
  }
  
  public int i()
  {
    if (!o) {
      return 0;
    }
    return m;
  }
  
  public int j()
  {
    return k;
  }
  
  public void k()
  {
    d.dismiss();
    if (s != null)
    {
      ViewParent localViewParent = s.getParent();
      if ((localViewParent instanceof ViewGroup)) {
        ((ViewGroup)localViewParent).removeView(s);
      }
    }
    d.setContentView(null);
    e = null;
    h.removeCallbacks(g);
  }
  
  public void l()
  {
    d.setInputMethodMode(2);
  }
  
  public void m()
  {
    zd localzd = e;
    if (localzd != null)
    {
      g = true;
      localzd.requestLayout();
    }
  }
  
  public boolean n()
  {
    return d.isShowing();
  }
  
  public boolean o()
  {
    return d.getInputMethodMode() == 2;
  }
  
  public ListView p()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     za
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */