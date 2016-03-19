import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Vibrator;
import android.text.TextUtils;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.phone.ApnSettingsActivity;
import com.google.android.apps.hangouts.phone.SmsAccountPickerActivity;
import com.google.android.libraries.social.settings.PreferenceCategory;
import java.util.Map;

public final class elp
  extends img
  implements ija
{
  eot a;
  hpz b;
  private PreferenceCategory c;
  private hpu d;
  
  public elp()
  {
    new iiz(this, lifecycle);
  }
  
  private void a(PreferenceCategory paramPreferenceCategory, int paramInt1, int paramInt2, String paramString, ijg paramijg)
  {
    ike localike = new ike(context, (byte)0);
    paramPreferenceCategory.c(localike);
    localike.g(paramInt1);
    if (paramInt2 != 0) {
      localike.h(paramInt2);
    }
    localike.a(a.b(paramString));
    if (paramijg != null)
    {
      localike.a(paramijg);
      return;
    }
    localike.a(new elv(this, paramString));
  }
  
  private void a(ijo paramijo, boolean paramBoolean)
  {
    int i = paramijo.a() - 1;
    if (i >= 0)
    {
      ijc localijc = paramijo.a(i);
      if ((localijc instanceof ijo)) {
        a((ijo)localijc, paramBoolean);
      }
      for (;;)
      {
        i -= 1;
        break;
        localijc.d(paramBoolean);
      }
    }
  }
  
  private boolean c()
  {
    if (!emy.a().v()) {}
    for (;;)
    {
      return false;
      PackageManager localPackageManager = getActivity().getPackageManager();
      try
      {
        localPackageManager.getPackageInfo("com.android.cellbroadcastreceiver", 0);
        if (localPackageManager.getApplicationEnabledSetting("com.android.cellbroadcastreceiver") != 2) {
          return true;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    }
    return false;
  }
  
  public void a()
  {
    int i = d.a();
    Object localObject1 = new iji(context);
    c = ((iji)localObject1).a(StressMode.jW);
    Object localObject2 = ((iji)localObject1).a(StressMode.jX);
    Object localObject3 = new ejs(context);
    ((PreferenceCategory)localObject2).c((ijc)localObject3);
    String str = String.valueOf("sms_notification_sound_key");
    ((ejs)localObject3).c(String.valueOf(str).length() + 12 + i + "." + str);
    ((ejs)localObject3).g(StressMode.jx);
    ((ejs)localObject3).b(2);
    ((ejs)localObject3).x();
    ((ejs)localObject3).a(new els(this, i));
    ((ejs)localObject3).a(((ekq)ilh.a(context, ekq.class)).a(d.a(), eku.a));
    if (((Vibrator)getActivity().getSystemService("vibrator")).hasVibrator())
    {
      localObject3 = new iip(context, d.a(), "sms_notification_vibrate_bool_key");
      ((PreferenceCategory)localObject2).c((ijc)localObject3);
      ((iip)localObject3).g(StressMode.jy);
      ((iip)localObject3).a(d.c().a("sms_notification_vibrate_bool_key", true));
    }
    localObject1 = ((iji)localObject1).a(StressMode.jV);
    if (((emy.a().t()) && (ezm.e())) || (dvd.k() != null)) {
      a((PreferenceCategory)localObject1, StressMode.hB, StressMode.hA, "group_mms_key", null);
    }
    a((PreferenceCategory)localObject1, StressMode.aO, StressMode.aN, "delete_old_messages_key", null);
    if (emy.a().r()) {
      a((PreferenceCategory)localObject1, StressMode.ju, StressMode.jt, "sms_delivery_report_key", null);
    }
    a((PreferenceCategory)localObject1, StressMode.bQ, StressMode.bP, "enable_auto_retrieve_key", null);
    a((PreferenceCategory)localObject1, StressMode.bO, StressMode.bN, "enable_auto_retrieve_in_roaming_key", null);
    if (c())
    {
      localObject2 = new ijc(context);
      ((ijc)localObject2).g(StressMode.jQ);
      ((ijc)localObject2).a(new elt(this));
      ((PreferenceCategory)localObject1).c((ijc)localObject2);
    }
    if (!enn.b(context))
    {
      localObject2 = new ijc(context);
      ((ijc)localObject2).g(StressMode.js);
      ((ijc)localObject2).h(StressMode.jr);
      ((ijc)localObject2).a(new Intent(aal.oJ, ApnSettingsActivity.class));
      ((PreferenceCategory)localObject1).c((ijc)localObject2);
    }
    if (ezc.a())
    {
      if (enn.c(context)) {
        a((PreferenceCategory)localObject1, StressMode.sv, StressMode.su, "use_local_apn_pref_key", new elu(this));
      }
      a((PreferenceCategory)localObject1, StressMode.bH, StressMode.bG, "dump_sms_pref_key", null);
      a((PreferenceCategory)localObject1, StressMode.bF, StressMode.bE, "dump_mms_pref_key", null);
    }
    b();
  }
  
  void b()
  {
    Object localObject1 = dvd.d;
    boolean bool2 = dvi.a();
    c.c();
    Object localObject3;
    Object localObject2;
    Object localObject4;
    String str1;
    int i;
    label209:
    String str2;
    String str3;
    int j;
    label255:
    elw localelw;
    label370:
    boolean bool3;
    boolean bool1;
    if (Build.VERSION.SDK_INT < 19)
    {
      localObject3 = new ike(context, (byte)0);
      ((ike)localObject3).a(bool2);
      ((ike)localObject3).g(StressMode.bU);
      ((ike)localObject3).h(StressMode.bT);
      ((ike)localObject3).a(new elq(this));
      c.c((ijc)localObject3);
      localObject1 = dvd.m();
      if ((localObject1 != null) && (dvd.e().length > 1))
      {
        localObject2 = new ijc(context);
        ((ijc)localObject2).g(StressMode.jq);
        ((ijc)localObject2).b(((bfd)localObject1).a());
        ((ijc)localObject2).a(new Intent(aal.oJ, SmsAccountPickerActivity.class));
        c.c((ijc)localObject2);
      }
      localObject4 = dvd.l();
      if ((localObject4 == null) || (!((bfd)localObject4).K())) {
        break label953;
      }
      localObject1 = ezm.f();
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        break label940;
      }
      str1 = ezm.k((String)localObject1);
      localObject1 = ezm.p((String)localObject1);
      i = 1;
      if ((localObject4 == null) || (!((bfd)localObject4).x())) {
        break label975;
      }
      str2 = ((bfd)localObject4).H();
      str3 = ((bfd)localObject4).v();
      if ((str2 == null) || (str3 == null)) {
        break label964;
      }
      localObject2 = ezm.p(str3);
      j = 1;
      if ((i == 0) || (j == 0)) {
        break label1135;
      }
      localelw = new elw(context);
      localelw.g(StressMode.jH);
      localelw.a(a.h());
      String str4 = localelw.h();
      if ((str4 == null) || ((!str4.equals(str2)) && (!str4.equals(str1))))
      {
        str3 = ezm.k(str3);
        if ((str4 == null) || (!str4.equals(str3))) {
          break label989;
        }
        localelw.a(str2);
        a.a(str2);
      }
      bool3 = ((bfd)localObject4).R();
      localObject4 = new hq();
      if (TextUtils.isEmpty(str2)) {
        break label1012;
      }
      bool1 = true;
      label396:
      aen.b(bool1, "A null/empty GV phone number is unexpected here");
      if (!a.d()) {
        break label1017;
      }
      str3 = getString(StressMode.jB);
      label424:
      ((Map)localObject4).put("auto", str3);
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        break label1029;
      }
      ((Map)localObject4).put(str1, getString(StressMode.jG, new Object[] { localObject1 }));
      label471:
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        break label1056;
      }
      if (!bool3) {
        break label1049;
      }
      i = StressMode.jJ;
      label488:
      ((Map)localObject4).put(str2, getString(i, new Object[] { localObject2 }));
      bool1 = a.d();
      if (!bool1) {
        break label1090;
      }
      i = StressMode.jC;
      label530:
      str3 = getString(i);
      if (!bool3) {
        break label1097;
      }
      i = StressMode.jI;
      label546:
      localelw.b(new String[] { str3, getString(i), getString(StressMode.jF) });
      if (!bool1) {
        break label1104;
      }
      i = StressMode.jB;
      label586:
      str3 = getString(i);
      if (localObject2 == null) {
        break label1111;
      }
      label598:
      if (localObject1 == null) {
        break label1123;
      }
      label603:
      localelw.a(new String[] { str3, localObject2, localObject1 });
      localelw.c(new String[] { "auto", str2, str1 });
      localelw.b((CharSequence)((Map)localObject4).get(a.h()));
      localelw.a(new elr(this, localelw, (Map)localObject4));
    }
    label940:
    label953:
    label964:
    label975:
    label989:
    label1012:
    label1017:
    label1029:
    label1049:
    label1056:
    label1090:
    label1097:
    label1104:
    label1111:
    label1123:
    label1135:
    for (localObject1 = localelw;; localObject1 = null)
    {
      if (localObject1 != null) {
        c.c((ijc)localObject1);
      }
      localObject1 = new ijc(context);
      ((ijc)localObject1).g(StressMode.H);
      ((ijc)localObject1).a(aal.d(d.a()));
      c.c((ijc)localObject1);
      a(((ika)ilh.a(context, ika.class)).b(), bool2);
      ((ijc)localObject3).d(ezm.d());
      return;
      localObject3 = new ijc(context);
      if (bool2)
      {
        if (Build.VERSION.SDK_INT >= 23) {
          localObject1 = new Intent("android.provider.Telephony.ACTION_CHANGE_DEFAULT");
        }
        for (;;)
        {
          ((ijc)localObject3).g(StressMode.jU);
          ((ijc)localObject3).h(StressMode.jT);
          ((ijc)localObject3).a((Intent)localObject1);
          break;
          localObject1 = new Intent("android.settings.WIRELESS_SETTINGS");
          ((Intent)localObject1).setPackage("com.android.settings");
        }
      }
      localObject1 = new Intent("android.provider.Telephony.ACTION_CHANGE_DEFAULT");
      ((Intent)localObject1).setPackage("com.android.settings");
      ((Intent)localObject1).putExtra("package", "com.google.android.talk");
      ((ijc)localObject3).g(StressMode.jS);
      ((ijc)localObject3).h(StressMode.jR);
      ((ijc)localObject3).a((Intent)localObject1);
      break;
      localObject1 = null;
      str1 = "unknown_sim_number";
      i = 1;
      break label209;
      localObject1 = null;
      str1 = null;
      i = 0;
      break label209;
      localObject2 = null;
      str2 = null;
      j = 0;
      break label255;
      localObject2 = null;
      str3 = null;
      str2 = null;
      j = 0;
      break label255;
      localelw.a("auto");
      a.a("auto");
      break label370;
      bool1 = false;
      break label396;
      str3 = getString(StressMode.jz);
      break label424;
      ((Map)localObject4).put(str1, getString(StressMode.jF));
      break label471;
      i = StressMode.jE;
      break label488;
      if (bool3) {}
      for (i = StressMode.jI;; i = StressMode.jD)
      {
        ((Map)localObject4).put(str2, getString(i));
        break;
      }
      i = StressMode.jA;
      break label530;
      i = StressMode.jD;
      break label546;
      i = StressMode.jz;
      break label586;
      localObject2 = getString(StressMode.jK);
      break label598;
      localObject1 = getString(StressMode.jK);
      break label603;
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    d = ((hpu)binder.a(hpu.class));
    b = ((hpz)binder.a(hpz.class));
    a = ((eot)binder.a(eot.class));
  }
  
  public void onResume()
  {
    super.onResume();
    b();
  }
}

/* Location:
 * Qualified Name:     elp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */