import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window.Callback;

public class vf
{
  Toolbar a;
  int b;
  View c;
  View d;
  Drawable e;
  Drawable f;
  Drawable g;
  boolean h;
  CharSequence i;
  CharSequence j;
  CharSequence k;
  Window.Callback l;
  boolean m;
  we n;
  int o = 0;
  final vv p;
  int q = 0;
  Drawable r;
  
  public vf(Toolbar paramToolbar, boolean paramBoolean)
  {
    this(paramToolbar, paramBoolean, aal.bq, aal.Q);
  }
  
  vf(Toolbar paramToolbar, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    a = paramToolbar;
    i = paramToolbar.i();
    j = paramToolbar.j();
    boolean bool;
    int i1;
    if (i != null)
    {
      bool = true;
      h = bool;
      g = paramToolbar.l();
      if (!paramBoolean) {
        break label491;
      }
      paramToolbar = vw.a(paramToolbar.getContext(), null, sb.a, aen.v);
      Object localObject = paramToolbar.c(sb.r);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        b((CharSequence)localObject);
      }
      localObject = paramToolbar.c(sb.p);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        c((CharSequence)localObject);
      }
      localObject = paramToolbar.a(sb.n);
      if (localObject != null) {
        d((Drawable)localObject);
      }
      localObject = paramToolbar.a(sb.m);
      if ((g == null) && (localObject != null)) {
        c((Drawable)localObject);
      }
      localObject = paramToolbar.a(sb.l);
      if (localObject != null) {
        a((Drawable)localObject);
      }
      a(paramToolbar.a(sb.h, 0));
      i1 = paramToolbar.f(sb.g, 0);
      if (i1 != 0)
      {
        a(LayoutInflater.from(a.getContext()).inflate(i1, a, false));
        a(b | 0x10);
      }
      i1 = paramToolbar.e(sb.j, 0);
      if (i1 > 0)
      {
        localObject = a.getLayoutParams();
        height = i1;
        a.setLayoutParams((ViewGroup.LayoutParams)localObject);
      }
      i1 = paramToolbar.c(sb.f, -1);
      int i2 = paramToolbar.c(sb.e, -1);
      if ((i1 >= 0) || (i2 >= 0)) {
        a.a(Math.max(i1, 0), Math.max(i2, 0));
      }
      i1 = paramToolbar.f(sb.s, 0);
      if (i1 != 0) {
        a.a(a.getContext(), i1);
      }
      i1 = paramToolbar.f(sb.q, 0);
      if (i1 != 0) {
        a.b(a.getContext(), i1);
      }
      i1 = paramToolbar.f(sb.o, 0);
      if (i1 != 0) {
        a.a(i1);
      }
      paramToolbar.a();
    }
    for (p = paramToolbar.b();; p = vv.a(paramToolbar.getContext()))
    {
      e(paramInt1);
      k = a.k();
      b(p.a(paramInt2));
      a.a(new vx(this));
      return;
      bool = false;
      break;
      label491:
      i1 = 11;
      if (a.l() != null) {
        i1 = 15;
      }
      b = i1;
    }
  }
  
  public ViewGroup a()
  {
    return a;
  }
  
  public md a(int paramInt, long paramLong)
  {
    Object localObject = a;
    localObject = ks.a.k((View)localObject);
    if (paramInt == 0) {}
    for (float f1 = 1.0F;; f1 = 0.0F) {
      return ((md)localObject).a(f1).a(paramLong).a(new vy(this, paramInt));
    }
  }
  
  public void a(int paramInt)
  {
    int i1 = b ^ paramInt;
    b = paramInt;
    if (i1 != 0)
    {
      if ((i1 & 0x4) != 0)
      {
        if ((paramInt & 0x4) == 0) {
          break label115;
        }
        r();
        q();
      }
      if ((i1 & 0x3) != 0) {
        p();
      }
      if ((i1 & 0x8) != 0)
      {
        if ((paramInt & 0x8) == 0) {
          break label126;
        }
        a.b(i);
        a.c(j);
      }
    }
    for (;;)
    {
      if (((i1 & 0x10) != 0) && (d != null))
      {
        if ((paramInt & 0x10) == 0) {
          break label145;
        }
        a.addView(d);
      }
      return;
      label115:
      a.b(null);
      break;
      label126:
      a.b(null);
      a.c(null);
    }
    label145:
    a.removeView(d);
  }
  
  public void a(Drawable paramDrawable)
  {
    g = paramDrawable;
    r();
  }
  
  public void a(Menu paramMenu, ua paramua)
  {
    if (n == null)
    {
      n = new we(a.getContext());
      n.a(aal.az);
    }
    n.a(paramua);
    a.a((tl)paramMenu, n);
  }
  
  public void a(View paramView)
  {
    if ((d != null) && ((b & 0x10) != 0)) {
      a.removeView(d);
    }
    d = paramView;
    if ((paramView != null) && ((b & 0x10) != 0)) {
      a.addView(d);
    }
  }
  
  public void a(Window.Callback paramCallback)
  {
    l = paramCallback;
  }
  
  public void a(CharSequence paramCharSequence)
  {
    if (!h) {
      d(paramCharSequence);
    }
  }
  
  public void a(ua paramua, tm paramtm)
  {
    a.a(paramua, paramtm);
  }
  
  public void a(vn paramvn)
  {
    if ((c != null) && (c.getParent() == a)) {
      a.removeView(c);
    }
    c = paramvn;
    if ((paramvn != null) && (o == 2))
    {
      a.addView(c, 0);
      abc localabc = (abc)c.getLayoutParams();
      width = -2;
      height = -2;
      a = 8388691;
      paramvn.a(true);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    a.a(paramBoolean);
  }
  
  public Context b()
  {
    return a.getContext();
  }
  
  public void b(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = p.a(paramInt);; localDrawable = null)
    {
      a(localDrawable);
      return;
    }
  }
  
  void b(Drawable paramDrawable)
  {
    if (r != paramDrawable)
    {
      r = paramDrawable;
      r();
    }
  }
  
  public void b(CharSequence paramCharSequence)
  {
    h = true;
    d(paramCharSequence);
  }
  
  public void c(int paramInt)
  {
    if (paramInt == 0) {}
    for (Object localObject = null;; localObject = b().getString(paramInt))
    {
      e((CharSequence)localObject);
      return;
    }
  }
  
  void c(Drawable paramDrawable)
  {
    e = paramDrawable;
    p();
  }
  
  public void c(CharSequence paramCharSequence)
  {
    j = paramCharSequence;
    if ((b & 0x8) != 0) {
      a.c(paramCharSequence);
    }
  }
  
  public boolean c()
  {
    return a.g();
  }
  
  public void d()
  {
    a.h();
  }
  
  public void d(int paramInt)
  {
    a.setVisibility(paramInt);
  }
  
  void d(Drawable paramDrawable)
  {
    f = paramDrawable;
    p();
  }
  
  void d(CharSequence paramCharSequence)
  {
    i = paramCharSequence;
    if ((b & 0x8) != 0) {
      a.b(paramCharSequence);
    }
  }
  
  void e(int paramInt)
  {
    if (paramInt == q) {}
    do
    {
      return;
      q = paramInt;
    } while (!TextUtils.isEmpty(a.k()));
    c(q);
  }
  
  void e(CharSequence paramCharSequence)
  {
    k = paramCharSequence;
    q();
  }
  
  public boolean e()
  {
    return a.a();
  }
  
  public boolean f()
  {
    return a.b();
  }
  
  public boolean g()
  {
    return a.c();
  }
  
  public boolean h()
  {
    return a.d();
  }
  
  public boolean i()
  {
    return a.e();
  }
  
  public void j()
  {
    m = true;
  }
  
  public void k()
  {
    a.f();
  }
  
  public int l()
  {
    return b;
  }
  
  public int m()
  {
    return o;
  }
  
  public View n()
  {
    return d;
  }
  
  public Menu o()
  {
    return a.m();
  }
  
  void p()
  {
    Drawable localDrawable = null;
    if ((b & 0x2) != 0)
    {
      if ((b & 0x1) == 0) {
        break label49;
      }
      if (f == null) {
        break label41;
      }
      localDrawable = f;
    }
    for (;;)
    {
      a.a(localDrawable);
      return;
      label41:
      localDrawable = e;
      continue;
      label49:
      localDrawable = e;
    }
  }
  
  void q()
  {
    if ((b & 0x4) != 0)
    {
      if (TextUtils.isEmpty(k)) {
        a.d(q);
      }
    }
    else {
      return;
    }
    a.d(k);
  }
  
  void r()
  {
    Toolbar localToolbar;
    if ((b & 0x4) != 0)
    {
      localToolbar = a;
      if (g == null) {
        break label32;
      }
    }
    label32:
    for (Drawable localDrawable = g;; localDrawable = r)
    {
      localToolbar.b(localDrawable);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     vf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */