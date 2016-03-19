import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.text.TextUtils;
import java.util.concurrent.CopyOnWriteArrayList;

public final class eut
{
  public static CopyOnWriteArrayList<euw> a = new CopyOnWriteArrayList();
  private final Context b;
  
  private eut(Context paramContext)
  {
    b = paramContext.getApplicationContext();
  }
  
  public static eut a(Context paramContext)
  {
    return new eut(paramContext);
  }
  
  private void a(String paramString1, String paramString2)
  {
    String str = String.valueOf(ezi.b(paramString2));
    ezi.c("Babel_telephony", String.valueOf(paramString1).length() + 47 + String.valueOf(str).length() + "TelePreferences.updatePrefValue, key: " + paramString1 + ", value: " + str, new Object[0]);
    if (TextUtils.isEmpty(paramString2)) {
      m().edit().remove(paramString1).apply();
    }
    for (;;)
    {
      c(paramString1);
      return;
      m().edit().putString(paramString1, paramString2).apply();
    }
  }
  
  public static int[] a()
  {
    hbs.a();
    return dvd.d();
  }
  
  private void c(String paramString)
  {
    new Handler(b.getMainLooper()).post(new euu(this, paramString));
  }
  
  private SharedPreferences m()
  {
    return b.getSharedPreferences("telephony_preference", 0);
  }
  
  public void a(int paramInt)
  {
    hbs.a();
    a("account_name_v2", dvd.a(b, paramInt));
  }
  
  public void a(int paramInt, String paramString)
  {
    ((hpz)ilh.a(b, hpz.class)).b(paramInt).b("incoming_wifi_call_invites", paramString).d();
  }
  
  public void a(long paramLong)
  {
    int i = f();
    if (i == -1)
    {
      ezi.c("Babel_telephony", "TelePreferences.setLastEmergencyDialedTimeFromDarkNumber, account not found", new Object[0]);
      return;
    }
    ((hpz)ilh.a(b, hpz.class)).b(i).b("last_emergency_dialed_time_from_dark_number_in_milliseconds", paramLong).d();
  }
  
  public void a(euv parameuv)
  {
    SharedPreferences.Editor localEditor = m().edit();
    localEditor.putInt("last_emergency_call_network_type", a);
    localEditor.putInt("last_emergency_call_carrier_id", b);
    localEditor.putLong("last_emergency_call_timestamp_millis", c);
    localEditor.apply();
  }
  
  public void a(String paramString)
  {
    a("tycho_account_name", paramString);
  }
  
  public void a(boolean paramBoolean)
  {
    ezi.c("Babel_telephony", 54 + "TelePreferences.setWifiCallingEnabled, newValue: " + paramBoolean, new Object[0]);
    m().edit().putBoolean("wifi_calling_enabled", paramBoolean).apply();
    c("wifi_calling_enabled");
  }
  
  public int b()
  {
    bfd localbfd = dvd.a(m().getString("account_name_v2", i()), null);
    if (localbfd == null) {
      return -1;
    }
    return localbfd.g();
  }
  
  public void b(int paramInt)
  {
    hbs.a();
    a("account_name_for_incoming_calls", dvd.a(b, paramInt));
  }
  
  public void b(int paramInt, String paramString)
  {
    ((hpz)ilh.a(b, hpz.class)).b(paramInt).b("dedupe_call_log", paramString).d();
  }
  
  public void b(long paramLong)
  {
    m().edit().putLong("last_emergency_call_over_lte_millis", paramLong).apply();
    c("last_emergency_call_over_lte_millis");
  }
  
  public void b(String paramString)
  {
    a("last_seen_network_country_iso", paramString);
  }
  
  public void b(boolean paramBoolean)
  {
    ezi.c("Babel_telephony", 47 + "TelePreferences.setAskEachCall, newValue: " + paramBoolean, new Object[0]);
    m().edit().putBoolean("ask_each_call", paramBoolean).apply();
    c("ask_each_call");
  }
  
  public String c(int paramInt)
  {
    return ((hpz)ilh.a(b, hpz.class)).a(paramInt).a("incoming_wifi_call_invites", null);
  }
  
  public void c(boolean paramBoolean)
  {
    m().edit().putBoolean("request_feedback", paramBoolean).apply();
    c("request_feedback");
  }
  
  public boolean c()
  {
    boolean bool = false;
    if (!TextUtils.isEmpty(i())) {
      bool = true;
    }
    return m().getBoolean("wifi_calling_enabled", bool);
  }
  
  public String d(int paramInt)
  {
    return ((hpz)ilh.a(b, hpz.class)).a(paramInt).a("dedupe_call_log", null);
  }
  
  public boolean d()
  {
    return m().getBoolean("wifi_calling_enabled", false);
  }
  
  public boolean e()
  {
    return m().getBoolean("ask_each_call", false);
  }
  
  public int f()
  {
    bfd localbfd = dvd.a(i(), null);
    if (localbfd == null) {
      return -1;
    }
    return localbfd.g();
  }
  
  public long g()
  {
    int i = f();
    if (i == -1)
    {
      ezi.c("Babel_telephony", "TelePreferences.setLastEmergencyDialedTimeFromDarkNumber, account not found", new Object[0]);
      return 0L;
    }
    return ((hpz)ilh.a(b, hpz.class)).a(i).a("last_emergency_dialed_time_from_dark_number_in_milliseconds", 0L);
  }
  
  public int h()
  {
    hbs.a();
    bfd localbfd = dvd.a(m().getString("account_name_for_incoming_calls", null), null);
    if (localbfd == null) {
      return -1;
    }
    return localbfd.g();
  }
  
  public String i()
  {
    return m().getString("tycho_account_name", null);
  }
  
  public boolean j()
  {
    return m().getBoolean("request_feedback", true);
  }
  
  public String k()
  {
    return m().getString("last_seen_network_country_iso", null);
  }
  
  public long l()
  {
    return m().getLong("last_emergency_call_over_lte_millis", 0L);
  }
}

/* Location:
 * Qualified Name:     eut
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */