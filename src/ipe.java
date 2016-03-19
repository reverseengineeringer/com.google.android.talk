import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;

public class ipe
  extends av
  implements iof
{
  public final inz lifecycle = new inz();
  
  public iog getLifecycle()
  {
    return lifecycle;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    lifecycle.a(paramBundle);
    super.onActivityCreated(paramBundle);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    lifecycle.a(paramInt1, paramInt2, paramIntent);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onAttach(Activity paramActivity)
  {
    lifecycle.a(paramActivity);
    super.onAttach(paramActivity);
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    if (lifecycle.p()) {
      return true;
    }
    return super.onContextItemSelected(paramMenuItem);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    lifecycle.c(paramBundle);
    super.onCreate(paramBundle);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    lifecycle.o();
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    if (lifecycle.a(paramMenu)) {
      setHasOptionsMenu(true);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    lifecycle.b(paramBundle);
    return super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    lifecycle.c();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    lifecycle.a();
    super.onDestroyView();
  }
  
  public void onDetach()
  {
    lifecycle.d();
    super.onDetach();
  }
  
  public void onLowMemory()
  {
    lifecycle.t();
    super.onLowMemory();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return lifecycle.a(paramMenuItem);
  }
  
  public void onPause()
  {
    lifecycle.b();
    super.onPause();
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    if (lifecycle.b(paramMenu)) {
      setHasOptionsMenu(true);
    }
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    lifecycle.a(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  public void onResume()
  {
    aen.a(getChildFragmentManager());
    lifecycle.r();
    super.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    lifecycle.d(paramBundle);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    aen.a(getChildFragmentManager());
    lifecycle.q();
    super.onStart();
  }
  
  public void onStop()
  {
    lifecycle.s();
    super.onStop();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    lifecycle.a(paramView, paramBundle);
    super.onViewCreated(paramView, paramBundle);
  }
  
  public void setUserVisibleHint(boolean paramBoolean)
  {
    lifecycle.a(paramBoolean);
    super.setUserVisibleHint(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     ipe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */