import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ijb
  extends ijj
  implements iof
{
  public final inz c = new inz();
  
  public iog getLifecycle()
  {
    return c;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    c.a(paramBundle);
    super.onActivityCreated(paramBundle);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    c.a(paramInt1, paramInt2, paramIntent);
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onAttach(Activity paramActivity)
  {
    c.a(paramActivity);
    super.onAttach(paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    c.c(paramBundle);
    super.onCreate(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    c.b(paramBundle);
    return super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    c.c();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    c.a();
    super.onDestroyView();
  }
  
  public void onLowMemory()
  {
    c.t();
    super.onLowMemory();
  }
  
  public void onPause()
  {
    c.b();
    super.onPause();
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    c.a(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  public void onResume()
  {
    c.r();
    super.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    c.d(paramBundle);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    c.q();
    super.onStart();
  }
  
  public void onStop()
  {
    c.s();
    super.onStop();
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    c.a(paramView, paramBundle);
    super.onViewCreated(paramView, paramBundle);
  }
  
  public void setUserVisibleHint(boolean paramBoolean)
  {
    c.a(paramBoolean);
    super.setUserVisibleHint(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     ijb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */