import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class dvd
  implements hpx, iaw
{
  static final boolean a;
  static final ConcurrentHashMap<Integer, dvg> b;
  static Boolean c;
  public static dvi d = new dvi();
  static dvf e = new dvf();
  private static final String[] f;
  private static Boolean g;
  private static dvh i;
  private static final Comparator<hqb> j = new dve();
  private final Context h;
  
  static
  {
    imx localimx = ezi.o;
    a = false;
    f = new String[] { "Init", "Pending", "Ready", "Err_net", "Err_gcm", "Err_svr", "Err_auth", "Err_profile", "Err_oobe", "Err_transient" };
    b = new ConcurrentHashMap();
    g = null;
    c = null;
    i = new dvh();
  }
  
  dvd(Context paramContext)
  {
    h = paramContext;
  }
  
  public static bfd a(Context paramContext)
  {
    hpz localhpz = (hpz)ilh.a(paramContext, hpz.class);
    eot localeot = (eot)ilh.a(paramContext, eot.class);
    Iterator localIterator = localhpz.a().iterator();
    while (localIterator.hasNext())
    {
      int k = aal.a((Integer)localIterator.next(), 0);
      paramContext = localhpz.a(k);
      if (!paramContext.a("effective_gaia_id"))
      {
        Object localObject = paramContext.b("account_name");
        paramContext = b((String)localObject, null);
        if (paramContext == null)
        {
          paramContext = String.valueOf(ezi.b((String)localObject));
          if (paramContext.length() != 0) {}
          for (paramContext = "Account has not been setup yet. Skip:".concat(paramContext);; paramContext = new String("Account has not been setup yet. Skip:"))
          {
            ezi.d("Babel", paramContext, new Object[0]);
            break;
          }
        }
        localObject = paramContext.h();
        if ((!localeot.a(k)) && (!paramContext.s())) {
          return (bfd)localObject;
        }
      }
    }
    return null;
  }
  
  public static bfd a(bfd parambfd)
  {
    awo localawo = (awo)ilh.a(aal.oJ, awo.class);
    eot localeot = (eot)ilh.a(aal.oJ, eot.class);
    bfd localbfd;
    if (parambfd != null)
    {
      int k = parambfd.g();
      localbfd = parambfd;
      if (!localawo.d(k))
      {
        if (localeot.a(k)) {
          localbfd = parambfd;
        }
      }
      else {
        return localbfd;
      }
    }
    if (dvi.a()) {}
    for (parambfd = l();; parambfd = null)
    {
      localbfd = parambfd;
      if (parambfd != null) {
        break;
      }
      return k();
    }
  }
  
  public static bfd a(czb paramczb)
  {
    a();
    d(8);
    Iterator localIterator = b.values().iterator();
    label256:
    label313:
    while (localIterator.hasNext())
    {
      Object localObject = (dvg)localIterator.next();
      bfd localbfd = ((dvg)localObject).h();
      boolean bool2 = localbfd.d();
      boolean bool3 = localbfd.e();
      boolean bool1;
      if ((bool3) && (localbfd.b().a(paramczb)))
      {
        bool1 = true;
        String str = String.valueOf(((dvg)localObject).a());
        ezi.a("Babel", String.valueOf(str).length() + 52 + "Account " + str + ", valid: " + bool2 + ", matches participantId: " + bool1, new Object[0]);
        if (!bool1)
        {
          if (!bool3) {
            break label256;
          }
          localObject = String.valueOf(localbfd.b().toString());
          str = String.valueOf(paramczb.toString());
          ezi.a("Babel", String.valueOf(localObject).length() + 44 + String.valueOf(str).length() + "account.getParticipantId(): " + (String)localObject + ", participantId:" + str, new Object[0]);
        }
      }
      for (;;)
      {
        if ((!bool2) || (!bool1)) {
          break label313;
        }
        return localbfd;
        bool1 = false;
        break;
        localObject = String.valueOf(((dvg)localObject).a());
        ezi.a("Babel", String.valueOf(localObject).length() + 37 + "Account " + (String)localObject + "does not have a participantId", new Object[0]);
      }
    }
    return null;
  }
  
  public static bfd a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {}
    do
    {
      return null;
      paramString1 = b(paramString1, paramString2);
    } while (paramString1 == null);
    return paramString1.h();
  }
  
  public static String a(Context paramContext, int paramInt)
  {
    if (paramInt == -1) {
      return null;
    }
    return ((hpz)ilh.a(paramContext, hpz.class)).a(paramInt).b("account_name");
  }
  
  static void a()
  {
    hpz localhpz = (hpz)ilh.a(aal.oJ, hpz.class);
    Iterator localIterator = b.keySet().iterator();
    while (localIterator.hasNext()) {
      if (!localhpz.c(aal.a((Integer)localIterator.next(), 0))) {
        localIterator.remove();
      }
    }
  }
  
  public static void a(bfd parambfd, Exception paramException)
  {
    parambfd = String.valueOf(i(parambfd.g()).a());
    if (parambfd.length() != 0) {}
    for (parambfd = "Account self info failed ".concat(parambfd);; parambfd = new String("Account self info failed "))
    {
      ezi.d("Babel", parambfd, paramException);
      return;
    }
  }
  
  public static void a(bfd parambfd, String paramString)
  {
    parambfd = i(parambfd.g());
    if (parambfd == null) {
      return;
    }
    parambfd.a(paramString);
  }
  
  public static void a(bfd parambfd, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString, boolean paramBoolean4)
  {
    Object localObject1 = parambfd.a();
    if (i(parambfd.g()) == null)
    {
      parambfd = String.valueOf(ezi.b((String)localObject1));
      if (parambfd.length() != 0) {}
      for (parambfd = "Unable to update voice info for account ".concat(parambfd);; parambfd = new String("Unable to update voice info for account "))
      {
        ezi.d("Babel", parambfd, new Object[0]);
        return;
      }
    }
    localObject1 = aal.oJ;
    Object localObject2;
    if (bff.a)
    {
      localObject2 = String.valueOf(parambfd.M());
      if (((String)localObject2).length() != 0) {
        "updateAccountVoiceInfo before: ".concat((String)localObject2);
      }
    }
    else
    {
      label102:
      localObject2 = (dty)ilh.a((Context)localObject1, dty.class);
      boolean bool = ((dty)localObject2).b((Context)localObject1, parambfd);
      hqc localhqc = ((hpz)ilh.a((Context)localObject1, hpz.class)).b(parambfd.g());
      localhqc.b("is_gv_calling_available", paramBoolean1);
      localhqc.b("gv_should_show_voice_tos", paramBoolean2);
      localhqc.b("gv_emergency_dialing_supported", paramBoolean3);
      localhqc.b("gv_account_balance", paramString);
      localhqc.b("gv_use_tycho_branding", paramBoolean4);
      localhqc.d();
      paramBoolean1 = ((dty)localObject2).b((Context)localObject1, parambfd);
      ezi.a("Babel", 74 + "previousIncomingPhoneCallsWanted: " + bool + " newIncomingPhoneCallsWanted: " + paramBoolean1, new Object[0]);
      if (bool != paramBoolean1)
      {
        paramString = String.valueOf(ezi.b(parambfd.a()));
        if (paramString.length() == 0) {
          break label354;
        }
      }
    }
    label354:
    for (paramString = "Re-register account to update the incoming calls preference for account ".concat(paramString);; paramString = new String("Re-register account to update the incoming calls preference for account "))
    {
      ezi.c("Babel", paramString, new Object[0]);
      c(parambfd);
      if (!bff.a) {
        break;
      }
      parambfd = String.valueOf(parambfd.M());
      if (parambfd.length() == 0) {
        break label369;
      }
      "updateAccountVoiceInfo after: ".concat(parambfd);
      return;
      new String("updateAccountVoiceInfo before: ");
      break label102;
    }
    label369:
    new String("updateAccountVoiceInfo after: ");
  }
  
  public static void a(hpz paramhpz, int paramInt)
  {
    Object localObject1 = paramhpz.a(paramInt);
    if (((hqb)localObject1).d("is_managed_account")) {
      return;
    }
    String[] arrayOfString;
    label53:
    Object localObject2;
    Object localObject3;
    if (((hqb)localObject1).a("plus_page_gaia_ids"))
    {
      arrayOfString = ((hqb)localObject1).b("plus_page_gaia_ids").split(",");
      localObject2 = new ArrayList();
      localObject3 = paramhpz.a();
      localObject1 = ((hqb)localObject1).b("account_name");
      localObject3 = ((List)localObject3).iterator();
    }
    label90:
    label161:
    label346:
    label349:
    for (;;)
    {
      Object localObject4;
      int k;
      if (((Iterator)localObject3).hasNext())
      {
        localObject4 = (Integer)((Iterator)localObject3).next();
        hqb localhqb = paramhpz.a(aal.a((Integer)localObject4, 0));
        if ((!localhqb.b("account_name").equals(localObject1)) || (!localhqb.d("is_plus_page"))) {
          continue;
        }
        k = arrayOfString.length;
        paramInt = 0;
        if (paramInt >= k) {
          break label346;
        }
        if (!TextUtils.equals(arrayOfString[paramInt], localhqb.b("effective_gaia_id"))) {}
      }
      for (paramInt = 1;; paramInt = 0)
      {
        if (paramInt != 0) {
          break label349;
        }
        ((List)localObject2).add(localObject4);
        break label90;
        arrayOfString = new String[0];
        break label53;
        paramInt += 1;
        break label161;
        localObject2 = ((List)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (Integer)((Iterator)localObject2).next();
          localObject4 = String.valueOf(localObject3);
          ezi.c("Babel", String.valueOf(localObject4).length() + 20 + "Removing old +Page: " + (String)localObject4, new Object[0]);
          paramhpz.f(aal.a((Integer)localObject3, 0));
        }
        k = arrayOfString.length;
        paramInt = 0;
        while (paramInt < k)
        {
          paramhpz = b((String)localObject1, arrayOfString[paramInt]);
          if (paramhpz != null) {
            paramhpz.r();
          }
          paramInt += 1;
        }
        break;
      }
    }
  }
  
  public static void a(PrintWriter paramPrintWriter)
  {
    paramPrintWriter.println("Account list:");
    paramPrintWriter.println("Name,ID,jid,state");
    a();
    d(8);
    awm localawm = (awm)ilh.a(aal.oJ, awm.class);
    Iterator localIterator = b.values().iterator();
    if (localIterator.hasNext())
    {
      Object localObject1 = (dvg)localIterator.next();
      Object localObject2 = ((dvg)localObject1).h();
      if (localObject2 == null)
      {
        str1 = String.valueOf(j(((dvg)localObject1).i()));
        if (str1.length() != 0) {}
        for (str1 = "?, ?, ?, ".concat(str1);; str1 = new String("?, ?, ?, "))
        {
          paramPrintWriter.println(str1);
          break;
        }
      }
      if (((bfd)localObject2).e()) {}
      for (String str1 = ((bfd)localObject2).b().toString();; str1 = "no-participant-id")
      {
        String str2 = String.valueOf(((bfd)localObject2).a());
        localObject2 = String.valueOf(localawm.d(((bfd)localObject2).g()));
        localObject1 = String.valueOf(j(((dvg)localObject1).i()));
        paramPrintWriter.println(String.valueOf(str2).length() + 6 + String.valueOf(str1).length() + String.valueOf(localObject2).length() + String.valueOf(localObject1).length() + str2 + ", " + str1 + ", " + (String)localObject2 + ", " + (String)localObject1);
        break;
      }
    }
    paramPrintWriter.println();
  }
  
  public static void a(Exception paramException)
  {
    ezi.d("Babel", "onAccountSetSelfInfoBitFailed: ", paramException);
  }
  
  public static void a(boolean paramBoolean)
  {
    dvi.a(paramBoolean);
  }
  
  static boolean a(hqb paramhqb)
  {
    return paramhqb.b("account_name").endsWith("@google.com");
  }
  
  public static int b(Context paramContext)
  {
    paramContext = ((hpz)ilh.a(paramContext, hpz.class)).a(j);
    if (paramContext.isEmpty()) {
      return -1;
    }
    return aal.a((Integer)paramContext.get(0), -1);
  }
  
  public static long b()
  {
    return aal.a(aal.oJ, "babel_ac_registration_renew_days", 7L) * 86400000L;
  }
  
  private static dvg b(String paramString1, String paramString2)
  {
    a();
    Object localObject1 = b.values().iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (dvg)((Iterator)localObject1).next();
      if ((((dvg)localObject2).e().equals(paramString1)) && (TextUtils.equals(((dvg)localObject2).f(), paramString2))) {
        return (dvg)localObject2;
      }
    }
    hbs.b("Expected non-null", paramString1);
    if (paramString2 != null)
    {
      localObject1 = b(paramString1, null);
      if (localObject1 == null)
      {
        ezi.d("Babel", "No owner account for plus page", new Object[0]);
        paramString2 = null;
        if (paramString2 != null) {
          break label178;
        }
        return null;
      }
    }
    for (;;)
    {
      localObject2 = (hpz)ilh.a(aal.oJ, hpz.class);
      if (((hpz)localObject2).b(paramString1, paramString2) == -1)
      {
        if (paramString2 != null) {
          ((hpz)localObject2).a(paramString1, paramString2).d();
        }
      }
      else
      {
        paramString2 = new dvg(bff.a(aal.oJ, paramString1, paramString2), (dvg)localObject1);
        break;
      }
      paramString2 = null;
      break;
      label178:
      localObject1 = String.valueOf(paramString2.d());
      ezi.a("Babel", String.valueOf(paramString1).length() + 20 + String.valueOf(localObject1).length() + "created account " + paramString1 + " => " + (String)localObject1, new Object[0]);
      if (a)
      {
        paramString1 = new Exception().getStackTrace();
        int m = paramString1.length;
        k = 0;
        if (k < m)
        {
          localObject1 = String.valueOf(paramString1[k].toString());
          if (((String)localObject1).length() != 0) {
            "    ".concat((String)localObject1);
          }
          for (;;)
          {
            k += 1;
            break;
            new String("    ");
          }
        }
      }
      int k = paramString2.h().g();
      b.putIfAbsent(Integer.valueOf(k), paramString2);
      return i(k);
      localObject1 = null;
    }
  }
  
  public static void b(bfd parambfd)
  {
    eot localeot = (eot)ilh.a(aal.oJ, eot.class);
    int k = parambfd.g();
    boolean bool2 = localeot.a(k);
    boolean bool1;
    if ((bool2) || (!bff.f(aal.oJ, k)))
    {
      bool1 = true;
      hbs.a("Expected condition to be true", bool1);
      hbs.a("Expected condition to be true", dvi.a());
      b(bool2);
      if (ezi.a("Babel", 3))
      {
        localObject = String.valueOf(ezi.b(parambfd.a()));
        if (((String)localObject).length() == 0) {
          break label130;
        }
      }
    }
    label130:
    for (Object localObject = "setCarrierSmsAccount: ".concat((String)localObject);; localObject = new String("setCarrierSmsAccount: "))
    {
      ezi.a("Babel", (String)localObject, new Object[0]);
      localObject = n();
      if (parambfd != localObject) {
        break label145;
      }
      return;
      bool1 = false;
      break;
    }
    label145:
    if (localObject != null)
    {
      k = ((bfd)localObject).g();
      if ((bff.f(aal.oJ, k)) && (!localeot.a(k))) {}
    }
    for (;;)
    {
      if (localObject != null) {
        eny.a((bfd)localObject);
      }
      bff.e(aal.oJ, parambfd);
      eny.c(parambfd);
      return;
      localObject = null;
    }
  }
  
  static void b(boolean paramBoolean)
  {
    boolean bool = true;
    if (!ezm.d())
    {
      if (!paramBoolean) {}
      for (paramBoolean = true;; paramBoolean = false)
      {
        aen.a(paramBoolean);
        return;
      }
    }
    int k = y().g();
    hqc localhqc = ((hpz)ilh.a(aal.oJ, hpz.class)).b(k).b("logged_in", paramBoolean);
    if (!paramBoolean) {}
    for (paramBoolean = bool;; paramBoolean = false)
    {
      localhqc.b("logged_out", paramBoolean).d();
      return;
    }
  }
  
  public static long c()
  {
    return aal.a(aal.oJ, "babel_ac_setting_renew_minutes", 1440L) * 60000L;
  }
  
  public static void c(bfd parambfd)
  {
    parambfd = i(parambfd.g());
    if (parambfd != null) {
      parambfd.a(true);
    }
  }
  
  public static void c(boolean paramBoolean)
  {
    dwt.a().j();
    Iterator localIterator = ((hpz)ilh.a(aal.oJ, hpz.class)).a().iterator();
    while (localIterator.hasNext())
    {
      dvg localdvg = i(aal.a((Integer)localIterator.next(), 0));
      if ((localdvg.i() == 102) || (localdvg.i() == 108) || (localdvg.t()))
      {
        if (paramBoolean) {
          localdvg.p();
        }
        localdvg.r();
        if (!localdvg.t()) {
          localdvg.q();
        }
      }
    }
  }
  
  public static boolean d(bfd parambfd)
  {
    if (parambfd != null)
    {
      parambfd = i(parambfd.g());
      if (parambfd != null) {}
    }
    else
    {
      return true;
    }
    return parambfd.s();
  }
  
  public static int[] d()
  {
    return d(0);
  }
  
  static int[] d(int paramInt)
  {
    int m;
    int n;
    label16:
    int i1;
    label26:
    int i2;
    label35:
    int k;
    int i5;
    int i4;
    ArrayList localArrayList;
    int i3;
    label62:
    int i6;
    label73:
    Object localObject2;
    Object localObject1;
    eot localeot;
    if ((paramInt & 0x1) != 0)
    {
      m = 1;
      if ((paramInt & 0x2) == 0) {
        break label230;
      }
      n = 1;
      if ((paramInt & 0x40) == 0) {
        break label235;
      }
      i1 = 1;
      if ((paramInt & 0x4) != 0) {
        break label241;
      }
      i2 = 1;
      k = 0;
      i5 = 0;
      i4 = -1;
      localArrayList = new ArrayList();
      if ((paramInt & 0x20) == 0) {
        break label247;
      }
      i3 = 1;
      if ((paramInt & 0x80) == 0) {
        break label253;
      }
      i6 = 1;
      localObject2 = (hpz)ilh.a(aal.oJ, hpz.class);
      localObject1 = (awo)ilh.a(aal.oJ, awo.class);
      localeot = (eot)ilh.a(aal.oJ, eot.class);
      localObject2 = ((hpz)localObject2).a().iterator();
    }
    label230:
    label235:
    label241:
    label247:
    label253:
    int i7;
    for (;;)
    {
      if (((Iterator)localObject2).hasNext())
      {
        int i8 = aal.a((Integer)((Iterator)localObject2).next(), 0);
        dvg localdvg = i(i8);
        if ((localdvg != null) && ((n == 0) || (!localdvg.m())) && ((i2 != 0) || (!localdvg.s())) && ((m == 0) || (localdvg.l())))
        {
          if ("SMS".equals(localdvg.e()))
          {
            i4 = localdvg.g();
            continue;
            m = 0;
            break;
            n = 0;
            break label16;
            i1 = 0;
            break label26;
            i2 = 0;
            break label35;
            i3 = 0;
            break label62;
            i6 = 0;
            break label73;
          }
          if (((!localdvg.b()) && (!localdvg.h().y())) || ((i6 == 0) && ((i1 == 0) || (localdvg.h().c() != null)) && ((i3 == 0) || (((awo)localObject1).d(i8))))) {
            if (localdvg.l())
            {
              i7 = k + 1;
              localArrayList.add(k, Integer.valueOf(i8));
              if (!localeot.b(i8)) {
                break label504;
              }
              i5 = 1;
              k = i7;
            }
            else if (m == 0)
            {
              localArrayList.add(Integer.valueOf(i8));
            }
          }
        }
      }
    }
    for (;;)
    {
      break;
      if ((paramInt & 0x8) != 0)
      {
        k = 1;
        m = k;
        if (k == 0)
        {
          m = k;
          if (i5 == 0)
          {
            m = k;
            if (dvi.a()) {
              if ((paramInt & 0x10) == 0) {
                break label496;
              }
            }
          }
        }
      }
      label496:
      for (m = 1;; m = 0)
      {
        if ((m != 0) && (i4 != -1)) {
          localArrayList.add(Integer.valueOf(i4));
        }
        localObject1 = new int[localArrayList.size()];
        paramInt = 0;
        while (paramInt < localObject1.length)
        {
          localObject1[paramInt] = aal.a((Integer)localArrayList.get(paramInt), -1);
          paramInt += 1;
        }
        k = 0;
        break;
      }
      return (int[])localObject1;
      label504:
      k = i7;
    }
  }
  
  @Deprecated
  public static int[] d(boolean paramBoolean)
  {
    if (paramBoolean) {
      return d(5);
    }
    return d(0);
  }
  
  public static bfd e(int paramInt)
  {
    dvg localdvg = i(paramInt);
    if (localdvg != null) {
      return localdvg.h();
    }
    return null;
  }
  
  public static dvm e(bfd parambfd)
  {
    parambfd = b(parambfd.a(), parambfd.U());
    if (parambfd == null) {
      return null;
    }
    return parambfd.c();
  }
  
  public static int[] e()
  {
    return d(8);
  }
  
  @Deprecated
  public static void f(int paramInt)
  {
    dvg localdvg = i(paramInt);
    if (localdvg != null) {
      localdvg.a(false);
    }
  }
  
  public static int[] f()
  {
    return d(12);
  }
  
  @Deprecated
  public static void g(int paramInt)
  {
    dvg localdvg = i(paramInt);
    if (localdvg == null) {
      return;
    }
    localdvg.n();
  }
  
  public static int[] g()
  {
    return d(4);
  }
  
  public static boolean h(int paramInt)
  {
    dvg localdvg = i(paramInt);
    return (localdvg != null) && (localdvg.l());
  }
  
  public static int[] h()
  {
    return d(32);
  }
  
  private static dvg i(int paramInt)
  {
    a();
    hpz localhpz = (hpz)ilh.a(aal.oJ, hpz.class);
    if (!localhpz.c(paramInt))
    {
      ezi.d("Babel", 40 + "BAM#gBA: invalid account id: " + paramInt, new Object[0]);
      b.remove(Integer.valueOf(paramInt));
      localObject = null;
    }
    dvg localdvg;
    do
    {
      return (dvg)localObject;
      localdvg = (dvg)b.get(Integer.valueOf(paramInt));
      localObject = localdvg;
    } while (localdvg != null);
    Object localObject = localhpz.a(paramInt);
    return b(((hqb)localObject).b("account_name"), ((hqb)localObject).b("effective_gaia_id"));
  }
  
  public static boolean i()
  {
    return ((hpz)ilh.a(aal.oJ, hpz.class)).a().size() > 1;
  }
  
  private static String j(int paramInt)
  {
    if ((paramInt >= 100) && (paramInt <= 109)) {
      return f[(paramInt - 100)];
    }
    return Integer.toString(paramInt);
  }
  
  public static boolean j()
  {
    if (g == null) {
      g = Boolean.valueOf(false);
    }
    return aal.a(g, false);
  }
  
  public static bfd k()
  {
    Iterator localIterator = r().iterator();
    while (localIterator.hasNext())
    {
      bfd localbfd = (bfd)localIterator.next();
      if (localbfd.x()) {
        return localbfd;
      }
    }
    return null;
  }
  
  public static bfd l()
  {
    if (!dvi.a()) {
      return null;
    }
    bfd localbfd = m();
    eot localeot = (eot)ilh.a(aal.oJ, eot.class);
    if ((localbfd != null) && (!localeot.b(localbfd.g()))) {
      b(localbfd);
    }
    return localbfd;
  }
  
  public static bfd m()
  {
    Object localObject2;
    if (!ezm.d()) {
      localObject2 = null;
    }
    Object localObject1;
    do
    {
      return (bfd)localObject2;
      localObject2 = n();
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = a(aal.oJ);
      }
      if (localObject1 == null) {
        break;
      }
      localObject2 = localObject1;
    } while (!bff.f(aal.oJ, ((bfd)localObject1).g()));
    return y();
  }
  
  static bfd n()
  {
    List localList = ((hpz)ilh.a(aal.oJ, hpz.class)).a(new String[] { "is_sms_account" });
    if (localList.size() <= 1) {}
    for (boolean bool = true;; bool = false)
    {
      aen.b(bool);
      if (localList.size() != 1) {
        break;
      }
      return e(aal.a((Integer)localList.get(0), -1));
    }
    return null;
  }
  
  public static void o()
  {
    a();
    d(8);
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      dvg localdvg = (dvg)localIterator.next();
      String str1;
      if ((localdvg.i() == 101) && (!localdvg.s()))
      {
        str1 = String.valueOf(localdvg.a());
        if (str1.length() != 0) {}
        for (str1 = "Registering account for ".concat(str1);; str1 = new String("Registering account for "))
        {
          ezi.c("Babel", str1, new Object[0]);
          localdvg.a(false);
          break;
        }
      }
      if (localdvg.i() == 102)
      {
        String str2;
        if (ezi.a("Babel", 3))
        {
          str1 = String.valueOf("Renewing account registration after babel upgrade. Account: ");
          str2 = String.valueOf(localdvg.a());
          if (str2.length() == 0) {
            break label178;
          }
        }
        label178:
        for (str1 = str1.concat(str2);; str1 = new String(str1))
        {
          ezi.a("Babel", str1, new Object[0]);
          localdvg.o();
          localdvg.q();
          break;
        }
      }
    }
  }
  
  public static void p()
  {
    a();
    d(8);
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      dvg localdvg = (dvg)localIterator.next();
      if (!localdvg.s()) {
        localdvg.q();
      }
    }
  }
  
  public static void q()
  {
    if (ezi.a("Babel", 3)) {
      ezi.a("Babel", "Scheduling acount renewal", new Object[0]);
    }
    RealTimeChatService.b(SystemClock.elapsedRealtime(), aal.a(aal.oJ, "babel_ac_registration_renew_window_days", 3L) * 86400000L);
  }
  
  public static List<bfd> r()
  {
    a();
    d(8);
    ArrayList localArrayList = new ArrayList(b.size());
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      dvg localdvg = (dvg)localIterator.next();
      if (!localdvg.s()) {
        localArrayList.add(localdvg.h());
      }
    }
    return localArrayList;
  }
  
  public static void s()
  {
    a();
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      dvg localdvg = (dvg)localIterator.next();
      if (!localdvg.s()) {
        localdvg.j();
      }
    }
  }
  
  public static void t()
  {
    a();
    Iterator localIterator = b.values().iterator();
    while (localIterator.hasNext())
    {
      dvg localdvg = (dvg)localIterator.next();
      if ((!localdvg.s()) && (localdvg.i() > 102)) {
        localdvg.j();
      }
    }
  }
  
  public static boolean u()
  {
    return aal.a(aal.oJ, "babel_allowed_for_domain_bit", true);
  }
  
  public static boolean v()
  {
    a();
    hpz localhpz = (hpz)ilh.a(aal.oJ, hpz.class);
    Iterator localIterator = localhpz.a().iterator();
    while (localIterator.hasNext()) {
      if (!localhpz.a(aal.a((Integer)localIterator.next(), 0)).d("sms_only")) {
        return true;
      }
    }
    return false;
  }
  
  @Deprecated
  public static int[] w()
  {
    return d(32);
  }
  
  public static int[] x()
  {
    return d(21);
  }
  
  private static bfd y()
  {
    return e(((eot)ilh.a(aal.oJ, eot.class)).a());
  }
  
  public void a(int paramInt)
  {
    ezi.c("Babel", 32 + "BAM#account updated: " + paramInt, new Object[0]);
    Object localObject = (hpz)ilh.a(h, hpz.class);
    hqb localhqb = ((hpz)localObject).a(paramInt);
    if (localhqb.d("logged_out"))
    {
      ezi.c("Babel", 25 + "BAM, cleanup: " + paramInt, new Object[0]);
      localObject = ((hpz)ilh.a(h, hpz.class)).a(paramInt);
      RealTimeChatService.b(paramInt);
      if ((((hqb)localObject).d("is_sms_account")) && (dvi.a())) {
        b(y());
      }
    }
    while (localhqb.d("sms_only")) {
      return;
    }
    RealTimeChatService.a(paramInt);
    a((hpz)localObject, paramInt);
  }
  
  public void b(int paramInt)
  {
    ezi.c("Babel", 23 + "BAM created " + paramInt, new Object[0]);
    hqb localhqb = ((hpz)ilh.a(h, hpz.class)).a(paramInt);
    dvg localdvg = b(localhqb.b("account_name"), localhqb.b("effective_gaia_id"));
    hbs.b("babelAccount should not be null", localdvg);
    hbs.b("babelAccount.getName() should not be null", localdvg.e());
    b.put(Integer.valueOf(paramInt), localdvg);
    if (localhqb.a()) {
      RealTimeChatService.a(paramInt);
    }
  }
  
  public void c(int paramInt) {}
}

/* Location:
 * Qualified Name:     dvd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */