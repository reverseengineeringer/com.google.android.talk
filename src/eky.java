import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.libraries.social.settings.PreferenceScreen;

public final class eky
  extends img
  implements ija
{
  hpu a;
  
  public eky()
  {
    new iiz(this, lifecycle);
  }
  
  public void a()
  {
    PreferenceScreen localPreferenceScreen = ((ika)binder.a(ika.class)).b();
    Object localObject1 = getActivity().getIntent();
    String str = ((Intent)localObject1).getStringExtra("notifications_key");
    if (str != null)
    {
      localObject2 = new iip(context, a.a(), str);
      ((iip)localObject2).g(StressMode.jw);
      ((iip)localObject2).b(Boolean.valueOf(a.c().a(str, true)));
      ((iip)localObject2).c(str);
      localPreferenceScreen.c((ijc)localObject2);
    }
    Object localObject2 = ((Intent)localObject1).getStringExtra("sound_key");
    ejs localejs = new ejs(context);
    localejs.g(StressMode.ai);
    int i = ((Intent)localObject1).getIntExtra("sound_type", 0);
    localejs.b(i);
    localejs.a(new ekz(this, localejs, i, (String)localObject2));
    if (i == 1) {}
    for (i = aal.hL;; i = aal.hM)
    {
      int j = a.a();
      localejs.c(String.valueOf(localObject2).length() + 12 + j + "." + (String)localObject2);
      localejs.a(a.c().a((String)localObject2, ezc.c(i).toString()));
      localPreferenceScreen.c(localejs);
      localejs.e(str);
      localObject1 = ((Intent)localObject1).getStringExtra("vibrate_key");
      localObject2 = new iip(context, a.a(), (String)localObject1);
      ((iip)localObject2).g(StressMode.jy);
      ((iip)localObject2).b(Boolean.valueOf(a.c().a((String)localObject1, true)));
      localPreferenceScreen.c((ijc)localObject2);
      ((iip)localObject2).e(str);
      return;
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((hpu)binder.a(hpu.class));
  }
}

/* Location:
 * Qualified Name:     eky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */