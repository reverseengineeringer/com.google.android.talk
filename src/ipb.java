import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ipb
  extends Activity
  implements iof
{
  private int a;
  public final ino k = new ino();
  
  private void a()
  {
    a -= 1;
  }
  
  private void a(Intent paramIntent)
  {
    int i = a;
    a = (i + 1);
    if (i == 0) {
      k.a(paramIntent);
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (k.a(paramKeyEvent)) {
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  public void finish()
  {
    k.i();
    super.finish();
  }
  
  public iog getLifecycle()
  {
    return k;
  }
  
  public void onActionModeFinished(ActionMode paramActionMode)
  {
    k.k();
    super.onActionModeFinished(paramActionMode);
  }
  
  public void onActionModeStarted(ActionMode paramActionMode)
  {
    k.j();
    super.onActionModeStarted(paramActionMode);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    k.a(paramInt1, paramInt2, paramIntent);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onAttachedToWindow()
  {
    k.d();
    super.onAttachedToWindow();
  }
  
  public void onBackPressed()
  {
    if (!k.l()) {
      super.onBackPressed();
    }
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    if (k.p()) {
      return true;
    }
    return super.onContextItemSelected(paramMenuItem);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    k.c(paramBundle);
    super.onCreate(paramBundle);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    k.o();
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (k.a(paramMenu)) {
      return true;
    }
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public void onDestroy()
  {
    k.c();
    super.onDestroy();
  }
  
  public void onDetachedFromWindow()
  {
    k.e();
    super.onDetachedFromWindow();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (k.m()) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (k.n()) {
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onLowMemory()
  {
    k.t();
    super.onLowMemory();
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    k.g();
    super.onNewIntent(paramIntent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (k.a(paramMenuItem)) {
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    k.b();
    super.onPause();
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    k.a(paramBundle);
    super.onPostCreate(paramBundle);
  }
  
  protected void onPostResume()
  {
    k.a();
    super.onPostResume();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    if (k.b(paramMenu)) {
      return true;
    }
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    k.a(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    k.b(paramBundle);
    super.onRestoreInstanceState(paramBundle);
  }
  
  public void onResume()
  {
    k.r();
    super.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    k.d(paramBundle);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    FragmentManager localFragmentManager;
    if (Build.VERSION.SDK_INT >= 11)
    {
      localFragmentManager = getFragmentManager();
      if (aal.vf != null) {}
    }
    try
    {
      aal.vf = localFragmentManager.getClass().getMethod("noteStateNotSaved", new Class[0]);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      try
      {
        for (;;)
        {
          ((Method)aen.a(aal.vf)).invoke(localFragmentManager, new Object[0]);
          k.q();
          super.onStart();
          return;
          localNoSuchMethodException = localNoSuchMethodException;
          aal.u();
        }
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        for (;;)
        {
          aal.u();
        }
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        for (;;)
        {
          aal.u();
        }
      }
    }
  }
  
  public void onStop()
  {
    k.s();
    super.onStop();
  }
  
  protected void onUserLeaveHint()
  {
    k.h();
    super.onUserLeaveHint();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    k.f();
    super.onWindowFocusChanged(paramBoolean);
  }
  
  public void startActivity(Intent paramIntent)
  {
    a(paramIntent);
    super.startActivity(paramIntent);
    a();
  }
  
  public void startActivity(Intent paramIntent, Bundle paramBundle)
  {
    a(paramIntent);
    super.startActivity(paramIntent, paramBundle);
    a();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    a(paramIntent);
    super.startActivityForResult(paramIntent, paramInt);
    a();
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    a(paramIntent);
    super.startActivityForResult(paramIntent, paramInt, paramBundle);
    a();
  }
  
  public void startActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    a(paramIntent);
    super.startActivityFromFragment(paramFragment, paramIntent, paramInt);
    a();
  }
  
  public void startActivityFromFragment(Fragment paramFragment, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    a(paramIntent);
    super.startActivityFromFragment(paramFragment, paramIntent, paramInt, paramBundle);
    a();
  }
}

/* Location:
 * Qualified Name:     ipb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */