import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class btp
  extends img
  implements bmv
{
  private hsc a;
  private final hsb b = new btq(this);
  
  public boolean a()
  {
    ((bpq)binder.a(bpq.class)).i();
    if (aal.a(dvd.e(((hpu)binder.a(hpu.class)).a()), bhh.a))
    {
      aal.a(dvd.e(((hpu)binder.a(hpu.class)).a()), 1940);
      Intent localIntent = ((crv)binder.a(crv.class)).a(getActivity());
      a.a(aal.jV, localIntent);
    }
    return false;
  }
  
  public boolean b()
  {
    return true;
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((hsc)binder.a(hsc.class)).a(aal.jV, b);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     btp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */