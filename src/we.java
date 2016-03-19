import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.widget.ActionMenuView;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import java.util.ArrayList;

public final class we
  extends tg
  implements ir
{
  private tf A;
  wh g;
  wj h;
  public wf i;
  wg j;
  final wk k = new wk(this);
  int l;
  private Drawable m;
  private boolean n;
  private boolean o;
  private boolean p;
  private int q;
  private int r;
  private int s;
  private boolean t;
  private boolean u;
  private boolean v;
  private boolean w;
  private int x;
  private final SparseBooleanArray y = new SparseBooleanArray();
  private View z;
  
  public we(Context paramContext)
  {
    super(paramContext, aal.bc, aal.bb);
  }
  
  public View a(tp paramtp, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramtp.getActionView();
    if ((localView == null) || (paramtp.m())) {
      localView = super.a(paramtp, paramView, paramViewGroup);
    }
    if (paramtp.isActionViewExpanded()) {}
    for (int i1 = 8;; i1 = 0)
    {
      localView.setVisibility(i1);
      paramtp = (ActionMenuView)paramViewGroup;
      paramView = localView.getLayoutParams();
      if (!paramtp.checkLayoutParams(paramView)) {
        localView.setLayoutParams(paramtp.a(paramView));
      }
      return localView;
    }
  }
  
  public ub a(ViewGroup paramViewGroup)
  {
    paramViewGroup = super.a(paramViewGroup);
    ((ActionMenuView)paramViewGroup).a(this);
    return paramViewGroup;
  }
  
  public void a(Context paramContext, tl paramtl)
  {
    super.a(paramContext, paramtl);
    paramtl = paramContext.getResources();
    paramContext = ss.a(paramContext);
    if (!p) {
      o = paramContext.b();
    }
    if (!v) {
      q = paramContext.c();
    }
    if (!t) {
      s = paramContext.a();
    }
    int i1 = q;
    if (o)
    {
      if (g == null)
      {
        g = new wh(this, a);
        if (n)
        {
          g.setImageDrawable(m);
          m = null;
          n = false;
        }
        int i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        g.measure(i2, i2);
      }
      i1 -= g.getMeasuredWidth();
    }
    for (;;)
    {
      r = i1;
      x = ((int)(56.0F * getDisplayMetricsdensity));
      z = null;
      return;
      g = null;
    }
  }
  
  public void a(ActionMenuView paramActionMenuView)
  {
    f = paramActionMenuView;
    paramActionMenuView.a(c);
  }
  
  public void a(tl paramtl, boolean paramBoolean)
  {
    g();
    super.a(paramtl, paramBoolean);
  }
  
  public void a(tp paramtp, uc paramuc)
  {
    paramuc.a(paramtp);
    paramtp = (ActionMenuView)f;
    paramuc = (ActionMenuItemView)paramuc;
    paramuc.a(paramtp);
    if (A == null) {
      A = new tf(this);
    }
    paramuc.a(A);
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      super.a(null);
      return;
    }
    c.a(false);
  }
  
  public boolean a(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == g) {
      return false;
    }
    return super.a(paramViewGroup, paramInt);
  }
  
  public boolean a(tp paramtp)
  {
    return paramtp.i();
  }
  
  public boolean a(ue paramue)
  {
    if (!paramue.hasVisibleItems()) {
      return false;
    }
    for (Object localObject1 = paramue; ((ue)localObject1).u() != c; localObject1 = (ue)((ue)localObject1).u()) {}
    Object localObject2 = ((ue)localObject1).getItem();
    ViewGroup localViewGroup = (ViewGroup)f;
    int i1;
    if (localViewGroup != null)
    {
      int i2 = localViewGroup.getChildCount();
      i1 = 0;
      if (i1 < i2)
      {
        localObject1 = localViewGroup.getChildAt(i1);
        if ((!(localObject1 instanceof uc)) || (((uc)localObject1).a() != localObject2)) {}
      }
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (localObject1 != null) {
        break label139;
      }
      if (g != null) {
        break label133;
      }
      return false;
      i1 += 1;
      break;
      localObject1 = null;
    }
    label133:
    localObject2 = g;
    label139:
    l = paramue.getItem().getItemId();
    i = new wf(this, b, paramue);
    i.a((View)localObject2);
    i.c();
    super.a(paramue);
    return true;
  }
  
  public void b(boolean paramBoolean)
  {
    int i2 = 1;
    int i3 = 0;
    ((View)f).getParent();
    super.b(paramBoolean);
    ((View)f).requestLayout();
    Object localObject;
    int i1;
    if (c != null)
    {
      localObject = c.m();
      int i4 = ((ArrayList)localObject).size();
      i1 = 0;
      while (i1 < i4)
      {
        iq localiq = ((tp)((ArrayList)localObject).get(i1)).a();
        if (localiq != null) {
          localiq.a(this);
        }
        i1 += 1;
      }
    }
    if (c != null)
    {
      localObject = c.n();
      i1 = i3;
      if (o)
      {
        i1 = i3;
        if (localObject != null)
        {
          i1 = ((ArrayList)localObject).size();
          if (i1 != 1) {
            break label267;
          }
          if (((tp)((ArrayList)localObject).get(0)).isActionViewExpanded()) {
            break label262;
          }
          i1 = 1;
        }
      }
      label156:
      if (i1 == 0) {
        break label281;
      }
      if (g == null) {
        g = new wh(this, a);
      }
      localObject = (ViewGroup)g.getParent();
      if (localObject != f)
      {
        if (localObject != null) {
          ((ViewGroup)localObject).removeView(g);
        }
        localObject = (ActionMenuView)f;
        ((ActionMenuView)localObject).addView(g, ((ActionMenuView)localObject).c());
      }
    }
    for (;;)
    {
      ((ActionMenuView)f).a(o);
      return;
      localObject = null;
      break;
      label262:
      i1 = 0;
      break label156;
      label267:
      if (i1 > 0) {}
      for (i1 = i2;; i1 = 0) {
        break;
      }
      label281:
      if ((g != null) && (g.getParent() == f)) {
        ((ViewGroup)f).removeView(g);
      }
    }
  }
  
  public boolean b()
  {
    ArrayList localArrayList = c.k();
    int i9 = localArrayList.size();
    int i1 = s;
    int i8 = r;
    int i10 = View.MeasureSpec.makeMeasureSpec(0, 0);
    ViewGroup localViewGroup = (ViewGroup)f;
    int i3 = 0;
    int i4 = 0;
    int i5 = 0;
    int i2 = 0;
    Object localObject1;
    if (i2 < i9)
    {
      localObject1 = (tp)localArrayList.get(i2);
      if (((tp)localObject1).k())
      {
        i3 += 1;
        label82:
        if ((!w) || (!((tp)localObject1).isActionViewExpanded())) {
          break label820;
        }
        i1 = 0;
      }
    }
    label304:
    label445:
    label505:
    label510:
    label549:
    label632:
    label644:
    label649:
    label797:
    label800:
    label811:
    label820:
    for (;;)
    {
      i2 += 1;
      break;
      if (((tp)localObject1).j())
      {
        i4 += 1;
        break label82;
      }
      i5 = 1;
      break label82;
      i2 = i1;
      if (o) {
        if (i5 == 0)
        {
          i2 = i1;
          if (i3 + i4 <= i1) {}
        }
        else
        {
          i2 = i1 - 1;
        }
      }
      i2 -= i3;
      localObject1 = y;
      ((SparseBooleanArray)localObject1).clear();
      i1 = 0;
      if (u)
      {
        i1 = i8 / x;
        i3 = x;
        i4 = x;
      }
      for (int i6 = i8 % i3 / i1 + i4;; i6 = 0)
      {
        int i7 = 0;
        i5 = 0;
        i3 = i1;
        i1 = i2;
        i4 = i8;
        i2 = i5;
        tp localtp;
        Object localObject2;
        if (i7 < i9)
        {
          localtp = (tp)localArrayList.get(i7);
          if (localtp.k())
          {
            localObject2 = a(localtp, z, localViewGroup);
            if (z == null) {
              z = ((View)localObject2);
            }
            if (u)
            {
              i5 = i3 - ActionMenuView.a((View)localObject2, i6, i3, i10, 0);
              i3 = ((View)localObject2).getMeasuredWidth();
              if (i2 != 0) {
                break label811;
              }
              i2 = i3;
            }
          }
        }
        for (;;)
        {
          i8 = localtp.getGroupId();
          if (i8 != 0) {
            ((SparseBooleanArray)localObject1).put(i8, true);
          }
          localtp.d(true);
          i4 -= i3;
          i3 = i1;
          i1 = i4;
          i8 = i7 + 1;
          i7 = i3;
          i3 = i5;
          i4 = i1;
          i1 = i7;
          i7 = i8;
          break;
          ((View)localObject2).measure(i10, i10);
          i5 = i3;
          break label304;
          int i11;
          boolean bool;
          int i12;
          if (localtp.j())
          {
            i11 = localtp.getGroupId();
            bool = ((SparseBooleanArray)localObject1).get(i11);
            if (((i1 > 0) || (bool)) && (i4 > 0) && ((!u) || (i3 > 0)))
            {
              i12 = 1;
              if (i12 == 0) {
                break label800;
              }
              localObject2 = a(localtp, z, localViewGroup);
              if (z == null) {
                z = ((View)localObject2);
              }
              if (!u) {
                break label632;
              }
              i5 = ActionMenuView.a((View)localObject2, i6, i3, i10, 0);
              if (i5 != 0) {
                break label797;
              }
              i12 = 0;
              i3 -= i5;
              i5 = ((View)localObject2).getMeasuredWidth();
              i8 = i4 - i5;
              i4 = i2;
              if (i2 == 0) {
                i4 = i5;
              }
              if (!u) {
                break label649;
              }
              if (i8 < 0) {
                break label644;
              }
              i2 = 1;
              i12 &= i2;
              i2 = i4;
              i5 = i3;
              i4 = i8;
              i3 = i2;
              i2 = i5;
            }
          }
          for (;;)
          {
            if ((i12 != 0) && (i11 != 0)) {
              ((SparseBooleanArray)localObject1).put(i11, true);
            }
            for (;;)
            {
              i5 = i1;
              if (i12 != 0) {
                i5 = i1 - 1;
              }
              localtp.d(i12);
              i1 = i4;
              i4 = i5;
              i5 = i2;
              i2 = i3;
              i3 = i4;
              break;
              int i13 = 0;
              break label445;
              ((View)localObject2).measure(i10, i10);
              break label510;
              i2 = 0;
              break label549;
              if (i8 + i4 > 0) {}
              for (i2 = 1;; i2 = 0)
              {
                i13 &= i2;
                i2 = i3;
                i3 = i4;
                i4 = i8;
                break;
              }
              if (bool)
              {
                ((SparseBooleanArray)localObject1).put(i11, false);
                i8 = 0;
                for (;;)
                {
                  if (i8 < i7)
                  {
                    localObject2 = (tp)localArrayList.get(i8);
                    i5 = i1;
                    if (((tp)localObject2).getGroupId() == i11)
                    {
                      i5 = i1;
                      if (((tp)localObject2).i()) {
                        i5 = i1 + 1;
                      }
                      ((tp)localObject2).d(false);
                    }
                    i8 += 1;
                    i1 = i5;
                    continue;
                    localtp.d(false);
                    i5 = i4;
                    i4 = i1;
                    i1 = i5;
                    i5 = i3;
                    i3 = i4;
                    break;
                    return true;
                  }
                }
              }
            }
            break label505;
            i5 = i2;
            i2 = i3;
            i3 = i5;
          }
        }
      }
    }
  }
  
  public void c()
  {
    if (!t) {
      s = b.getResources().getInteger(aal.aZ);
    }
    if (c != null) {
      c.b(true);
    }
  }
  
  public void c(boolean paramBoolean)
  {
    w = true;
  }
  
  public void d()
  {
    o = true;
    p = true;
  }
  
  public boolean e()
  {
    if ((o) && (!i()) && (c != null) && (f != null) && (j == null) && (!c.n().isEmpty()))
    {
      j = new wg(this, new wj(this, b, c, g));
      ((View)f).post(j);
      super.a(null);
      return true;
    }
    return false;
  }
  
  public boolean f()
  {
    if ((j != null) && (f != null))
    {
      ((View)f).removeCallbacks(j);
      j = null;
      return true;
    }
    wj localwj = h;
    if (localwj != null)
    {
      localwj.f();
      return true;
    }
    return false;
  }
  
  public boolean g()
  {
    return f() | h();
  }
  
  public boolean h()
  {
    if (i != null)
    {
      i.f();
      return true;
    }
    return false;
  }
  
  public boolean i()
  {
    return (h != null) && (h.g());
  }
  
  public boolean j()
  {
    return (j != null) || (i());
  }
}

/* Location:
 * Qualified Name:     we
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */