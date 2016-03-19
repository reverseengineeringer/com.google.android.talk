import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

@Deprecated
public class rf
  extends ba
  implements ep, qj, rg
{
  private rh j;
  
  public rf()
  {
    this((byte)0);
  }
  
  public rf(byte paramByte) {}
  
  public Intent A_()
  {
    return cn.a.a(this);
  }
  
  public void a(Toolbar paramToolbar)
  {
    i().a(paramToolbar);
  }
  
  public void a(eo parameo)
  {
    parameo.a(this);
  }
  
  public void a(wb paramwb) {}
  
  public boolean a_(Intent paramIntent)
  {
    return cn.a(this, paramIntent);
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    i().b(paramView, paramLayoutParams);
  }
  
  public qi b()
  {
    return i().i();
  }
  
  public void b(Intent paramIntent)
  {
    cn.b(this, paramIntent);
  }
  
  public void b(wb paramwb) {}
  
  public qe g()
  {
    return i().a();
  }
  
  public MenuInflater getMenuInflater()
  {
    return i().b();
  }
  
  public rh i()
  {
    if (j == null) {
      j = rh.a(this, getWindow(), this);
    }
    return j;
  }
  
  public void invalidateOptionsMenu()
  {
    i().g();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    i().a(paramConfiguration);
  }
  
  public void onContentChanged() {}
  
  public void onCreate(Bundle paramBundle)
  {
    i().j();
    i().c();
    super.onCreate(paramBundle);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    i().h();
  }
  
  public final boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem)) {
      return true;
    }
    qe localqe = g();
    if ((paramMenuItem.getItemId() == 16908332) && (localqe != null) && ((localqe.d() & 0x4) != 0)) {
      return z_();
    }
    return false;
  }
  
  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    return super.onMenuOpened(paramInt, paramMenu);
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    super.onPanelClosed(paramInt, paramMenu);
  }
  
  public void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    i().d();
  }
  
  public void onPostResume()
  {
    super.onPostResume();
    i().f();
  }
  
  public void onStop()
  {
    super.onStop();
    i().e();
  }
  
  protected void onTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    super.onTitleChanged(paramCharSequence, paramInt);
    i().a(paramCharSequence);
  }
  
  public void setContentView(int paramInt)
  {
    i().a(paramInt);
  }
  
  public void setContentView(View paramView)
  {
    i().a(paramView);
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    i().a(paramView, paramLayoutParams);
  }
  
  public void y_()
  {
    i().g();
  }
  
  public boolean z_()
  {
    Object localObject = A_();
    if (localObject != null)
    {
      if (a_((Intent)localObject))
      {
        localObject = eo.a(this);
        a((eo)localObject);
        ((eo)localObject).b();
      }
      for (;;)
      {
        try
        {
          aj.a(this);
          return true;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          finish();
          continue;
        }
        b(localIllegalStateException);
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     rf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */