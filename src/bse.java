import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;

public class bse
  extends img
  implements bmv
{
  hsc a;
  private final hsb b = new bsf(this);
  private final hsb c = new bsg(this);
  
  private void d()
  {
    String str = getResources().getString(aal.ks);
    Toast.makeText(context, str, 0).show();
  }
  
  public boolean a()
  {
    ((bpq)binder.a(bpq.class)).i();
    if (!aal.a(dvd.e(((hpu)binder.a(hpu.class)).a()), bhh.f))
    {
      Toast.makeText(context, aal.kl, 0).show();
      return false;
    }
    c();
    return false;
  }
  
  public boolean b()
  {
    return false;
  }
  
  void c()
  {
    Intent localIntent = bqt.a(context);
    if (localIntent == null)
    {
      d();
      return;
    }
    try
    {
      localIntent.putExtra("android.intent.extra.showActionIcons", false);
      a.a(aal.jW, localIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      d();
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((hsc)binder.a(hsc.class)).a(aal.jW, b);
    a = ((hsc)binder.a(hsc.class)).a(aal.jR, c);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     bse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */