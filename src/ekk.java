import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.settings.NotificationSettingsActivity;
import com.google.android.libraries.social.settings.PreferenceCategory;

public final class ekk
  extends img
  implements ija
{
  bfd a;
  iip b;
  private hpu c;
  
  public ekk()
  {
    new iiz(this, lifecycle);
  }
  
  public void a()
  {
    a = dvd.e(c.a());
    boolean bool1 = a.R();
    Object localObject2 = new iji(context);
    Object localObject3 = (dty)binder.a(dty.class);
    boolean bool2 = a.x();
    int i;
    Object localObject4;
    int j;
    if ((a.w()) || (bool2))
    {
      i = 1;
      if ((!((dty)localObject3).a(context, a)) || (!a.t())) {
        break label541;
      }
      localObject1 = a;
      localObject4 = (awp)ilh.b(context, awp.class);
      if ((localObject4 != null) && (((awp)localObject4).a(((bfd)localObject1).a()))) {
        break label536;
      }
      j = 1;
      label148:
      if (j == 0) {
        break label541;
      }
      j = 1;
      label154:
      if ((i != 0) || (j != 0))
      {
        localObject1 = a.v();
        if (localObject1 == null) {
          break label567;
        }
      }
    }
    label192:
    label443:
    label536:
    label541:
    label553:
    label560:
    label567:
    for (Object localObject1 = ezm.p((String)localObject1);; localObject1 = "")
    {
      int k;
      if (bool1)
      {
        k = StressMode.rU;
        localObject1 = ((iji)localObject2).b(getString(k, new Object[] { localObject1 }));
        if (j != 0)
        {
          boolean bool3 = ((dty)localObject3).b(getActivity(), a);
          localObject3 = new iip(context, c.a(), getString(StressMode.cm));
          ((iip)localObject3).g(StressMode.cn);
          ((iip)localObject3).b(Boolean.valueOf(bool3));
          ((iip)localObject3).a(new ekl(this));
          ((PreferenceCategory)localObject1).c((ijc)localObject3);
        }
        if (i != 0)
        {
          localObject3 = ijs.b(getActivity());
          if (((SharedPreferences)localObject3).contains("gv_sms")) {
            ((SharedPreferences)localObject3).edit().remove("gv_sms").commit();
          }
          b = new iip(context, c.a(), "gv_sms", Boolean.valueOf(bool2));
          b.c("gv_sms");
          b.g(StressMode.cp);
          ((PreferenceCategory)localObject1).c(b);
          b.a(new ekm(this));
          localObject3 = context;
          localObject4 = lifecycle;
          if (!bool1) {
            break label553;
          }
          i = StressMode.sb;
          localObject3 = NotificationSettingsActivity.a((Context)localObject3, (iog)localObject4, (iji)localObject2, i, null, "gv_sms_sound_key", 2, "gv_sms_vibrate_boolean_key");
          ((PreferenceCategory)localObject1).c((ijc)localObject3);
          ((ijc)localObject3).e("gv_sms");
          localObject3 = context;
          localObject4 = lifecycle;
          if (!bool1) {
            break label560;
          }
        }
      }
      for (i = StressMode.sc;; i = StressMode.cs)
      {
        localObject2 = NotificationSettingsActivity.a((Context)localObject3, (iog)localObject4, (iji)localObject2, i, null, "gv_voicemail_sound_key", 2, "gv_voicemail_vibrate_boolean_key");
        ((PreferenceCategory)localObject1).c((ijc)localObject2);
        ((ijc)localObject2).e("gv_sms");
        return;
        i = 0;
        break;
        j = 0;
        break label148;
        j = 0;
        break label154;
        k = StressMode.cq;
        break label192;
        i = StressMode.cr;
        break label443;
      }
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    c = ((hpu)binder.a(hpu.class));
  }
}

/* Location:
 * Qualified Name:     ekk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */