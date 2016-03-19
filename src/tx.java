import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;

public class tx
  implements View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener, tz
{
  static final int a = aal.bm;
  final LayoutInflater b;
  final tl c;
  final boolean d;
  boolean e;
  private final Context f;
  private final ty g;
  private final int h;
  private final int i;
  private final int j;
  private View k;
  private za l;
  private ViewTreeObserver m;
  private ua n;
  private ViewGroup o;
  private boolean p;
  private int q;
  private int r = 0;
  
  private tx(Context paramContext, tl paramtl, View paramView)
  {
    this(paramContext, paramtl, paramView, false, aen.Z);
  }
  
  public tx(Context paramContext, tl paramtl, View paramView, boolean paramBoolean, int paramInt)
  {
    this(paramContext, paramtl, paramView, paramBoolean, paramInt, (byte)0);
  }
  
  private tx(Context paramContext, tl paramtl, View paramView, boolean paramBoolean, int paramInt, byte paramByte)
  {
    f = paramContext;
    b = LayoutInflater.from(paramContext);
    c = paramtl;
    g = new ty(this, c);
    d = paramBoolean;
    i = paramInt;
    j = 0;
    Resources localResources = paramContext.getResources();
    h = Math.max(getDisplayMetricswidthPixels / 2, localResources.getDimensionPixelSize(aal.E));
    k = paramView;
    paramtl.a(this, paramContext);
  }
  
  public void a()
  {
    r = 8388613;
  }
  
  public void a(Context paramContext, tl paramtl) {}
  
  public void a(View paramView)
  {
    k = paramView;
  }
  
  public void a(tl paramtl, boolean paramBoolean)
  {
    if (paramtl != c) {}
    do
    {
      return;
      f();
    } while (n == null);
    n.a(paramtl, paramBoolean);
  }
  
  public void a(ua paramua)
  {
    n = paramua;
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public boolean a(ue paramue)
  {
    tx localtx;
    int i1;
    if (paramue.hasVisibleItems())
    {
      localtx = new tx(f, paramue, k);
      localtx.a(n);
      int i2 = paramue.size();
      i1 = 0;
      if (i1 >= i2) {
        break label120;
      }
      MenuItem localMenuItem = paramue.getItem(i1);
      if ((!localMenuItem.isVisible()) || (localMenuItem.getIcon() == null)) {}
    }
    label120:
    for (boolean bool = true;; bool = false)
    {
      localtx.a(bool);
      if (localtx.e())
      {
        if (n != null) {
          n.a(paramue);
        }
        return true;
        i1 += 1;
        break;
      }
      return false;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    p = false;
    if (g != null) {
      g.notifyDataSetChanged();
    }
  }
  
  public boolean b()
  {
    return false;
  }
  
  public boolean b(tp paramtp)
  {
    return false;
  }
  
  public void c()
  {
    if (!e()) {
      throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }
  }
  
  public boolean c(tp paramtp)
  {
    return false;
  }
  
  public za d()
  {
    return l;
  }
  
  public boolean e()
  {
    int i4 = 0;
    l = new za(f, null, i, j);
    l.a(this);
    l.a(this);
    l.a(g);
    l.e();
    View localView = k;
    int i1;
    int i2;
    if (localView != null)
    {
      if (m == null) {}
      for (i1 = 1;; i1 = 0)
      {
        m = localView.getViewTreeObserver();
        if (i1 != 0) {
          m.addOnGlobalLayoutListener(this);
        }
        l.a(localView);
        l.c(r);
        if (!p)
        {
          ty localty = g;
          int i5 = View.MeasureSpec.makeMeasureSpec(0, 0);
          int i6 = View.MeasureSpec.makeMeasureSpec(0, 0);
          int i7 = localty.getCount();
          i2 = 0;
          int i3 = 0;
          localView = null;
          i1 = i4;
          i4 = i1;
          if (i2 < i7)
          {
            i4 = localty.getItemViewType(i2);
            if (i4 == i3) {
              break label340;
            }
            i3 = i4;
            localView = null;
            label199:
            if (o == null) {
              o = new FrameLayout(f);
            }
            localView = localty.getView(i2, localView, o);
            localView.measure(i5, i6);
            i4 = localView.getMeasuredWidth();
            if (i4 < h) {
              break;
            }
            i4 = h;
          }
          q = i4;
          p = true;
        }
        l.e(q);
        l.l();
        l.c();
        l.p().setOnKeyListener(this);
        return true;
      }
    }
    return false;
    if (i4 > i1) {
      i1 = i4;
    }
    for (;;)
    {
      i2 += 1;
      break;
      label340:
      break label199;
    }
  }
  
  public void f()
  {
    if (g()) {
      l.k();
    }
  }
  
  public boolean g()
  {
    return (l != null) && (l.n());
  }
  
  public void onDismiss()
  {
    l = null;
    c.close();
    if (m != null)
    {
      if (!m.isAlive()) {
        m = k.getViewTreeObserver();
      }
      m.removeGlobalOnLayoutListener(this);
      m = null;
    }
  }
  
  public void onGlobalLayout()
  {
    if (g())
    {
      View localView = k;
      if ((localView != null) && (localView.isShown())) {
        break label28;
      }
      f();
    }
    label28:
    while (!g()) {
      return;
    }
    l.c();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = g;
    a.a(paramAdapterView.a(paramInt), 0);
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 82))
    {
      f();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     tx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */