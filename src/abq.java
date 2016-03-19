import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;

public class abq
  extends ba
  implements acc
{
  private abn j;
  private abm k;
  
  public abn g()
  {
    return new abn(this);
  }
  
  public abn h()
  {
    return j;
  }
  
  public Context i()
  {
    return this;
  }
  
  public abm j()
  {
    if (k == null) {
      k = new abm(getActionBar());
    }
    return k;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    if (!j.e()) {
      super.onBackPressed();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    j = g();
    j.a(paramBundle);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return true;
  }
  
  protected void onDestroy()
  {
    j.d();
    super.onDestroy();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return (j.a(paramMenuItem)) || (super.onOptionsItemSelected(paramMenuItem));
  }
  
  protected void onPause()
  {
    j.c();
    super.onPause();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return true;
  }
  
  protected void onResume()
  {
    super.onResume();
    j.b();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    j.b(paramBundle);
  }
  
  protected void onStart()
  {
    super.onStart();
  }
  
  protected void onStop()
  {
    super.onStop();
  }
}

/* Location:
 * Qualified Name:     abq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */