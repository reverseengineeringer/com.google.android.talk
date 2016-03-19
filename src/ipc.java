import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

public class ipc
  extends rf
  implements iof
{
  public final ipg B = new ipg();
  private int j;
  
  private void c(Intent paramIntent)
  {
    int i = j;
    j = (i + 1);
    if (i == 0) {
      B.a(paramIntent);
    }
  }
  
  private void j()
  {
    j -= 1;
  }
  
  public void a(av paramav)
  {
    B.u();
    super.a(paramav);
  }
  
  public void a(av paramav, Intent paramIntent, int paramInt)
  {
    c(paramIntent);
    super.a(paramav, paramIntent, paramInt);
    j();
  }
  
  public void a(wb paramwb)
  {
    B.j();
    super.a(paramwb);
  }
  
  public void b(wb paramwb)
  {
    B.k();
    super.b(paramwb);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (B.a(paramKeyEvent)) {
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public void finish()
  {
    B.i();
    super.finish();
  }
  
  public iog getLifecycle()
  {
    return B;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    B.a(paramInt1, paramInt2, paramIntent);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onAttachedToWindow()
  {
    B.d();
    super.onAttachedToWindow();
  }
  
  public void onBackPressed()
  {
    if (!B.l()) {
      super.onBackPressed();
    }
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    if (B.p()) {
      return true;
    }
    return super.onContextItemSelected(paramMenuItem);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    B.c(paramBundle);
    super.onCreate(paramBundle);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    B.o();
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (B.a(paramMenu)) {
      return true;
    }
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public void onDestroy()
  {
    B.c();
    super.onDestroy();
  }
  
  public void onDetachedFromWindow()
  {
    B.e();
    super.onDetachedFromWindow();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (B.m()) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (B.n()) {
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onLowMemory()
  {
    B.t();
    super.onLowMemory();
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    B.g();
    super.onNewIntent(paramIntent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (B.a(paramMenuItem)) {
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    B.b();
    super.onPause();
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    B.a(paramBundle);
    super.onPostCreate(paramBundle);
  }
  
  protected void onPostResume()
  {
    B.a();
    super.onPostResume();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    if (B.b(paramMenu)) {
      return true;
    }
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    B.a(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  public void onRestoreInstanceState(Bundle paramBundle)
  {
    B.b(paramBundle);
    super.onRestoreInstanceState(paramBundle);
  }
  
  public void onResume()
  {
    aen.a(C_());
    B.r();
    super.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    B.d(paramBundle);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    aen.a(C_());
    B.q();
    super.onStart();
  }
  
  public void onStop()
  {
    B.s();
    super.onStop();
  }
  
  protected void onUserLeaveHint()
  {
    B.h();
    super.onUserLeaveHint();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    B.f();
    super.onWindowFocusChanged(paramBoolean);
  }
  
  public void startActivity(Intent paramIntent)
  {
    c(paramIntent);
    super.startActivity(paramIntent);
    j();
  }
  
  public void startActivity(Intent paramIntent, Bundle paramBundle)
  {
    c(paramIntent);
    super.startActivity(paramIntent, paramBundle);
    j();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    c(paramIntent);
    super.startActivityForResult(paramIntent, paramInt);
    j();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    c(paramIntent);
    super.startActivityForResult(paramIntent, paramInt, paramBundle);
    j();
  }
  
  public void startActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    c(paramIntent);
    super.startActivityFromFragment(paramFragment, paramIntent, paramInt, paramBundle);
    j();
  }
}

/* Location:
 * Qualified Name:     ipc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */