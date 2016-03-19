import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;

public final class m
  extends ViewGroup.MarginLayoutParams
{
  aen a;
  boolean b = false;
  public int c = 0;
  public int d = 0;
  public int e = -1;
  int f = -1;
  View g;
  View h;
  final Rect i = new Rect();
  Object j;
  private boolean k;
  private boolean l;
  private boolean m;
  
  public m()
  {
    super(-2, -2);
  }
  
  m(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, h.s);
    c = localTypedArray.getInteger(h.t, 0);
    f = localTypedArray.getResourceId(h.u, -1);
    d = localTypedArray.getInteger(h.v, 0);
    e = localTypedArray.getInteger(h.x, -1);
    b = localTypedArray.hasValue(h.w);
    if (b) {
      a = k.a(paramContext, paramAttributeSet, localTypedArray.getString(h.w));
    }
    localTypedArray.recycle();
  }
  
  public m(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public m(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
  
  public m(m paramm)
  {
    super(paramm);
  }
  
  public aen a()
  {
    return a;
  }
  
  public void a(aen paramaen)
  {
    if (a != paramaen)
    {
      a = paramaen;
      j = null;
      b = true;
    }
  }
  
  void a(Rect paramRect)
  {
    i.set(paramRect);
  }
  
  void a(boolean paramBoolean)
  {
    l = false;
  }
  
  boolean a(View paramView)
  {
    if (paramView != h)
    {
      if (a != null) {}
      return false;
    }
    return true;
  }
  
  boolean a(k paramk, View paramView)
  {
    if (k) {
      return true;
    }
    boolean bool = k;
    paramk = a;
    k = bool;
    return bool;
  }
  
  Rect b()
  {
    return i;
  }
  
  View b(k paramk, View paramView)
  {
    if (f == -1)
    {
      h = null;
      g = null;
      return null;
    }
    int n;
    View localView;
    ViewParent localViewParent;
    if (g != null)
    {
      if (g.getId() == f) {
        break label120;
      }
      n = 0;
      if (n != 0) {}
    }
    else
    {
      g = paramk.findViewById(f);
      if (g == null) {
        break label251;
      }
      localView = g;
      localViewParent = g.getParent();
      label81:
      if ((localViewParent == paramk) || (localViewParent == null)) {
        break label242;
      }
      if (localViewParent != paramView) {
        break label215;
      }
      if (!paramk.isInEditMode()) {
        break label205;
      }
      h = null;
      g = null;
    }
    for (;;)
    {
      return g;
      label120:
      localView = g;
      for (localViewParent = g.getParent();; localViewParent = localViewParent.getParent())
      {
        if (localViewParent == paramk) {
          break label194;
        }
        if ((localViewParent == null) || (localViewParent == paramView))
        {
          h = null;
          g = null;
          n = 0;
          break;
        }
        if ((localViewParent instanceof View)) {
          localView = (View)localViewParent;
        }
      }
      label194:
      h = localView;
      n = 1;
      break;
      label205:
      throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
      label215:
      if ((localViewParent instanceof View)) {
        localView = (View)localViewParent;
      }
      localViewParent = localViewParent.getParent();
      break label81;
      label242:
      h = localView;
      continue;
      label251:
      if (!paramk.isInEditMode()) {
        break label271;
      }
      h = null;
      g = null;
    }
    label271:
    throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + paramk.getResources().getResourceName(f) + " to anchor view " + paramView);
  }
  
  boolean c()
  {
    return (g == null) && (f != -1);
  }
  
  boolean d()
  {
    if (a == null) {
      k = false;
    }
    return k;
  }
  
  void e()
  {
    k = false;
  }
  
  void f()
  {
    l = false;
  }
  
  boolean g()
  {
    return l;
  }
  
  void h()
  {
    m = false;
  }
}

/* Location:
 * Qualified Name:     m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */