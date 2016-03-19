import android.content.Intent;
import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.settings.SmsSettingsActivity;
import com.google.android.libraries.social.settings.PreferenceCategory;

public final class elk
  extends img
  implements ija
{
  haw a;
  private hpz b;
  private iji c;
  private PreferenceCategory d;
  
  public elk()
  {
    new iiz(this, lifecycle);
  }
  
  private boolean b()
  {
    if (((eot)binder.a(eot.class)).c()) {
      return false;
    }
    return (ezm.d()) || (dvd.k() != null);
  }
  
  private void c()
  {
    if ((ezm.d()) || (b()))
    {
      if (d == null) {
        d = c.a(StressMode.ch);
      }
      d.c();
      i = b.b("SMS");
      a = ((hba)ilh.a(context, hba.class)).a(i);
      if (b())
      {
        localObject = new ike(context, (byte)0);
        d.c((ijc)localObject);
        localeot = (eot)binder.a(eot.class);
        ((ike)localObject).g(StressMode.bS);
        ((ike)localObject).h(StressMode.bR);
        ((ike)localObject).a(localeot.d());
        ((ike)localObject).a(new ell(this, localeot));
      }
      if (ezm.d())
      {
        localObject = new Intent(context, SmsSettingsActivity.class);
        ((Intent)localObject).putExtra("account_id", i);
        d.c(c.a(getString(StressMode.jY), null, (Intent)localObject));
      }
    }
    while (d == null)
    {
      int i;
      Object localObject;
      eot localeot;
      return;
    }
    d.c();
  }
  
  public void a()
  {
    c = new iji(context);
    c();
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    b = ((hpz)binder.a(hpz.class));
  }
  
  public void onResume()
  {
    super.onResume();
    c();
  }
}

/* Location:
 * Qualified Name:     elk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */