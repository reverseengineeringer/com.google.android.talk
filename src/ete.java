import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.telecom.DisconnectCause;
import android.telephony.PhoneNumberUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.libraries.hangouts.video.internal.Stats.ConnectionInfoStats;
import java.util.List;

final class ete
  implements eqt
{
  private static etf n = new etf();
  private final Context a;
  private final String b;
  private final String c;
  private final String d;
  private final boolean e;
  private final hcw f;
  private final hbt g;
  private final etg h;
  private Uri i;
  private long j = -1L;
  private long k = -1L;
  private long l = -1L;
  private ero m;
  
  ete(Context paramContext, String paramString1, Uri paramUri, String paramString2, String paramString3, boolean paramBoolean)
  {
    a = paramContext;
    b = paramString1;
    i = paramUri;
    d = paramString2;
    e = paramBoolean;
    new hlo();
    c = hlo.a();
    paramString1 = paramString3;
    if (paramString3 == null)
    {
      new hlo();
      paramString1 = hlo.a();
    }
    h = new etg(paramString1, c);
    f = new hcw(h);
    g = new hbt(paramContext);
  }
  
  private void b(int paramInt)
  {
    int i1 = 1;
    Stats.ConnectionInfoStats localConnectionInfoStats = new Stats.ConnectionInfoStats(1, "", "", "", "", "", "", 0, 0, 0, 0, 0, 0);
    hbt localhbt = g;
    if (paramInt == 2) {}
    for (paramInt = i1;; paramInt = 0)
    {
      paramInt = localhbt.b(paramInt);
      localConnectionInfoStats.setMediaNetworkType(paramInt);
      if (aal.r(a)) {
        localConnectionInfoStats.setSignalStrength(g.a(paramInt));
      }
      f.a(localConnectionInfoStats);
      return;
    }
  }
  
  String a()
  {
    return c;
  }
  
  void a(int paramInt)
  {
    f.b(paramInt);
  }
  
  void a(Uri paramUri)
  {
    i = paramUri;
  }
  
  public void a(eqs parameqs, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 1: 
    case 3: 
      if (k == -1L)
      {
        j = System.currentTimeMillis();
        k = SystemClock.elapsedRealtime();
        f.a();
        if (parameqs.a() != null) {
          f.a(parameqs.a().h().c());
        }
      }
      if (paramInt == 3) {
        f.c();
      }
      b(parameqs.d());
      return;
    case 2: 
      f.c();
      b(parameqs.d());
      return;
    }
    h.b();
    f.b();
    b(parameqs.d());
  }
  
  public void a(eqs parameqs, DisconnectCause paramDisconnectCause)
  {
    bfd localbfd;
    int i1;
    String str2;
    label104:
    label133:
    Object localObject;
    label196:
    String str1;
    label208:
    boolean bool;
    if (l == -1L)
    {
      l = SystemClock.elapsedRealtime();
      b(parameqs.d());
      localbfd = dvd.e(eut.a(a).b());
      if (localbfd == null) {
        break label428;
      }
      i1 = eut.a(a).f();
      if (localbfd.g() != i1) {
        break label416;
      }
      i1 = 1;
      if (i1 != 0)
      {
        str2 = ezm.f();
        parameqs = parameqs.a();
        if (parameqs == null) {
          break label433;
        }
        parameqs = PhoneNumberUtils.extractNetworkPortion(ezm.l(parameqs.f().c()));
        if (b != null) {
          f.a(1, b);
        }
        if (!e) {
          break label439;
        }
        i1 = 104;
        localObject = (awm)ilh.a(a, awm.class);
        hcx localhcx = f.a(a, i1, 1, j, c).a(((awm)localObject).e(localbfd.g()));
        if (i != null) {
          break label445;
        }
        localObject = "unknown";
        if (d != null) {
          break label457;
        }
        str1 = aal.p();
        localObject = localhcx.b(String.format("%s/%s", new Object[] { localObject, str1 }));
        bool = h.a();
        i1 = paramDisconnectCause.getCode();
        switch (i1)
        {
        default: 
          hbs.a(39 + "Unexpected DisconnectCause: " + i1);
          i1 = 1;
        }
      }
    }
    for (;;)
    {
      parameqs = ((hcx)localObject).a(bool, i1, 0).a(str2, parameqs, paramDisconnectCause.getReason()).a();
      hbs.a(Integer.valueOf(parameqs.size()), Integer.valueOf(1));
      parameqs = (kju)parameqs.get(0);
      if (m != null) {
        n = new String[] { m.a() };
      }
      RealTimeChatService.a(localbfd, c, parameqs);
      return;
      label416:
      if (b != null)
      {
        i1 = 1;
        break;
      }
      label428:
      i1 = 0;
      break;
      label433:
      parameqs = "";
      break label104;
      label439:
      i1 = 103;
      break label133;
      label445:
      localObject = i.getSchemeSpecificPart();
      break label196;
      label457:
      str1 = d;
      break label208;
      i1 = 1004;
      continue;
      i1 = 1011;
      continue;
      i1 = 1010;
      continue;
      i1 = 1009;
      continue;
      i1 = 1007;
      continue;
      i1 = 1017;
    }
  }
  
  void a(ero paramero)
  {
    m = paramero;
  }
  
  long b()
  {
    if (k == -1L) {
      return -1L;
    }
    long l2 = l;
    long l1 = l2;
    if (l2 == -1L) {
      l1 = SystemClock.elapsedRealtime();
    }
    return l1 - k;
  }
}

/* Location:
 * Qualified Name:     ete
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */