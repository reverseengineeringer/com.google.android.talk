import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import android.util.Base64;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class bff
  implements hqf, iaw
{
  public static final boolean a = false;
  private final Context b;
  
  static
  {
    imx localimx = ezi.d;
  }
  
  bff(Context paramContext)
  {
    b = paramContext;
  }
  
  public static long a(Context paramContext, int paramInt, String paramString, long paramLong)
  {
    return ((hpz)ilh.a(paramContext, hpz.class)).a(paramInt).a(paramString, paramLong);
  }
  
  public static bfd a(Context paramContext, String paramString1, String paramString2)
  {
    boolean bool = "SMS".equals(paramString1);
    hpz localhpz = (hpz)ilh.a(paramContext, hpz.class);
    int i = localhpz.b(paramString1, paramString2);
    if (bool) {
      localhpz.b(i).b("gaia_id", "_sms_only_account").b("chat_id", "_sms_only_account").b("sms_only", true).b("is_managed_account", true).d();
    }
    return new bfd((hpz)ilh.a(paramContext, hpz.class), (awo)ilh.a(paramContext, awo.class), (eot)ilh.a(paramContext, eot.class), paramString1, paramString2);
  }
  
  public static czb a(Context paramContext, int paramInt)
  {
    Object localObject = ((hpz)ilh.a(paramContext, hpz.class)).a(paramInt);
    if (localObject != null)
    {
      paramContext = ((hqb)localObject).a("gaia_id", null);
      localObject = ((hqb)localObject).a("chat_id", null);
      if ((localObject != null) || (paramContext != null)) {
        return new czb(paramContext, (String)localObject);
      }
    }
    return null;
  }
  
  public static List<Integer> a(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramContext.getSharedPreferences("accounts", 0).getAll().entrySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)((Map.Entry)localIterator.next()).getKey();
      if (str.endsWith(".logged_in")) {
        localArrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, str.indexOf(".")))));
      }
    }
    aal.d(paramContext);
    return localArrayList;
  }
  
  public static Map<String, dkc> a(hqb paramhqb)
  {
    Object localObject = paramhqb.c("phone_verification");
    paramhqb = new hq();
    if ((localObject == null) || (((Set)localObject).size() == 0)) {
      return paramhqb;
    }
    localObject = ((Set)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      dkc localdkc = dkc.a((String)((Iterator)localObject).next());
      if (localdkc != null) {
        paramhqb.put(localdkc.a(), localdkc);
      }
    }
    return paramhqb;
  }
  
  private static Set<String> a(Map<String, dkc> paramMap)
  {
    if ((paramMap == null) || (paramMap.size() == 0)) {
      return null;
    }
    HashSet localHashSet = new HashSet();
    paramMap = paramMap.values().iterator();
    while (paramMap.hasNext()) {
      localHashSet.add(((dkc)paramMap.next()).toString());
    }
    return localHashSet;
  }
  
  public static void a(Context paramContext, int paramInt, String paramString)
  {
    paramContext = ((hpz)ilh.a(paramContext, hpz.class)).b(paramInt);
    paramContext.b(paramString, 1L + paramContext.a(paramString, 0L)).d();
  }
  
  public static void a(Context paramContext, bfd parambfd)
  {
    ((hpz)ilh.a(paramContext, hpz.class)).b(parambfd.g()).b("diagnostics_promo_shown", true).d();
  }
  
  public static void a(Context paramContext, bfd parambfd, long paramLong)
  {
    ((hpz)ilh.a(paramContext, hpz.class)).b(parambfd.g()).b("registration_time", paramLong).d();
  }
  
  public static void a(Context paramContext, bfd parambfd, boolean paramBoolean)
  {
    RealTimeChatService.a(parambfd.g(), 14, true);
    ((hpz)ilh.a(paramContext, hpz.class)).b(parambfd.g()).b("gv_sms_integration_shown", true).d();
    b(paramContext, parambfd, paramBoolean);
  }
  
  public static void a(Context paramContext, String paramString)
  {
    paramContext = paramContext.getSharedPreferences("accounts", 0).edit();
    paramContext.putString("referrer_url", paramString);
    paramContext.apply();
  }
  
  private static void a(Context paramContext, Integer[] paramArrayOfInteger)
  {
    if (paramArrayOfInteger.length == 0) {
      return;
    }
    new Thread(new bfg(paramArrayOfInteger, paramContext)).start();
  }
  
  public static void a(hqc paramhqc, String paramString, byte[] paramArrayOfByte)
  {
    paramhqc.b(paramString, Base64.encodeToString(paramArrayOfByte, 0));
  }
  
  public static void a(hqe paramhqe, czb paramczb, String paramString1, boolean paramBoolean1, String paramString2, String paramString3, Map<String, dkc> paramMap, bfe parambfe, String[] paramArrayOfString, boolean paramBoolean2)
  {
    if ((paramczb != null) && (a != null))
    {
      paramhqe.c("gaia_id", a);
      if ((paramczb == null) || (b == null)) {
        break label168;
      }
      paramhqe.c("chat_id", b);
    }
    for (;;)
    {
      paramhqe.c("display_name", paramString1);
      paramhqe.c("is_google_plus", paramBoolean1);
      paramhqe.c("domain_name", paramString2);
      paramhqe.c("show_chat_warning", paramBoolean2);
      if ((paramArrayOfString == null) || (paramArrayOfString.length <= 0)) {
        break label583;
      }
      paramczb = new StringBuilder();
      int i = 0;
      while (i < paramArrayOfString.length)
      {
        if (i > 0) {
          paramczb.append(",");
        }
        paramczb.append(paramArrayOfString[i]);
        i += 1;
      }
      paramhqe.i("gaia_id");
      break;
      label168:
      paramhqe.i("chat_id");
    }
    paramhqe.c("plus_page_gaia_ids", paramczb.toString());
    for (;;)
    {
      paramhqe.c("profile_photo_url", paramString3);
      if (paramMap != null) {
        paramhqe.b("phone_verification", a(paramMap));
      }
      if (parambfe != null)
      {
        paramhqe.c("allowed_for_domain", c);
        paramhqe.c("blocked_for_child", d);
        paramhqe.c("business_features_promo_shown", n);
        paramhqe.c("can_opt_into_gv_sms_integration", f);
        paramhqe.c("chat_archive_enabled", e);
        paramhqe.c("gplus_dismissed", b);
        paramhqe.c("gv_sms_integration_shown", g);
        paramhqe.c("is_business_features_eligible", l);
        paramhqe.c("is_business_features_enabled", m);
        paramhqe.c("account_age_group", a);
        paramhqe.c("is_gv_sms_integration_enabled", h);
        if (!TextUtils.isEmpty(u)) {
          paramhqe.c("default_gmail_phone_region_code", u);
        }
        if (v != null) {
          paramhqe.c("default_gmail_phone_country_code", aal.a(v, 0));
        }
        paramhqe.c("paid_dasher_user", i);
        paramhqe.c("is_history_forced", j);
        paramhqe.c("is_history_default_on", k);
        paramhqe.c("last_seen_promo_shown", o);
        paramhqe.c("phone_verification_prompt_shown", p);
        paramhqe.c("abuse_reporting_tos_shown", q);
        paramhqe.c("gv_can_use_caller_id_feature", r);
        paramhqe.c("is_photo_service_enabled", s);
        paramhqe.c("invite_notifications_enabled", t);
      }
      return;
      label583:
      paramhqe.i("plus_page_gaia_ids");
    }
  }
  
  private static Integer[] a(SharedPreferences paramSharedPreferences)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramSharedPreferences.getInt("count", 0);
    int i = 0;
    if (i < j)
    {
      String str3 = 12 + i + ".";
      String str1 = String.valueOf(str3);
      String str2 = String.valueOf("account_name");
      if (str2.length() != 0)
      {
        str1 = str1.concat(str2);
        label79:
        str2 = paramSharedPreferences.getString(str1, paramSharedPreferences.getString(String.valueOf(str3).concat("name"), ""));
        str1 = String.valueOf(str3);
        str3 = String.valueOf("gaia_id");
        if (str3.length() == 0) {
          break label193;
        }
      }
      label193:
      for (str1 = str1.concat(str3);; str1 = new String(str1))
      {
        str1 = paramSharedPreferences.getString(str1, null);
        if ((TextUtils.isEmpty(str2)) || (str2.equals(str1))) {
          localArrayList.add(Integer.valueOf(i));
        }
        i += 1;
        break;
        str1 = new String(str1);
        break label79;
      }
    }
    return (Integer[])localArrayList.toArray(new Integer[localArrayList.size()]);
  }
  
  public static hqb b(Context paramContext, int paramInt)
  {
    paramContext = (hpz)ilh.a(paramContext, hpz.class);
    if (!paramContext.c(paramInt)) {
      return null;
    }
    return paramContext.a(paramInt);
  }
  
  public static void b(Context paramContext)
  {
    paramContext.getSharedPreferences("accounts", 0).edit().putBoolean("warning_is_displayed", false).apply();
  }
  
  public static void b(Context paramContext, int paramInt, String paramString)
  {
    ((hpz)ilh.a(paramContext, hpz.class)).b(paramInt).f(paramString).d();
  }
  
  public static void b(Context paramContext, int paramInt, String paramString, long paramLong)
  {
    ((hpz)ilh.a(paramContext, hpz.class)).b(paramInt).b(paramString, paramLong).d();
  }
  
  public static void b(Context paramContext, bfd parambfd, long paramLong)
  {
    ((hpz)ilh.a(paramContext, hpz.class)).b(parambfd.g()).b("sticker_cache_time", paramLong).d();
  }
  
  public static void b(Context paramContext, bfd parambfd, boolean paramBoolean)
  {
    if (a)
    {
      String str = String.valueOf(ezi.b(parambfd.a()));
      new StringBuilder(String.valueOf(str).length() + 38).append("setGvSmsIntegration: ").append(str).append(" gvEnabled: ").append(paramBoolean);
    }
    RealTimeChatService.a(parambfd.g(), 13, paramBoolean);
    ((hpz)ilh.a(paramContext, hpz.class)).b(parambfd.g()).b("is_gv_sms_integration_enabled", paramBoolean).d();
    if (!paramBoolean) {
      ((hpz)ilh.a(paramContext, hpz.class)).b(parambfd.g()).b("can_opt_into_gv_sms_integration", true).d();
    }
  }
  
  public static boolean b(Context paramContext, bfd parambfd)
  {
    return ((hpz)ilh.a(paramContext, hpz.class)).a(parambfd.g()).a("diagnostics_promo_shown", false);
  }
  
  public static String c(Context paramContext, int paramInt)
  {
    paramContext = b(paramContext, paramInt);
    if (paramContext == null) {
      return null;
    }
    return paramContext.b("gaia_id");
  }
  
  public static void c(Context paramContext)
  {
    paramContext.getSharedPreferences("accounts", 0).edit().putBoolean("location_tos_accepted", true).apply();
  }
  
  public static void c(Context paramContext, bfd parambfd)
  {
    RealTimeChatService.a(parambfd.g(), 16, true);
    ((hpz)ilh.a(paramContext, hpz.class)).b(parambfd.g()).b("business_features_promo_shown", true).d();
  }
  
  public static void c(Context paramContext, bfd parambfd, boolean paramBoolean)
  {
    RealTimeChatService.a(parambfd.g(), 17, paramBoolean);
    ((hpz)ilh.a(paramContext, hpz.class)).b(parambfd.g()).b("is_business_features_enabled", paramBoolean).d();
  }
  
  public static byte[] c(Context paramContext, int paramInt, String paramString)
  {
    paramContext = ((hpz)ilh.a(paramContext, hpz.class)).a(paramInt).b(paramString);
    if (TextUtils.isEmpty(paramContext)) {
      return null;
    }
    return Base64.decode(paramContext, 0);
  }
  
  public static czb d(Context paramContext, int paramInt)
  {
    paramContext = b(paramContext, paramInt);
    if (paramContext == null) {
      return null;
    }
    return new czb(paramContext.b("gaia_id"), paramContext.b("chat_id"));
  }
  
  public static void d(Context paramContext, bfd parambfd)
  {
    RealTimeChatService.a(parambfd.g(), 27, true);
    ((hpz)ilh.a(paramContext, hpz.class)).b(parambfd.g()).b("phone_verification_prompt_shown", true).d();
  }
  
  public static boolean d(Context paramContext)
  {
    return paramContext.getSharedPreferences("accounts", 0).getBoolean("location_tos_accepted", false);
  }
  
  public static String e(Context paramContext)
  {
    return paramContext.getSharedPreferences("accounts", 0).getString("referrer_url", "");
  }
  
  public static void e(Context paramContext, bfd parambfd)
  {
    paramContext = (hpz)ilh.a(paramContext, hpz.class);
    Iterator localIterator = paramContext.a(new String[] { "is_sms_account" }).iterator();
    while (localIterator.hasNext())
    {
      int i = aal.a((Integer)localIterator.next(), 0);
      if (i != parambfd.g()) {
        paramContext.b(i).b("is_sms_account", false).d();
      }
    }
    paramContext.b(parambfd.g()).b("is_sms_account", true).d();
  }
  
  public static boolean e(Context paramContext, int paramInt)
  {
    paramContext = (hpz)ilh.a(paramContext, hpz.class);
    if (!paramContext.c(paramInt)) {
      return false;
    }
    paramContext = paramContext.a(paramInt);
    return (paramContext.b("effective_gaia_id") != null) && (paramContext.d("is_business_features_enabled"));
  }
  
  public static long f(Context paramContext, bfd parambfd)
  {
    return ((hpz)ilh.a(paramContext, hpz.class)).a(parambfd.g()).a("registration_time", -1L);
  }
  
  public static boolean f(Context paramContext, int paramInt)
  {
    return !((hpz)ilh.a(paramContext, hpz.class)).d(paramInt);
  }
  
  public static long g(Context paramContext, bfd parambfd)
  {
    return ((hpz)ilh.a(paramContext, hpz.class)).a(parambfd.g()).a("setting_time", -1L);
  }
  
  public static boolean g(Context paramContext, int paramInt)
  {
    return ((hpz)ilh.a(paramContext, hpz.class)).a(paramInt).d("logged_out");
  }
  
  public static void h(Context paramContext, bfd parambfd)
  {
    ((hpz)ilh.a(paramContext, hpz.class)).b(parambfd.g()).b("setting_time", -1L).d();
  }
  
  public static boolean h(Context paramContext, int paramInt)
  {
    return ((hpz)ilh.a(paramContext, hpz.class)).a(paramInt).a("contact_permission_banner_shown", false);
  }
  
  public static long i(Context paramContext, bfd parambfd)
  {
    return ((hpz)ilh.a(paramContext, hpz.class)).a(parambfd.g()).a("sticker_cache_time", -1L);
  }
  
  public static void i(Context paramContext, int paramInt)
  {
    ((hpz)ilh.a(paramContext, hpz.class)).b(paramInt).b("contact_permission_banner_shown", true).d();
  }
  
  public void a(int paramInt)
  {
    Object localObject = ((hpz)ilh.a(b, hpz.class)).a(paramInt);
    if (((hqb)localObject).d("logged_out"))
    {
      ((cyh)ilh.a(b, cyh.class)).e(paramInt);
      if (!((hqb)localObject).d("sms_only"))
      {
        ezi.c("Babel", 38 + "Account update: " + paramInt + " logged off", new Object[0]);
        bgw.b(b, paramInt);
      }
    }
    bfd localbfd;
    do
    {
      ((hpz)ilh.a(b, hpz.class)).b(paramInt).f(EsProvider.a(3)).f(EsProvider.a(1)).f(EsProvider.a(2)).f(EsProvider.a(5)).f(EsProvider.a(4)).f("last_invite_seen_timestamp").f("last_suggested_contacts_time").f("sms_last_full_sync_time_millis").f("refresh_participants_time").f("last_warm_sync_localtime").f("last_successful_sync_time").f("sms_last_sync_time_millis").f("hash_pinned").f("hash_favorites").f("hash_people_you_hangout_with").f("hash_other_people_on_hangout").f("hash_dismissed_contacts").d();
      do
      {
        return;
      } while (!((hqb)localObject).d("logged_in"));
      localbfd = dvd.e(paramInt);
    } while (!localbfd.d());
    localObject = String.valueOf(ezi.b(localbfd.a()));
    if (((String)localObject).length() != 0) {}
    for (localObject = "activateAccount: ".concat((String)localObject);; localObject = new String("activateAccount: "))
    {
      ezi.a("Babel", (String)localObject, new Object[0]);
      bgw.a(b, localbfd.g()).c();
      return;
    }
  }
  
  public void a(Context paramContext, hqe paramhqe)
  {
    int j;
    int i;
    if ("SMS".equals(paramhqe.b("account_name")))
    {
      paramContext = paramContext.getSharedPreferences("accounts", 0);
      j = paramContext.getInt("count", 0);
      i = 0;
    }
    for (;;)
    {
      if (i < j)
      {
        String str = String.valueOf("account_name");
        str = paramContext.getString(String.valueOf(str).length() + 12 + i + "." + str, null);
        if ((str != null) && (str.equals("SMS")))
        {
          str = String.valueOf("is_sms_account");
          paramhqe.c("is_sms_account", paramContext.getBoolean(String.valueOf(str).length() + 12 + i + "." + str, false));
        }
      }
      else
      {
        return;
      }
      i += 1;
    }
  }
  
  public void a(List<hqh> paramList)
  {
    int j = 0;
    Context localContext = b;
    Object localObject2 = localContext.getSharedPreferences("accounts", 0);
    Object localObject3 = new ArrayList();
    int k = ((SharedPreferences)localObject2).getInt("count", 0);
    int i = 0;
    String str1;
    Object localObject4;
    if (i < k)
    {
      str1 = 12 + i + ".";
      localObject1 = String.valueOf(str1);
      localObject4 = String.valueOf("account_name");
      if (((String)localObject4).length() != 0) {}
      for (localObject1 = ((String)localObject1).concat((String)localObject4);; localObject1 = new String((String)localObject1))
      {
        localObject1 = ((SharedPreferences)localObject2).getString((String)localObject1, ((SharedPreferences)localObject2).getString(String.valueOf(str1).concat("name"), ""));
        if ((((SharedPreferences)localObject2).getBoolean(22 + i + ".logged_off", false)) && (!"SMS".equals(localObject1))) {
          ((List)localObject3).add(Integer.valueOf(i));
        }
        i += 1;
        break;
      }
    }
    a(localContext, (Integer[])((List)localObject3).toArray(new Integer[((List)localObject3).size()]));
    if (((SharedPreferences)localObject2).contains("active")) {
      ((SharedPreferences)localObject2).edit().putInt("key.active-hangouts-account", ((SharedPreferences)localObject2).getInt("active", -1)).remove("active").apply();
    }
    Object localObject1 = ((SharedPreferences)localObject2).edit();
    localObject3 = ((SharedPreferences)localObject2).getAll();
    localObject2 = a((SharedPreferences)localObject2);
    k = localObject2.length;
    i = j;
    while (i < k)
    {
      str1 = String.valueOf(localObject2[i]);
      str1 = String.valueOf(str1).length() + 1 + str1 + ".";
      localObject4 = ((Map)localObject3).entrySet().iterator();
      while (((Iterator)localObject4).hasNext())
      {
        String str2 = (String)((Map.Entry)((Iterator)localObject4).next()).getKey();
        if (str2.startsWith(str1)) {
          ((SharedPreferences.Editor)localObject1).remove(str2);
        }
      }
      i += 1;
    }
    ((SharedPreferences.Editor)localObject1).apply();
    a(localContext, (Integer[])localObject2);
    paramList.add(new bfh(this));
    paramList.add(new bfi(this));
    paramList.add(new bfj(this));
    paramList.add(new bfk(this));
    paramList.add(new bfl(this));
    paramList.add(new bfm(this));
    paramList.add(new bfn(this));
  }
}

/* Location:
 * Qualified Name:     bff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */