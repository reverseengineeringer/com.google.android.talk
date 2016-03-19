import android.app.Activity;
import android.app.Fragment;
import android.os.Build.VERSION;
import java.util.HashSet;

public final class atp
  extends Fragment
{
  private final atf a;
  private final atn b = new atq(this);
  private final HashSet<atp> c = new HashSet();
  private ahw d;
  private atp e;
  private Fragment f;
  
  public atp()
  {
    this(new atf());
  }
  
  private atp(atf paramatf)
  {
    a = paramatf;
  }
  
  private void a(Activity paramActivity)
  {
    d();
    e = atr.a.a(paramActivity.getFragmentManager(), null);
    if (e != this) {
      e.c.add(this);
    }
  }
  
  private void d()
  {
    if (e != null)
    {
      e.c.remove(this);
      e = null;
    }
  }
  
  atf a()
  {
    return a;
  }
  
  public void a(ahw paramahw)
  {
    d = paramahw;
  }
  
  void a(Fragment paramFragment)
  {
    f = paramFragment;
    if ((paramFragment != null) && (paramFragment.getActivity() != null)) {
      a(paramFragment.getActivity());
    }
  }
  
  public ahw b()
  {
    return d;
  }
  
  public atn c()
  {
    return b;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      a(paramActivity);
      return;
    }
    catch (IllegalArgumentException paramActivity) {}
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    a.c();
    d();
  }
  
  public void onDetach()
  {
    super.onDetach();
    d();
  }
  
  public void onLowMemory()
  {
    if (d != null) {
      d.a();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    a.a();
  }
  
  public void onStop()
  {
    super.onStop();
    a.b();
  }
  
  public void onTrimMemory(int paramInt)
  {
    if (d != null) {
      d.a(paramInt);
    }
  }
  
  public String toString()
  {
    String str = String.valueOf(super.toString());
    Object localObject;
    if (Build.VERSION.SDK_INT >= 17)
    {
      localObject = getParentFragment();
      if (localObject == null) {
        break label82;
      }
    }
    for (;;)
    {
      localObject = String.valueOf(localObject);
      return String.valueOf(str).length() + 9 + String.valueOf(localObject).length() + str + "{parent=" + (String)localObject + "}";
      localObject = null;
      break;
      label82:
      localObject = f;
    }
  }
}

/* Location:
 * Qualified Name:     atp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */