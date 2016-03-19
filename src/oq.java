import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.widget.DrawerLayout;
import android.view.MenuItem;
import android.view.View;

public class oq
{
  public final qi a;
  public final DrawerLayout b;
  public qk c;
  public Drawable d;
  public boolean e = true;
  public boolean f;
  public final int g;
  public final int h;
  public boolean i = false;
  
  public oq(Activity paramActivity, DrawerLayout paramDrawerLayout, int paramInt1, int paramInt2)
  {
    this(paramActivity, paramDrawerLayout, paramInt1, paramInt2, (byte)0);
  }
  
  public <T extends Drawable,  extends qk> oq(DrawerLayout paramDrawerLayout, int paramInt, byte paramByte)
  {
    if ((paramDrawerLayout instanceof qj)) {
      a = ((qj)paramDrawerLayout).b();
    }
    for (;;)
    {
      b = paramInt;
      g = paramByte;
      int j;
      h = j;
      c = new se(paramDrawerLayout, a.b());
      d = d();
      return;
      if (Build.VERSION.SDK_INT >= 18) {
        a = new qn(paramDrawerLayout);
      } else if (Build.VERSION.SDK_INT >= 11) {
        a = new qm(paramDrawerLayout);
      } else {
        a = new ql(paramDrawerLayout);
      }
    }
  }
  
  public void a()
  {
    Drawable localDrawable;
    if (b.e())
    {
      c.a(1.0F);
      if (e)
      {
        localDrawable = (Drawable)c;
        if (!b.e()) {
          break label70;
        }
      }
    }
    label70:
    for (int j = h;; j = g)
    {
      a(localDrawable, j);
      return;
      c.a(0.0F);
      break;
    }
  }
  
  public void a(int paramInt) {}
  
  public void a(Drawable paramDrawable, int paramInt)
  {
    if ((!i) && (!a.c())) {
      i = true;
    }
    a.a(paramDrawable, paramInt);
  }
  
  public void a(View paramView)
  {
    c.a(1.0F);
    if (e) {
      b(h);
    }
  }
  
  public void a(View paramView, float paramFloat)
  {
    c.a(Math.min(1.0F, Math.max(0.0F, paramFloat)));
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem != null) && (paramMenuItem.getItemId() == 16908332) && (e))
    {
      c();
      return true;
    }
    return false;
  }
  
  public void b()
  {
    if (!f) {
      d = d();
    }
    a();
  }
  
  public void b(int paramInt)
  {
    a.a(paramInt);
  }
  
  public void b(View paramView)
  {
    c.a(0.0F);
    if (e) {
      b(g);
    }
  }
  
  public void c()
  {
    if (b.f())
    {
      b.d();
      return;
    }
    b.c();
  }
  
  public Drawable d()
  {
    return a.a();
  }
}

/* Location:
 * Qualified Name:     oq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */