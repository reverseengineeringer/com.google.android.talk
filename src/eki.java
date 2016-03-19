import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.libraries.social.settings.PreferenceCategory;

public final class eki
  extends img
  implements ija
{
  bfd a;
  private hpu b;
  
  public eki()
  {
    new iiz(this, lifecycle);
  }
  
  public void a()
  {
    PreferenceCategory localPreferenceCategory = new iji(context).a(StressMode.eO);
    iip localiip = new iip(context, b.a(), "improve_hangouts_key");
    localiip.g(StressMode.eQ);
    localiip.h(StressMode.eP);
    localiip.b(Boolean.valueOf(((ekh)binder.a(ekh.class)).a(b.a())));
    localiip.a(new ekj(this));
    localPreferenceCategory.c(localiip);
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    b = ((hpu)binder.a(hpu.class));
    a = dvd.e(b.a());
  }
}

/* Location:
 * Qualified Name:     eki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */