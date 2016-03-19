import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;

public abstract class aab
{
  private boolean a = false;
  ya q;
  public RecyclerView r;
  aak s;
  public boolean t = false;
  
  private static int a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int j = 1073741824;
    int i = Math.max(0, paramInt1 - paramInt2);
    if (paramBoolean) {
      if (paramInt3 >= 0)
      {
        paramInt1 = paramInt3;
        paramInt2 = j;
      }
    }
    for (;;)
    {
      return View.MeasureSpec.makeMeasureSpec(paramInt1, paramInt2);
      paramInt2 = 0;
      paramInt1 = 0;
      continue;
      paramInt2 = j;
      paramInt1 = paramInt3;
      if (paramInt3 < 0) {
        if (paramInt3 == -1)
        {
          paramInt1 = i;
          paramInt2 = j;
        }
        else if (paramInt3 == -2)
        {
          paramInt2 = Integer.MIN_VALUE;
          paramInt1 = i;
        }
        else
        {
          paramInt2 = 0;
          paramInt1 = 0;
        }
      }
    }
  }
  
  private void a(View paramView, int paramInt, boolean paramBoolean)
  {
    aao localaao = RecyclerView.b(paramView);
    aac localaac;
    if ((paramBoolean) || (localaao.m()))
    {
      r.e.c(localaao);
      localaac = (aac)paramView.getLayoutParams();
      if ((!localaao.g()) && (!localaao.e())) {
        break label128;
      }
      if (!localaao.e()) {
        break label120;
      }
      localaao.f();
      label68:
      q.a(paramView, paramInt, paramView.getLayoutParams(), false);
    }
    for (;;)
    {
      if (f)
      {
        a.invalidate();
        f = false;
      }
      return;
      r.e.d(localaao);
      break;
      label120:
      localaao.h();
      break label68;
      label128:
      if (paramView.getParent() == r)
      {
        int j = q.c(paramView);
        int i = paramInt;
        if (paramInt == -1) {
          i = q.b();
        }
        if (j == -1) {
          throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + r.indexOfChild(paramView));
        }
        if (j != i) {
          r.h.a(j, i);
        }
      }
      else
      {
        q.a(paramView, paramInt, false);
        e = true;
        if ((s != null) && (s.c())) {
          s.b(paramView);
        }
      }
    }
  }
  
  public int A()
  {
    if (r != null) {
      return r.getPaddingRight();
    }
    return 0;
  }
  
  public int B()
  {
    if (r != null) {
      return r.getPaddingBottom();
    }
    return 0;
  }
  
  public View C()
  {
    if (r == null) {}
    View localView;
    do
    {
      return null;
      localView = r.getFocusedChild();
    } while ((localView == null) || (q.d(localView)));
    return localView;
  }
  
  public void D()
  {
    if (s != null) {
      s.a();
    }
  }
  
  boolean E()
  {
    Object localObject = r.b;
    localObject = r.u;
    return false;
  }
  
  public int a(int paramInt, aag paramaag, aam paramaam)
  {
    return 0;
  }
  
  public int a(aag paramaag, aam paramaam)
  {
    if ((r == null) || (r.g == null)) {}
    while (!j()) {
      return 1;
    }
    return r.g.a();
  }
  
  public aac a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new aac(paramContext, paramAttributeSet);
  }
  
  public aac a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof aac)) {
      return new aac((aac)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new aac((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new aac(paramLayoutParams);
  }
  
  public void a() {}
  
  public void a(int paramInt1, int paramInt2)
  {
    View localView = f(paramInt1);
    if (localView == null) {
      throw new IllegalArgumentException("Cannot move a child from non-existing index:" + paramInt1);
    }
    e(paramInt1);
    c(localView, paramInt2);
  }
  
  public void a(int paramInt, aag paramaag)
  {
    View localView = f(paramInt);
    d(paramInt);
    paramaag.a(localView);
  }
  
  public void a(aag paramaag)
  {
    int i = v() - 1;
    if (i >= 0)
    {
      View localView = f(i);
      aao localaao = RecyclerView.b(localView);
      if (!localaao.c())
      {
        if ((!localaao.j()) || (localaao.m()) || (r.g.b)) {
          break label78;
        }
        d(i);
        paramaag.a(localaao);
      }
      for (;;)
      {
        i -= 1;
        break;
        label78:
        e(i);
        paramaag.c(localView);
      }
    }
  }
  
  public void a(aag paramaag, aam paramaam, View paramView, my parammy)
  {
    int i;
    if (j())
    {
      i = d(paramView);
      if (!i()) {
        break label50;
      }
    }
    label50:
    for (int j = d(paramView);; j = 0)
    {
      parammy.b(nh.a(i, 1, j, 1, false));
      return;
      i = 0;
      break;
    }
  }
  
  public void a(aag paramaag, aam paramaam, my parammy)
  {
    if ((ks.b(r, -1)) || (ks.a(r, -1)))
    {
      parammy.a(8192);
      parammy.i(true);
    }
    if ((ks.b(r, 1)) || (ks.a(r, 1)))
    {
      parammy.a(4096);
      parammy.i(true);
    }
    int i = a(paramaag, paramaam);
    int j = b(paramaag, paramaam);
    parammy.a(new ng(my.a.a(i, j, false, 0)));
  }
  
  public void a(Parcelable paramParcelable) {}
  
  public void a(RecyclerView paramRecyclerView)
  {
    if (paramRecyclerView == null)
    {
      r = null;
      q = null;
      return;
    }
    r = paramRecyclerView;
    q = d;
  }
  
  public void a(RecyclerView paramRecyclerView, aag paramaag) {}
  
  public void a(View paramView)
  {
    a(paramView, -1);
  }
  
  public void a(View paramView, int paramInt)
  {
    a(paramView, paramInt, true);
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Rect localRect = getLayoutParamsd;
    paramView.layout(left + paramInt1, top + paramInt2, paramInt3 - right, paramInt4 - bottom);
  }
  
  public void a(View paramView, int paramInt, aac paramaac)
  {
    aao localaao = RecyclerView.b(paramView);
    if (localaao.m()) {
      r.e.c(localaao);
    }
    for (;;)
    {
      q.a(paramView, paramInt, paramaac, localaao.m());
      return;
      r.e.d(localaao);
    }
  }
  
  public void a(View paramView, aag paramaag)
  {
    c(paramView);
    paramaag.a(paramView);
  }
  
  public void a(View paramView, Rect paramRect)
  {
    if (r == null)
    {
      paramRect.set(0, 0, 0, 0);
      return;
    }
    paramRect.set(r.d(paramView));
  }
  
  void a(View paramView, my parammy)
  {
    aao localaao = RecyclerView.b(paramView);
    if ((localaao != null) && (!localaao.m()) && (!q.d(a))) {
      a(r.b, r.u, paramView, parammy);
    }
  }
  
  public void a(AccessibilityEvent paramAccessibilityEvent)
  {
    Object localObject = r.b;
    localObject = r.u;
    b(paramAccessibilityEvent);
  }
  
  public void a(String paramString)
  {
    if (r != null) {
      r.a(paramString);
    }
  }
  
  void a(my parammy)
  {
    a(r.b, r.u, parammy);
  }
  
  public boolean a(aac paramaac)
  {
    return paramaac != null;
  }
  
  public boolean a(RecyclerView paramRecyclerView, View paramView, Rect paramRect, boolean paramBoolean)
  {
    int i2 = y();
    int m = z();
    int i3 = w() - A();
    int i1 = x();
    int i6 = B();
    int i4 = paramView.getLeft() + left;
    int n = paramView.getTop() + top;
    int i5 = i4 + paramRect.width();
    int i7 = paramRect.height();
    int i = Math.min(0, i4 - i2);
    int j = Math.min(0, n - m);
    int k = Math.max(0, i5 - i3);
    i1 = Math.max(0, n + i7 - (i1 - i6));
    if (u() == 1) {
      if (k != 0)
      {
        i = k;
        if (j == 0) {
          break label207;
        }
        label144:
        if ((i == 0) && (j == 0)) {
          break label233;
        }
        if (!paramBoolean) {
          break label222;
        }
        paramRecyclerView.scrollBy(i, j);
      }
    }
    for (;;)
    {
      return true;
      i = Math.max(i, i5 - i3);
      break;
      if (i != 0) {
        break;
      }
      for (;;)
      {
        i = Math.min(i4 - i2, k);
      }
      label207:
      j = Math.min(n - m, i1);
      break label144;
      label222:
      paramRecyclerView.a(i, j);
    }
    label233:
    return false;
  }
  
  public int b(int paramInt, aag paramaag, aam paramaam)
  {
    return 0;
  }
  
  public int b(aag paramaag, aam paramaam)
  {
    if ((r == null) || (r.g == null)) {}
    while (!i()) {
      return 1;
    }
    return r.g.a();
  }
  
  public int b(aam paramaam)
  {
    return 0;
  }
  
  public View b(int paramInt)
  {
    int j = v();
    int i = 0;
    while (i < j)
    {
      View localView = f(i);
      aao localaao = RecyclerView.b(localView);
      if ((localaao != null) && (localaao.d() == paramInt) && (!localaao.c()) && ((r.u.a()) || (!localaao.m()))) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  public void b() {}
  
  public void b(int paramInt1, int paramInt2)
  {
    r.e(paramInt1, paramInt2);
  }
  
  public void b(aag paramaag)
  {
    int j = paramaag.c();
    int i = j - 1;
    while (i >= 0)
    {
      View localView = paramaag.c(i);
      aao localaao = RecyclerView.b(localView);
      if (!localaao.c())
      {
        localaao.a(false);
        if (localaao.n()) {
          r.removeDetachedView(localView, false);
        }
        if (r.s != null) {
          r.s.d(localaao);
        }
        localaao.a(true);
        paramaag.b(localView);
      }
      i -= 1;
    }
    paramaag.d();
    if (j > 0) {
      r.invalidate();
    }
  }
  
  public void b(RecyclerView paramRecyclerView, aag paramaag)
  {
    a = false;
    a(paramRecyclerView, paramaag);
  }
  
  public void b(View paramView)
  {
    b(paramView, -1);
  }
  
  public void b(View paramView, int paramInt)
  {
    a(paramView, paramInt, false);
  }
  
  public void b(AccessibilityEvent paramAccessibilityEvent)
  {
    boolean bool2 = true;
    paramAccessibilityEvent = ms.a(paramAccessibilityEvent);
    if (r == null) {
      return;
    }
    boolean bool1 = bool2;
    if (!ks.b(r, 1))
    {
      bool1 = bool2;
      if (!ks.b(r, -1))
      {
        bool1 = bool2;
        if (!ks.a(r, -1)) {
          if (!ks.a(r, 1)) {
            break label97;
          }
        }
      }
    }
    label97:
    for (bool1 = bool2;; bool1 = false)
    {
      paramAccessibilityEvent.a(bool1);
      if (r.g == null) {
        break;
      }
      paramAccessibilityEvent.a(r.g.a());
      return;
    }
  }
  
  @Deprecated
  public boolean b(RecyclerView paramRecyclerView)
  {
    return (t()) || (paramRecyclerView.r());
  }
  
  public int c(aam paramaam)
  {
    return 0;
  }
  
  public void c() {}
  
  public void c(int paramInt) {}
  
  public void c(aag paramaag)
  {
    int i = v() - 1;
    while (i >= 0)
    {
      if (!RecyclerView.b(f(i)).c()) {
        a(i, paramaag);
      }
      i -= 1;
    }
  }
  
  public void c(aag paramaag, aam paramaam)
  {
    Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
  }
  
  public void c(View paramView)
  {
    q.b(paramView);
  }
  
  public void c(View paramView, int paramInt)
  {
    a(paramView, paramInt, (aac)paramView.getLayoutParams());
  }
  
  public boolean c(RecyclerView paramRecyclerView)
  {
    return b(paramRecyclerView);
  }
  
  public int d(aam paramaam)
  {
    return 0;
  }
  
  public int d(View paramView)
  {
    return ((aac)paramView.getLayoutParams()).e();
  }
  
  public View d(int paramInt, aag paramaag, aam paramaam)
  {
    return null;
  }
  
  public void d() {}
  
  public void d(int paramInt)
  {
    if (f(paramInt) != null) {
      q.a(paramInt);
    }
  }
  
  public int e(aam paramaam)
  {
    return 0;
  }
  
  public void e() {}
  
  public void e(int paramInt)
  {
    f(paramInt);
    q.d(paramInt);
  }
  
  public void e(View paramView)
  {
    aac localaac = (aac)paramView.getLayoutParams();
    Rect localRect = r.d(paramView);
    int i = left;
    int j = right;
    int k = top;
    int m = bottom;
    paramView.measure(a(w(), i + j + 0 + (y() + A() + leftMargin + rightMargin), width, i()), a(x(), m + k + 0 + (z() + B() + topMargin + bottomMargin), height, j()));
  }
  
  public int f(aam paramaam)
  {
    return 0;
  }
  
  public int f(View paramView)
  {
    Rect localRect = getLayoutParamsd;
    int i = paramView.getMeasuredWidth();
    int j = left;
    return right + (i + j);
  }
  
  public abstract aac f();
  
  public View f(int paramInt)
  {
    if (q != null) {
      return q.b(paramInt);
    }
    return null;
  }
  
  public int g(aam paramaam)
  {
    return 0;
  }
  
  public int g(View paramView)
  {
    Rect localRect = getLayoutParamsd;
    int i = paramView.getMeasuredHeight();
    int j = top;
    return bottom + (i + j);
  }
  
  public void g(int paramInt)
  {
    if (r != null) {
      r.f(paramInt);
    }
  }
  
  public boolean g()
  {
    return false;
  }
  
  public int h(View paramView)
  {
    return paramView.getLeft() - n(paramView);
  }
  
  public Parcelable h()
  {
    return null;
  }
  
  public void h(int paramInt)
  {
    if (r != null) {
      r.e(paramInt);
    }
  }
  
  public int i(View paramView)
  {
    return paramView.getTop() - l(paramView);
  }
  
  public boolean i()
  {
    return false;
  }
  
  boolean i(int paramInt)
  {
    Object localObject = r.b;
    localObject = r.u;
    return j(paramInt);
  }
  
  public int j(View paramView)
  {
    return paramView.getRight() + o(paramView);
  }
  
  public boolean j()
  {
    return false;
  }
  
  public boolean j(int paramInt)
  {
    if (r == null) {}
    int i;
    do
    {
      return false;
      switch (paramInt)
      {
      default: 
        paramInt = 0;
        i = 0;
      }
    } while ((i == 0) && (paramInt == 0));
    r.scrollBy(paramInt, i);
    return true;
    if (ks.b(r, -1)) {}
    for (paramInt = -(x() - z() - B());; paramInt = 0)
    {
      i = paramInt;
      int j;
      if (ks.a(r, -1))
      {
        j = -(w() - y() - A());
        i = paramInt;
        paramInt = j;
        break;
        if (!ks.b(r, 1)) {
          break label196;
        }
      }
      label196:
      for (paramInt = x() - z() - B();; paramInt = 0)
      {
        i = paramInt;
        if (ks.a(r, 1))
        {
          j = w();
          int k = y();
          int m = A();
          i = paramInt;
          paramInt = j - k - m;
          break;
        }
        paramInt = 0;
        break;
      }
    }
  }
  
  public int k(View paramView)
  {
    return paramView.getBottom() + m(paramView);
  }
  
  public int l(View paramView)
  {
    return getLayoutParamsd.top;
  }
  
  public int m(View paramView)
  {
    return getLayoutParamsd.bottom;
  }
  
  public int n(View paramView)
  {
    return getLayoutParamsd.left;
  }
  
  public int o(View paramView)
  {
    return getLayoutParamsd.right;
  }
  
  public void r()
  {
    if (r != null) {
      r.requestLayout();
    }
  }
  
  public void s()
  {
    a = true;
  }
  
  public boolean t()
  {
    return (s != null) && (s.c());
  }
  
  public int u()
  {
    RecyclerView localRecyclerView = r;
    return ks.a.u(localRecyclerView);
  }
  
  public int v()
  {
    if (q != null) {
      return q.b();
    }
    return 0;
  }
  
  public int w()
  {
    if (r != null) {
      return r.getWidth();
    }
    return 0;
  }
  
  public int x()
  {
    if (r != null) {
      return r.getHeight();
    }
    return 0;
  }
  
  public int y()
  {
    if (r != null) {
      return r.getPaddingLeft();
    }
    return 0;
  }
  
  public int z()
  {
    if (r != null) {
      return r.getPaddingTop();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     aab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */