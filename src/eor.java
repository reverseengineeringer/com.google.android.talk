import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class eor
  implements cnz, eot
{
  private final Context a;
  private final hpz b;
  private final SharedPreferences c;
  
  public eor(Context paramContext)
  {
    a = paramContext;
    b = ((hpz)ilh.a(paramContext, hpz.class));
    bdp localbdp = (bdp)ilh.a(paramContext, bdp.class);
    c = paramContext.getSharedPreferences("smsmms", 0);
    localbdp.a(new eos(this));
    b();
  }
  
  private hqb r()
  {
    return b.a(a());
  }
  
  private hqc s()
  {
    return b.b(a());
  }
  
  public int a()
  {
    aen.b(ezm.d());
    int j = b.b("SMS", null);
    int i = j;
    if (j == -1) {
      i = b.a("SMS").b("gaia_id", "_sms_only_account").b("chat_id", "_sms_only_account").b("sms_only", true).b("is_managed_account", true).d();
    }
    return i;
  }
  
  public void a(Activity paramActivity, Bundle paramBundle)
  {
    paramBundle.putString("merged_sms", Boolean.toString(d()));
  }
  
  public void a(String paramString)
  {
    s().b("sms_send_from_key", paramString).d();
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    s().b(paramString, paramBoolean).d();
  }
  
  public void a(boolean paramBoolean)
  {
    c.edit().putBoolean("Enable merged conversations", paramBoolean).apply();
  }
  
  public boolean a(int paramInt)
  {
    return b.a(paramInt).d("sms_only");
  }
  
  void b()
  {
    if (c()) {}
    while (c.getInt("merged_version_key", 0) == 1) {
      return;
    }
    if (d())
    {
      RealTimeChatService.h();
      return;
    }
    RealTimeChatService.i();
  }
  
  public void b(boolean paramBoolean)
  {
    c.edit().putBoolean("enable_smsmms_key", paramBoolean).apply();
  }
  
  public boolean b(int paramInt)
  {
    return b.a(paramInt).d("is_sms_account");
  }
  
  public boolean b(String paramString)
  {
    int i = -1;
    switch (paramString.hashCode())
    {
    default: 
      switch (i)
      {
      default: 
        paramString = String.valueOf(paramString);
        if (paramString.length() == 0) {}
        break;
      }
      break;
    }
    for (paramString = "Unexpected key: ".concat(paramString);; paramString = new String("Unexpected key: "))
    {
      hbs.a(paramString);
      return false;
      if (!paramString.equals("group_mms_key")) {
        break;
      }
      i = 0;
      break;
      if (!paramString.equals("delete_old_messages_key")) {
        break;
      }
      i = 1;
      break;
      if (!paramString.equals("sms_delivery_report_key")) {
        break;
      }
      i = 2;
      break;
      if (!paramString.equals("enable_auto_retrieve_key")) {
        break;
      }
      i = 3;
      break;
      if (!paramString.equals("enable_auto_retrieve_in_roaming_key")) {
        break;
      }
      i = 4;
      break;
      if (!paramString.equals("use_local_apn_pref_key")) {
        break;
      }
      i = 5;
      break;
      if (!paramString.equals("dump_sms_pref_key")) {
        break;
      }
      i = 6;
      break;
      if (!paramString.equals("dump_mms_pref_key")) {
        break;
      }
      i = 7;
      break;
      if (!paramString.equals("Enable merged conversations")) {
        break;
      }
      i = 8;
      break;
      return p();
      return n();
      return m();
      return i();
      return j();
      return r().a("use_local_apn_pref_key", false);
      return k();
      return l();
      return d();
    }
  }
  
  public boolean c()
  {
    return ilh.b(a, ely.class) != null;
  }
  
  public boolean c(int paramInt)
  {
    dvi localdvi = dvd.d;
    return (dvi.a()) && (b(paramInt));
  }
  
  public void d(int paramInt)
  {
    s().b("apns_version", paramInt).d();
  }
  
  public boolean d()
  {
    return c.getBoolean("Enable merged conversations", false);
  }
  
  public int e()
  {
    return r().a("apns_version", f());
  }
  
  public int f()
  {
    return aal.a(Integer.valueOf(a.getResources().getInteger(aal.pY)), 0);
  }
  
  public boolean g()
  {
    return c.getBoolean("enable_smsmms_key", false);
  }
  
  public String h()
  {
    return r().a("sms_send_from_key", "auto");
  }
  
  public boolean i()
  {
    return r().a("enable_auto_retrieve_key", true);
  }
  
  public boolean j()
  {
    return r().a("enable_auto_retrieve_in_roaming_key", false);
  }
  
  public boolean k()
  {
    return r().a("dump_sms_pref_key", false);
  }
  
  public boolean l()
  {
    return r().a("dump_mms_pref_key", false);
  }
  
  public boolean m()
  {
    return r().a("sms_delivery_report_key", false);
  }
  
  public boolean n()
  {
    return r().a("delete_old_messages_key", false);
  }
  
  public void o()
  {
    s().b("delete_old_messages_key", true).d();
  }
  
  public boolean p()
  {
    return (ezm.d()) && (r().a("group_mms_key", true));
  }
  
  public boolean q()
  {
    if (dvd.l() == null) {
      return true;
    }
    return r().a("group_mms_key", true);
  }
}

/* Location:
 * Qualified Name:     eor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */