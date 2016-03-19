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

public class ipd
  extends au
  implements iof
{
  public final inz ao = new inz();
  
  public iog getLifecycle()
  {
    return ao;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    ao.a(paramInt1, paramInt2, paramIntent);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onAttach(Activity paramActivity)
  {
    ao.a(paramActivity);
    super.onAttach(paramActivity);
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    if (ao.p()) {
      return true;
    }
    return super.onContextItemSelected(paramMenuItem);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    ao.c(paramBundle);
    super.onCreate(paramBundle);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    ao.o();
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    if (ao.a(paramMenu)) {
      setHasOptionsMenu(true);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ao.b(paramBundle);
    return super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    ao.c();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    ao.a();
    super.onDestroyView();
  }
  
  public void onDetach()
  {
    ao.d();
    super.onDetach();
  }
  
  public void onLowMemory()
  {
    ao.t();
    super.onLowMemory();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return ao.a(paramMenuItem);
  }
  
  public void onPause()
  {
    ao.b();
    super.onPause();
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    if (ao.b(paramMenu)) {
      setHasOptionsMenu(true);
    }
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    ao.a(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  public void onResume()
  {
    aen.a(getChildFragmentManager());
    ao.r();
    super.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    ao.d(paramBundle);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    aen.a(getChildFragmentManager());
    ao.q();
    super.onStart();
  }
  
  public void onStop()
  {
    ao.s();
    super.onStop();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    ao.a(paramView, paramBundle);
    super.onViewCreated(paramView, paramBundle);
  }
  
  public void setUserVisibleHint(boolean paramBoolean)
  {
    ao.a(paramBoolean);
    super.setUserVisibleHint(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     ipd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */