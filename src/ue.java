import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public final class ue
  extends tl
  implements SubMenu
{
  private tl d;
  private tp e;
  
  public ue(Context paramContext, tl paramtl, tp paramtp)
  {
    super(paramContext);
    d = paramtl;
    e = paramtp;
  }
  
  public void a(tm paramtm)
  {
    d.a(paramtm);
  }
  
  boolean a(tl paramtl, MenuItem paramMenuItem)
  {
    return (super.a(paramtl, paramMenuItem)) || (d.a(paramtl, paramMenuItem));
  }
  
  public boolean a(tp paramtp)
  {
    return d.a(paramtp);
  }
  
  public String b()
  {
    if (e != null) {}
    for (int i = e.getItemId(); i == 0; i = 0) {
      return null;
    }
    return super.b() + ":" + i;
  }
  
  public boolean b(tp paramtp)
  {
    return d.b(paramtp);
  }
  
  public boolean c()
  {
    return d.c();
  }
  
  public boolean d()
  {
    return d.d();
  }
  
  public MenuItem getItem()
  {
    return e;
  }
  
  public tl r()
  {
    return d;
  }
  
  public SubMenu setHeaderIcon(int paramInt)
  {
    super.a(ey.a(e(), paramInt));
    return this;
  }
  
  public SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    super.a(paramDrawable);
    return this;
  }
  
  public SubMenu setHeaderTitle(int paramInt)
  {
    super.a(e().getResources().getString(paramInt));
    return this;
  }
  
  public SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    super.a(paramCharSequence);
    return this;
  }
  
  public SubMenu setHeaderView(View paramView)
  {
    super.a(paramView);
    return this;
  }
  
  public SubMenu setIcon(int paramInt)
  {
    e.setIcon(paramInt);
    return this;
  }
  
  public SubMenu setIcon(Drawable paramDrawable)
  {
    e.setIcon(paramDrawable);
    return this;
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    d.setQwertyMode(paramBoolean);
  }
  
  public Menu u()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     ue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */