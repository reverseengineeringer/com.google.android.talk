import android.content.Context;
import android.content.res.Resources;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarOverlayLayout;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;

public final class sq
  extends wb
  implements tm
{
  private final Context b;
  private final tl c;
  private wc d;
  private WeakReference<View> e;
  
  public sq(sn paramsn, Context paramContext, wc paramwc)
  {
    b = paramContext;
    d = paramwc;
    c = new tl(paramContext).a();
    c.a(this);
  }
  
  public MenuInflater a()
  {
    return new sx(b);
  }
  
  public void a(int paramInt)
  {
    b(a.a.getResources().getString(paramInt));
  }
  
  public void a(View paramView)
  {
    a.e.a(paramView);
    e = new WeakReference(paramView);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    a.e.b(paramCharSequence);
  }
  
  public void a(tl paramtl)
  {
    if (d == null) {
      return;
    }
    d();
    a.e.a();
  }
  
  public void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    a.e.a(paramBoolean);
  }
  
  public boolean a(tl paramtl, MenuItem paramMenuItem)
  {
    if (d != null) {
      return d.a(this, paramMenuItem);
    }
    return false;
  }
  
  public Menu b()
  {
    return c;
  }
  
  public void b(int paramInt)
  {
    a(a.a.getResources().getString(paramInt));
  }
  
  public void b(CharSequence paramCharSequence)
  {
    a.e.a(paramCharSequence);
  }
  
  public void c()
  {
    if (a.g != this) {
      return;
    }
    if (!sn.a(a.k, a.l, false))
    {
      a.h = this;
      a.i = d;
    }
    for (;;)
    {
      d = null;
      a.f(false);
      a.e.d();
      a.d.a().sendAccessibilityEvent(32);
      a.b.b(a.n);
      a.g = null;
      return;
      d.a(this);
    }
  }
  
  public void d()
  {
    if (a.g != this) {
      return;
    }
    c.g();
    try
    {
      d.b(this, c);
      return;
    }
    finally
    {
      c.h();
    }
  }
  
  public boolean e()
  {
    c.g();
    try
    {
      boolean bool = d.a(this, c);
      return bool;
    }
    finally
    {
      c.h();
    }
  }
  
  public CharSequence f()
  {
    return a.e.b();
  }
  
  public CharSequence g()
  {
    return a.e.c();
  }
  
  public boolean h()
  {
    return a.e.f();
  }
  
  public View i()
  {
    if (e != null) {
      return (View)e.get();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     sq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */