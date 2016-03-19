import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

public class ipf
  extends ba
  implements iof
{
  private int j;
  public final ipg m = new ipg();
  
  private void a(Intent paramIntent)
  {
    int i = j;
    j = (i + 1);
    if (i == 0) {
      m.a(paramIntent);
    }
  }
  
  private void g()
  {
    j -= 1;
  }
  
  public void a(av paramav)
  {
    m.u();
    super.a(paramav);
  }
  
  public void a(av paramav, Intent paramIntent, int paramInt)
  {
    a(paramIntent);
    super.a(paramav, paramIntent, paramInt);
    g();
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (m.a(paramKeyEvent)) {
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public void finish()
  {
    m.i();
    super.finish();
  }
  
  public iog getLifecycle()
  {
    return m;
  }
  
  public void onActionModeFinished(ActionMode paramActionMode)
  {
    m.k();
    super.onActionModeFinished(paramActionMode);
  }
  
  public void onActionModeStarted(ActionMode paramActionMode)
  {
    m.j();
    super.onActionModeStarted(paramActionMode);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    m.a(paramInt1, paramInt2, paramIntent);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onAttachedToWindow()
  {
    m.d();
    super.onAttachedToWindow();
  }
  
  public void onBackPressed()
  {
    if (!m.l()) {
      super.onBackPressed();
    }
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    if (m.p()) {
      return true;
    }
    return super.onContextItemSelected(paramMenuItem);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    m.c(paramBundle);
    super.onCreate(paramBundle);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    m.o();
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (m.a(paramMenu)) {
      return true;
    }
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public void onDestroy()
  {
    m.c();
    super.onDestroy();
  }
  
  public void onDetachedFromWindow()
  {
    m.e();
    super.onDetachedFromWindow();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (m.m()) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (m.n()) {
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onLowMemory()
  {
    m.t();
    super.onLowMemory();
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    m.g();
    super.onNewIntent(paramIntent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (m.a(paramMenuItem)) {
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    m.b();
    super.onPause();
  }
  
  public void onPostCreate(Bundle paramBundle)
  {
    m.a(paramBundle);
    super.onPostCreate(paramBundle);
  }
  
  public void onPostResume()
  {
    m.a();
    super.onPostResume();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    if (m.b(paramMenu)) {
      return true;
    }
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    m.a(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    m.b(paramBundle);
    super.onRestoreInstanceState(paramBundle);
  }
  
  public void onResume()
  {
    aen.a(C_());
    m.r();
    super.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    m.d(paramBundle);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    aen.a(C_());
    m.q();
    super.onStart();
  }
  
  public void onStop()
  {
    m.s();
    super.onStop();
  }
  
  public void onUserLeaveHint()
  {
    m.h();
    super.onUserLeaveHint();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    m.f();
    super.onWindowFocusChanged(paramBoolean);
  }
  
  public void startActivity(Intent paramIntent)
  {
    a(paramIntent);
    super.startActivity(paramIntent);
    g();
  }
  
  public void startActivity(Intent paramIntent, Bundle paramBundle)
  {
    a(paramIntent);
    super.startActivity(paramIntent, paramBundle);
    g();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    a(paramIntent);
    super.startActivityForResult(paramIntent, paramInt);
    g();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    a(paramIntent);
    super.startActivityForResult(paramIntent, paramInt, paramBundle);
    g();
  }
  
  public void startActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    a(paramIntent);
    super.startActivityFromFragment(paramFragment, paramIntent, paramInt, paramBundle);
    g();
  }
}

/* Location:
 * Qualified Name:     ipf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */