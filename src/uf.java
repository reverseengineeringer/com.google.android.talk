import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public final class uf
  extends ud
  implements SubMenu
{
  public uf(Context paramContext, gk paramgk)
  {
    super(paramContext, paramgk);
  }
  
  public void clearHeader()
  {
    ((gk)d).clearHeader();
  }
  
  public MenuItem getItem()
  {
    return a(((gk)d).getItem());
  }
  
  public SubMenu setHeaderIcon(int paramInt)
  {
    ((gk)d).setHeaderIcon(paramInt);
    return this;
  }
  
  public SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    ((gk)d).setHeaderIcon(paramDrawable);
    return this;
  }
  
  public SubMenu setHeaderTitle(int paramInt)
  {
    ((gk)d).setHeaderTitle(paramInt);
    return this;
  }
  
  public SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    ((gk)d).setHeaderTitle(paramCharSequence);
    return this;
  }
  
  public SubMenu setHeaderView(View paramView)
  {
    ((gk)d).setHeaderView(paramView);
    return this;
  }
  
  public SubMenu setIcon(int paramInt)
  {
    ((gk)d).setIcon(paramInt);
    return this;
  }
  
  public SubMenu setIcon(Drawable paramDrawable)
  {
    ((gk)d).setIcon(paramDrawable);
    return this;
  }
}

/* Location:
 * Qualified Name:     uf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */