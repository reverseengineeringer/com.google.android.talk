import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class ehb
{
  static volatile ehb a;
  private static final boolean n = false;
  private static volatile boolean o = false;
  public int b = -1;
  public volatile long c = 300000L;
  public volatile long d = 3600000L;
  public volatile long e = 86400000L;
  public volatile long f = 172800000L;
  public volatile int g = 50;
  public volatile int h = 100;
  public volatile int i = 500;
  public volatile long j = 604800000L;
  public volatile int k = 50;
  public volatile int l = 2000;
  public volatile long m = 604800000L;
  private final Handler p = new Handler(Looper.getMainLooper());
  private volatile long q = 604800000L;
  private volatile boolean r;
  private volatile boolean s = true;
  private volatile long t;
  
  static
  {
    imx localimx = ezi.q;
  }
  
  public static void a()
  {
    b(false);
  }
  
  private static boolean a(int paramInt)
  {
    return (paramInt == 1) || (paramInt == 2);
  }
  
  private boolean a(Context paramContext, bfz parambfz)
  {
    if (!b(paramContext)) {
      return false;
    }
    Iterator localIterator = parambfz.k().iterator();
    while (localIterator.hasNext()) {
      if (!a(paramContext, parambfz, (String)localIterator.next())) {
        return false;
      }
    }
    return true;
  }
  
  private boolean a(Context paramContext, bfz parambfz, int paramInt1, int paramInt2)
  {
    if (!b(paramContext)) {
      return false;
    }
    parambfz.a();
    label251:
    label254:
    for (;;)
    {
      try
      {
        List localList = parambfz.a(i, paramInt1);
        if (localList.size() <= paramInt2)
        {
          parambfz.b();
          return true;
        }
        long l1 = aal.a((Long)localList.get(paramInt2 - 1), 0L);
        long l2 = parambfz.u();
        if ((l2 == 0L) || (l1 <= l2)) {
          break label254;
        }
        l1 = l2;
        l2 = (System.currentTimeMillis() - j) * 1000L;
        if (l1 <= l2) {
          break label251;
        }
        l1 = l2;
        if (localList.size() >= i)
        {
          l2 = aal.a((Long)localList.get(i - 1), 0L);
          if (l1 < l2)
          {
            l1 = l2;
            if (l1 < aal.a((Long)localList.get(localList.size() - 1), 0L))
            {
              parambfz.b();
              return true;
            }
            if (!b(paramContext))
            {
              parambfz.b();
              return false;
            }
            parambfz.c(l1, paramInt1);
            parambfz.b();
            return true;
          }
        }
      }
      finally
      {
        parambfz.c();
      }
      continue;
    }
  }
  
  private boolean a(Context paramContext, bfz parambfz, String paramString)
  {
    if (!b(paramContext)) {
      return false;
    }
    parambfz.a();
    label300:
    label303:
    for (;;)
    {
      try
      {
        List localList = parambfz.d(paramString, l);
        if (localList.size() <= k)
        {
          parambfz.b();
          return true;
        }
        long l1 = aal.a((Long)localList.get(k - 1), 0L);
        long l2 = parambfz.P(paramString);
        if ((l2 == 0L) || (l1 <= l2)) {
          break label303;
        }
        l1 = l2;
        l2 = (System.currentTimeMillis() - m) * 1000L;
        if (l1 <= l2) {
          break label300;
        }
        l1 = l2;
        if (localList.size() >= l)
        {
          l2 = aal.a((Long)localList.get(l - 1), 0L);
          if (l1 < l2)
          {
            l1 = l2;
            if (l1 < aal.a((Long)localList.get(localList.size() - 1), 0L))
            {
              parambfz.b();
              return true;
            }
            if (!b(paramContext))
            {
              parambfz.b();
              return false;
            }
            int i1 = parambfz.k(paramString, l1);
            if (n) {
              new StringBuilder(String.valueOf(paramString).length() + 49).append("Deleted ").append(i1).append(" old messages. conversationId=").append(paramString);
            }
            parambfz.b();
            return true;
          }
        }
      }
      finally
      {
        parambfz.c();
      }
      continue;
    }
  }
  
  public static void b()
  {
    o = false;
    RealTimeChatService.g();
  }
  
  private static void b(boolean paramBoolean)
  {
    if ((!o) || (paramBoolean))
    {
      if (ezi.a("Babel", 3)) {
        ezi.a("Babel", 50 + "Scheduling database cleanup. forceReschedule=" + paramBoolean, new Object[0]);
      }
      long l1 = aal.a(aal.oJ, "babel_gc_next_start", 60);
      long l2 = aal.a(aal.oJ, "babel_gc_interval", 1440);
      RealTimeChatService.a(l1 * 60000L + SystemClock.elapsedRealtime(), l2 * 60000L);
      o = true;
    }
  }
  
  private boolean b(Context paramContext)
  {
    boolean bool2 = true;
    paramContext = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    boolean bool1;
    if (paramContext == null) {
      bool1 = false;
    }
    for (;;)
    {
      if ((!s) || (System.currentTimeMillis() < t + c) || (!bool1))
      {
        if (ezi.a("Babel", 3))
        {
          bool2 = s;
          long l1 = t;
          ezi.a("Babel", 131 + "Database clean up service okToRun check failed. mOkToRun=" + bool2 + " mLastBabelIdleTimestamp=" + l1 + " charger connected=" + bool1, new Object[0]);
        }
        b(true);
        bool2 = false;
      }
      return bool2;
      int i1 = paramContext.getIntExtra("plugged", -1);
      if (Build.VERSION.SDK_INT >= 17)
      {
        if ((a(i1)) || (i1 == 4)) {
          bool1 = true;
        } else {
          bool1 = false;
        }
      }
      else {
        bool1 = a(i1);
      }
    }
  }
  
  public static ehb c()
  {
    if (a == null)
    {
      ehb localehb = new ehb();
      a = localehb;
      localehb.d();
      aal.a(aal.oJ).a(new ehc());
    }
    return a;
  }
  
  public void a(Context paramContext)
  {
    if ((r) || (!b(paramContext))) {
      return;
    }
    r = true;
    int[] arrayOfInt;
    int i1;
    label41:
    int i4;
    bfd localbfd;
    bfz localbfz;
    if (b == -1)
    {
      arrayOfInt = dvd.f();
      int i3 = arrayOfInt.length;
      i1 = 0;
      if (i1 >= i3) {
        break label563;
      }
      i4 = arrayOfInt[i1];
      if (n) {
        new StringBuilder(51).append("Starting database clean up for account: ").append(i4);
      }
      localbfd = dvd.e(i4);
      if (localbfd != null)
      {
        localbfz = new bfz(paramContext, localbfd.g());
        if (b(paramContext)) {
          break label350;
        }
        i2 = 0;
        label117:
        if (i2 == 0) {
          break label563;
        }
        if (b(paramContext)) {
          break label401;
        }
        i2 = 0;
        label131:
        if (i2 == 0) {
          break label563;
        }
        if (b(paramContext)) {
          break label455;
        }
        i2 = 0;
        label145:
        if (i2 == 0) {
          break label563;
        }
        if (b(paramContext)) {
          break label509;
        }
      }
    }
    for (int i2 = 0;; i2 = 1)
    {
      if ((i2 == 0) || (!a(paramContext, localbfz, 2, g)) || (!a(paramContext, localbfz, 1, h)) || (!a(paramContext, localbfz))) {
        break label563;
      }
      if (n) {
        new StringBuilder(51).append("Finished database clean up for account: ").append(i4);
      }
      i2 = (int)(new File(bgw.a(paramContext, localbfd.g()).getReadableDatabase().getPath()).length() / 1024L);
      ezi.a("Babel", 44 + i4 + " database size is: " + i2 + " KB", new Object[0]);
      aen.a(i4, System.currentTimeMillis(), 16, new csn().a(i2).b());
      i1 += 1;
      break label41;
      arrayOfInt = new int[1];
      arrayOfInt[0] = b;
      break;
      label350:
      i2 = localbfz.i(TimeUnit.MILLISECONDS.toMicros(System.currentTimeMillis()));
      if (n) {
        new StringBuilder(46).append("Deleted ").append(i2).append(" expired event suggestions.");
      }
      i2 = 1;
      break label117;
      label401:
      i2 = localbfz.h((System.currentTimeMillis() - d) * 1000L);
      if (n) {
        new StringBuilder(37).append("Deleted ").append(i2).append(" expired messages.");
      }
      i2 = 1;
      break label131;
      label455:
      i2 = localbfz.j((System.currentTimeMillis() - e) * 1000L);
      if (n) {
        new StringBuilder(40).append("Deleted ").append(i2).append(" empty conversations.");
      }
      i2 = 1;
      break label145;
      label509:
      i2 = localbfz.k((System.currentTimeMillis() - q) * 1000L);
      if (n) {
        new StringBuilder(40).append("Deleted ").append(i2).append(" expired invitations.");
      }
    }
    label563:
    r = false;
  }
  
  public void a(boolean paramBoolean)
  {
    s = paramBoolean;
    if (paramBoolean) {
      t = System.currentTimeMillis();
    }
  }
  
  void d()
  {
    c = (aal.a(aal.oJ, "babel_gc_minimum_idle", 5) * 60000L);
    d = (aal.a(aal.oJ, "babel_gc_message_expiration_slop", 60) * 60000L);
    e = (aal.a(aal.oJ, "babel_gc_empty_conversation_slop", 1440) * 60000L);
    q = (aal.a(aal.oJ, "babel_gc_expired_invitation_slop", 10080) * 60000L);
    f = (aal.a(aal.oJ, "babel_gc_recent_scroll_slot", 2880) * 60000L);
    g = aal.a(aal.oJ, "babel_gc_min_conversations_to_keep", 50);
    i = aal.a(aal.oJ, "babel_gc_max_conversations_to_keep", 500);
    j = (aal.a(aal.oJ, "babel_gc_recent_conversation_slop", 10080) * 60000L);
    h = aal.a(aal.oJ, "babel_gc_min_invites_to_keep", 100);
    k = aal.a(aal.oJ, "babel_gc_min_messages_to_keep", 50);
    l = aal.a(aal.oJ, "babel_gc_max_messages_to_keep", 2000);
    m = (aal.a(aal.oJ, "babel_gc_recent_message_slop", 10080) * 60000L);
    b(true);
  }
  
  public long e()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     ehb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */