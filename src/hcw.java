import android.content.Context;
import android.os.SystemClock;
import com.google.android.libraries.hangouts.video.internal.Stats;
import com.google.android.libraries.hangouts.video.internal.Stats.AggregatePrintStats;
import com.google.android.libraries.hangouts.video.internal.Stats.BandwidthEstimationStats;
import com.google.android.libraries.hangouts.video.internal.Stats.ConnectionInfoStats;
import com.google.android.libraries.hangouts.video.internal.Stats.GlobalStats;
import com.google.android.libraries.hangouts.video.internal.Stats.VideoReceiverStats;
import com.google.android.libraries.hangouts.video.internal.Stats.VideoSenderStats;
import com.google.android.libraries.hangouts.video.internal.Stats.VoiceReceiverStats;
import com.google.android.libraries.hangouts.video.internal.Stats.VoiceSenderStats;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class hcw
{
  long a;
  long b = 0L;
  final hcy c;
  long d;
  long e;
  final Map<String, hcz> f;
  final hli<hdd> g;
  final hda h;
  boolean i;
  int j = 0;
  jux k;
  int l = 0;
  int m = 0;
  
  public hcw(hcy paramhcy)
  {
    c = paramhcy;
    f = new HashMap();
    g = new hli(1200);
    h = new hda(this);
  }
  
  private static void a(hdd paramhdd, PrintWriter paramPrintWriter, Stats.AggregatePrintStats paramAggregatePrintStats)
  {
    paramPrintWriter.print(new Date(a).toString());
    c.print(paramPrintWriter, paramAggregatePrintStats);
  }
  
  static int d(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      hlk.a(6, "vclib", 35 + "endCauseMap unexpected: " + paramInt);
      return 6;
    case 0: 
      hbs.a("endCause is not set");
      return 6;
    case 1: 
    case 1017: 
      return 29;
    case 3: 
    case 5: 
    case 10: 
    case 15: 
    case 1008: 
      return 47;
    case 1000: 
      return 46;
    case 21: 
    case 23: 
      return 10;
    case 24: 
      return 65;
    case 22: 
      return 22;
    case 25: 
      return 37;
    case 30: 
      return 0;
    case 1004: 
      return 0;
    case 1009: 
      return 18;
    case 1005: 
      return 61;
    case 1006: 
      return 62;
    case 1007: 
      return 15;
    case 1001: 
    case 1003: 
      return 31;
    case 1010: 
      return 2;
    case 1011: 
      return 2;
    case 1014: 
      return 2;
    case 1012: 
      return 60;
    case 1015: 
      return 65;
    case 29: 
      return 26;
    case 1018: 
      return 68;
    case 51: 
      return 51;
    }
    return 46;
  }
  
  private void d()
  {
    if (b == 0L)
    {
      a = System.currentTimeMillis();
      b = SystemClock.elapsedRealtime();
    }
  }
  
  private void e()
  {
    
    if (h.g != null) {
      g.a(h.g);
    }
    String str;
    hcz localhcz;
    if (!h.b())
    {
      str = c.f();
      hbs.b("Expected non-null", str);
      hlk.a(3, "vclib", "logRemainingStats for activeSessionId = %s", new Object[] { str });
      localhcz = (hcz)f.get(str);
      if (localhcz != null) {
        break label161;
      }
      localhcz = new hcz();
    }
    label161:
    for (;;)
    {
      Iterator localIterator = h.d().iterator();
      while (localIterator.hasNext())
      {
        hdd localhdd = (hdd)localIterator.next();
        c.a(localhdd);
      }
      f.put(str, localhcz);
      h.a();
      return;
    }
  }
  
  public hcx a(Context paramContext, int paramInt1, int paramInt2, long paramLong, String paramString)
  {
    if (paramLong <= 0L) {
      paramLong = System.currentTimeMillis();
    }
    for (;;)
    {
      return new hcx(this, paramContext, paramInt1, paramInt2, paramLong, paramString);
    }
  }
  
  public void a()
  {
    d();
  }
  
  public void a(int paramInt)
  {
    j = paramInt;
  }
  
  public void a(int paramInt, String paramString)
  {
    jux localjux = new jux();
    a = Integer.valueOf(paramInt);
    c = paramString;
    k = localjux;
  }
  
  public void a(Stats paramStats)
  {
    hbs.a();
    d();
    long l1 = (SystemClock.elapsedRealtime() - b) / 1000L;
    hdd localhdd = new hdd(System.currentTimeMillis(), l1, paramStats);
    if ((paramStats instanceof Stats.VoiceSenderStats))
    {
      h.a = localhdd;
      return;
    }
    if ((paramStats instanceof Stats.VoiceReceiverStats))
    {
      paramStats = (Stats.VoiceReceiverStats)paramStats;
      h.b.put(Integer.valueOf(a), localhdd);
      return;
    }
    if ((paramStats instanceof Stats.VideoSenderStats))
    {
      h.c = localhdd;
      return;
    }
    if ((paramStats instanceof Stats.VideoReceiverStats))
    {
      paramStats = (Stats.VideoReceiverStats)paramStats;
      h.d.put(Integer.valueOf(a), localhdd);
      return;
    }
    if ((paramStats instanceof Stats.BandwidthEstimationStats))
    {
      h.e = localhdd;
      return;
    }
    if ((paramStats instanceof Stats.ConnectionInfoStats))
    {
      h.f = localhdd;
      return;
    }
    if ((paramStats instanceof Stats.GlobalStats))
    {
      h.g = localhdd;
      return;
    }
    paramStats = String.valueOf(paramStats);
    hlk.a(5, "vclib", String.valueOf(paramStats).length() + 36 + "Received unrecognized stats update, " + paramStats);
  }
  
  void a(PrintWriter paramPrintWriter)
  {
    hbs.a();
    Stats.AggregatePrintStats localAggregatePrintStats = new Stats.AggregatePrintStats();
    paramPrintWriter.println("Stats history");
    if (g.a() > 0)
    {
      paramPrintWriter.println("Global stats legend:");
      paramPrintWriter.println("  GlobalStats -- pcpu, tcpu, online cores, util per cpu, cpu freq, on battery, battery level");
    }
    int n = 0;
    while (n < g.a())
    {
      a((hdd)g.a(n), paramPrintWriter, localAggregatePrintStats);
      n += 1;
    }
    if (h.g != null) {
      a(h.g, paramPrintWriter, localAggregatePrintStats);
    }
    Object localObject1 = String.valueOf(c.f());
    Iterator localIterator;
    if (((String)localObject1).length() != 0)
    {
      localObject1 = "Active media session: ".concat((String)localObject1);
      paramPrintWriter.println((String)localObject1);
      localIterator = f.entrySet().iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext()) {
        break label395;
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject2 = (String)localEntry.getKey();
      localObject1 = String.valueOf(localObject2);
      if (((String)localObject1).length() != 0) {}
      for (localObject1 = "Stats history for session: ".concat((String)localObject1);; localObject1 = new String("Stats history for session: "))
      {
        paramPrintWriter.println((String)localObject1);
        localObject1 = getValuec;
        if (((hli)localObject1).a() > 0)
        {
          paramPrintWriter.println("Legend:");
          Stats.VoiceSenderStats.printLegend(paramPrintWriter);
          Stats.VoiceReceiverStats.printLegend(paramPrintWriter);
          Stats.VideoSenderStats.printLegend(paramPrintWriter);
          Stats.VideoReceiverStats.printLegend(paramPrintWriter);
          Stats.BandwidthEstimationStats.printLegend(paramPrintWriter);
          Stats.ConnectionInfoStats.printLegend(paramPrintWriter);
        }
        n = 0;
        while (n < ((hli)localObject1).a())
        {
          a((hdd)((hli)localObject1).a(n), paramPrintWriter, localAggregatePrintStats);
          n += 1;
        }
        localObject1 = new String("Active media session: ");
        break;
      }
      if (((String)localObject2).equals(c.f()))
      {
        localObject1 = h.c().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (hdd)((Iterator)localObject1).next();
          if (!(c instanceof Stats.GlobalStats)) {
            a((hdd)localObject2, paramPrintWriter, localAggregatePrintStats);
          }
        }
      }
    }
    label395:
    localAggregatePrintStats.a(paramPrintWriter);
  }
  
  public void a(String paramString)
  {
    hbs.a();
    e();
    if (f.get(paramString) == null) {
      f.put(paramString, new hcz());
    }
  }
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    hbs.a();
    e();
    hcz localhcz2 = (hcz)f.get(paramString2);
    hcz localhcz1 = localhcz2;
    if (localhcz2 == null) {
      localhcz1 = new hcz();
    }
    hbs.b("Expected condition to be false", a);
    a = true;
    b = paramInt;
    f.put(paramString2, localhcz1);
    a(paramString1);
  }
  
  public void b()
  {
    d = SystemClock.elapsedRealtime();
  }
  
  public void b(int paramInt)
  {
    l = paramInt;
  }
  
  public void b(Stats paramStats)
  {
    
    if ((paramStats instanceof Stats.GlobalStats))
    {
      hbs.b("Expected non-null", h.g);
      g.a(h.g);
      h.g = null;
      return;
    }
    String str = c.f();
    hbs.b("Expected non-null", str);
    hdd localhdd;
    if ((paramStats instanceof Stats.VoiceSenderStats))
    {
      localhdd = h.a;
      h.a = null;
    }
    while (localhdd != null)
    {
      Object localObject = (hcz)f.get(str);
      paramStats = (Stats)localObject;
      if (localObject == null) {
        paramStats = new hcz();
      }
      c.a(localhdd);
      f.put(str, paramStats);
      return;
      if ((paramStats instanceof Stats.VoiceReceiverStats))
      {
        localObject = (Stats.VoiceReceiverStats)paramStats;
        localhdd = (hdd)h.b.get(Integer.valueOf(a));
        h.b.remove(Integer.valueOf(a));
      }
      else if ((paramStats instanceof Stats.VideoSenderStats))
      {
        localhdd = h.c;
        h.c = null;
      }
      else if ((paramStats instanceof Stats.VideoReceiverStats))
      {
        localObject = (Stats.VideoReceiverStats)paramStats;
        localhdd = (hdd)h.d.get(Integer.valueOf(a));
        h.d.remove(Integer.valueOf(a));
      }
      else if ((paramStats instanceof Stats.BandwidthEstimationStats))
      {
        localhdd = h.e;
        h.e = null;
      }
      else if ((paramStats instanceof Stats.ConnectionInfoStats))
      {
        localhdd = h.f;
        h.f = null;
      }
      else
      {
        hlk.b("vclib", "Received unrecognized stats log, %s", new Object[] { paramStats });
        localhdd = null;
      }
    }
    hlk.c("vclib", "Received stats object, %s that wasn't already in currentStatsUpdate", new Object[] { paramStats });
  }
  
  public void c()
  {
    e = SystemClock.elapsedRealtime();
  }
  
  public void c(int paramInt)
  {
    m = paramInt;
  }
}

/* Location:
 * Qualified Name:     hcw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */