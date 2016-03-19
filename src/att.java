import android.app.Activity;
import java.util.HashSet;

public final class att
  extends av
{
  private final atf a;
  private final atn b = new atu(this);
  private final HashSet<att> c = new HashSet();
  private att d;
  private ahw e;
  private av f;
  
  public att()
  {
    this(new atf());
  }
  
  private att(atf paramatf)
  {
    a = paramatf;
  }
  
  private void a(ba paramba)
  {
    d();
    d = atr.a.a(paramba.C_(), null);
    if (d != this) {
      d.c.add(this);
    }
  }
  
  private void d()
  {
    if (d != null)
    {
      d.c.remove(this);
      d = null;
    }
  }
  
  atf a()
  {
    return a;
  }
  
  public void a(ahw paramahw)
  {
    e = paramahw;
  }
  
  void a(av paramav)
  {
    f = paramav;
    if ((paramav != null) && (paramav.getActivity() != null)) {
      a(paramav.getActivity());
    }
  }
  
  public ahw b()
  {
    return e;
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
      a(getActivity());
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
    f = null;
    d();
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    if (e != null) {
      e.a();
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
  
  public String toString()
  {
    String str = String.valueOf(super.toString());
    Object localObject = getParentFragment();
    if (localObject != null) {}
    for (;;)
    {
      localObject = String.valueOf(localObject);
      return String.valueOf(str).length() + 9 + String.valueOf(localObject).length() + str + "{parent=" + (String)localObject + "}";
      localObject = f;
    }
  }
}

/* Location:
 * Qualified Name:     att
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */