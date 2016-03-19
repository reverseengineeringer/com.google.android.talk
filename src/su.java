import android.content.Context;
import android.support.v7.internal.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.lang.ref.WeakReference;

public final class su
  extends wb
  implements tm
{
  private Context a;
  private ActionBarContextView b;
  private wc c;
  private WeakReference<View> d;
  private boolean e;
  private boolean f;
  private tl g;
  
  public su(Context paramContext, ActionBarContextView paramActionBarContextView, wc paramwc, boolean paramBoolean)
  {
    a = paramContext;
    b = paramActionBarContextView;
    c = paramwc;
    g = new tl(paramActionBarContextView.getContext()).a();
    g.a(this);
    f = paramBoolean;
  }
  
  public MenuInflater a()
  {
    return new MenuInflater(b.getContext());
  }
  
  public void a(int paramInt)
  {
    b(a.getString(paramInt));
  }
  
  public void a(View paramView)
  {
    b.a(paramView);
    if (paramView != null) {}
    for (paramView = new WeakReference(paramView);; paramView = null)
    {
      d = paramView;
      return;
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    b.b(paramCharSequence);
  }
  
  public void a(tl paramtl)
  {
    d();
    b.a();
  }
  
  public void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    b.a(paramBoolean);
  }
  
  public boolean a(tl paramtl, MenuItem paramMenuItem)
  {
    return c.a(this, paramMenuItem);
  }
  
  public Menu b()
  {
    return g;
  }
  
  public void b(int paramInt)
  {
    a(a.getString(paramInt));
  }
  
  public void b(CharSequence paramCharSequence)
  {
    b.a(paramCharSequence);
  }
  
  public void c()
  {
    if (e) {
      return;
    }
    e = true;
    b.sendAccessibilityEvent(32);
    c.a(this);
  }
  
  public void d()
  {
    c.b(this, g);
  }
  
  public CharSequence f()
  {
    return b.b();
  }
  
  public CharSequence g()
  {
    return b.c();
  }
  
  public boolean h()
  {
    return b.f();
  }
  
  public View i()
  {
    if (d != null) {
      return (View)d.get();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     su
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */