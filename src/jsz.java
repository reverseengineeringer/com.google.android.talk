import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class jsz
  implements jrx
{
  static final Pattern a = Pattern.compile("(ChromiumNet)|(HttpUrlConnection #[\\d]*)|(JavaCronetEngine)|(Okio Watchdog)|(SharedPreferencesImpl-load)|(Bound thread pool)|(RenderThread)|(SamplingProfiler)|(SamplingProfilerIntegration)|(hwuiTask[0-9])|(Lightweight Thread #[\\d]*)|(Background Thread #[\\d]*)|(Blocking Thread #[\\d]*)|(java.lang.ProcessManager)|(Espresso Key Event #[\\d]*)|(MonitoringInstrumentation)|(ConnectivityManager)|(cr.CleanupReference)|(CleanupReference)|(SettinsObserver)|(SettingsObserver)|(JavaBridge)|NotificationManagerCompat|PPTask|(PanoramaClient)|(GLThread [\\d]*)|(TileDecoder)|(BackgroundTask #[\\d])|(FrameSequence decoding thread)|(Login Manager Threadpool)|(GifDecoder)|(AsyncTask #[\\d]*)|(Resource Decoder Thread #[\\d])|(ImageLoader)|(PowerManagerThread)|(NetworkQueueProcessor)|(glide-.*)|(IntentService.Gns:IntentService.)|(IntentService.GcmReceiveMessageService.)|(ANDROID_TEST_UTIL_THREAD)|(OkHttp ConnectionPool)|(MockHttpUrlRequestFactory)|(MockHttpURLConnection)|(Mock UrlConnection #.*)|(Picasso-.*)|(Stetho-Listener)|(GCMService)");
  private static final Pattern c = Pattern.compile("pool-[0-9]+-thread-1");
  ScheduledFuture<?> b;
  private final ScheduledExecutorService d;
  private final Set<Boolean> e;
  
  jsz(ScheduledExecutorService paramScheduledExecutorService, Set<Boolean> paramSet)
  {
    d = paramScheduledExecutorService;
    e = paramSet;
  }
  
  static boolean a(Set<Thread> paramSet)
  {
    boolean bool2 = true;
    paramSet = paramSet.iterator();
    for (int i = 0; paramSet.hasNext(); i = 1)
    {
      String str = ((Thread)paramSet.next()).getName();
      bool1 = bool2;
      if (!c.matcher(str).matches()) {
        return bool1;
      }
      bool1 = bool2;
      if (i != 0) {
        return bool1;
      }
    }
    boolean bool1 = false;
    return bool1;
  }
  
  static boolean a(StackTraceElement[] paramArrayOfStackTraceElement)
  {
    if (paramArrayOfStackTraceElement.length == 0) {}
    for (;;)
    {
      return true;
      paramArrayOfStackTraceElement = paramArrayOfStackTraceElement[(paramArrayOfStackTraceElement.length - 1)];
      try
      {
        if (!Thread.class.isAssignableFrom(Class.forName(paramArrayOfStackTraceElement.getClassName()))) {
          continue;
        }
        boolean bool = paramArrayOfStackTraceElement.getMethodName().equals("run");
        if (!bool) {
          continue;
        }
        return false;
      }
      catch (ClassNotFoundException paramArrayOfStackTraceElement)
      {
        throw new RuntimeException("Class in stack trace not found", paramArrayOfStackTraceElement);
      }
    }
  }
  
  public void a()
  {
    boolean bool = true;
    if (!e.isEmpty())
    {
      if (e.size() == 1) {}
      for (;;)
      {
        fii.b(bool);
        if (!((Boolean)e.iterator().next()).booleanValue()) {
          break;
        }
        return;
        bool = false;
      }
    }
    Set localSet = Collections.newSetFromMap(new IdentityHashMap());
    Iterator localIterator = Thread.getAllStackTraces().keySet().iterator();
    while (localIterator.hasNext()) {
      localSet.add((Thread)localIterator.next());
    }
    b = d.scheduleWithFixedDelay(new jta(this, localSet), 0L, 500L, TimeUnit.MILLISECONDS);
  }
}

/* Location:
 * Qualified Name:     jsz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */