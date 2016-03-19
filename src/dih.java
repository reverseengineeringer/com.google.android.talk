import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Process;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;
import android.os.StrictMode.VmPolicy.Builder;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.util.Log;
import com.google.android.apps.hangouts.realtimechat.DebugService;
import com.google.android.apps.hangouts.sms.SmsReceiver;
import com.google.android.libraries.social.jni.crashreporter.NativeCrashHandler;
import java.util.Iterator;
import java.util.List;

public final class dih
  implements jrx
{
  private static final ezv a = ezv.a("HangoutsAppStartupListener");
  private final Context b;
  private final cqr c;
  
  dih(Context paramContext, cqs paramcqs)
  {
    b = paramContext;
    c = paramcqs.a(17);
  }
  
  public void a()
  {
    Object localObject2 = b;
    Object localObject1 = ((ActivityManager)((Context)localObject2).getSystemService("activity")).getRunningAppProcesses();
    Object localObject3;
    label109:
    int i;
    if (localObject1 != null)
    {
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject3 = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject1).next();
        if (pid == Process.myPid())
        {
          localObject1 = processName;
          localObject2 = String.valueOf(((Context)localObject2).getPackageName());
          localObject3 = String.valueOf("");
          if (((String)localObject3).length() == 0) {
            break label137;
          }
          localObject2 = ((String)localObject2).concat((String)localObject3);
          if ((localObject1 != null) && (!((String)localObject1).equals(localObject2))) {
            break label151;
          }
          i = 1;
          label126:
          if (i != 0) {
            break label156;
          }
        }
      }
    }
    label137:
    label151:
    label156:
    long l1;
    do
    {
      return;
      localObject1 = null;
      break;
      localObject2 = new String((String)localObject2);
      break label109;
      i = 0;
      break label126;
      a.b("onApplicationStartup");
      l1 = SystemClock.elapsedRealtime();
      aal.g(b);
      if (ezi.a("Babel_strictmode"))
      {
        ezi.c("Babel", "Enable strict logging early due to tag", new Object[0]);
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectAll().penaltyLog().build());
      }
      if (Log.isLoggable("Babel_profile", 3)) {
        localObject1 = ezi.y;
      }
      try
      {
        NativeCrashHandler.a(b);
        hbs.a();
        ezm.a();
        localObject1 = b;
        localObject2 = new Thread(new dik());
        ((Thread)localObject2).setName("otherBackgroundInitialization");
        ((Thread)localObject2).start();
        hbw.d = aal.a((Context)localObject1, "babel_server_request_timeout", 40000) + 10000L;
        localObject1 = ilh.b(b);
        localObject2 = (axx)((ilh)localObject1).a(axx.class);
        ((axx)localObject2).a(new dil(b));
        localObject3 = ((ilh)localObject1).c(ddl.class).iterator();
        while (((Iterator)localObject3).hasNext()) {
          ((ddl)((Iterator)localObject3).next()).a(b, (axx)localObject2);
        }
      }
      catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
      {
        for (;;)
        {
          ezi.d("Babel", "Error installing NativeCrashHandler", localUnsatisfiedLinkError);
        }
      }
      catch (NoSuchMethodError localNoSuchMethodError)
      {
        for (;;)
        {
          ezi.d("Babel", "Failed to load NativeCrashHandler", localNoSuchMethodError);
        }
        dwt.a(b);
        boolean bool = aal.e(b);
        if (bool) {
          PreferenceManager.getDefaultSharedPreferences(b).edit().putLong("first_launch", System.currentTimeMillis()).apply();
        }
        localObject2 = b;
        aei.a = new emy();
        new emz((Context)localObject2).start();
        emj.a();
        aal.a(b).a(new dii(this));
        b();
        new dir(b, bool);
      }
    } while (imz.a(b));
    SmsReceiver.a();
    localObject2 = localNoSuchMethodError.c(Application.ActivityLifecycleCallbacks.class).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (Application.ActivityLifecycleCallbacks)((Iterator)localObject2).next();
      ((Application)b).registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)localObject3);
    }
    localObject2 = (fak)localNoSuchMethodError.a(fak.class);
    if ((((fak)localObject2).b()) || (((fak)localObject2).a()))
    {
      localObject3 = new StrictMode.ThreadPolicy.Builder();
      StrictMode.VmPolicy.Builder localBuilder = new StrictMode.VmPolicy.Builder();
      ((StrictMode.ThreadPolicy.Builder)localObject3).detectAll();
      localBuilder.detectAll();
      ((StrictMode.ThreadPolicy.Builder)localObject3).penaltyLog();
      localBuilder.penaltyLog();
      if (((fak)localObject2).a())
      {
        ezi.c("Babel", "Enable strict mode dialog.", new Object[0]);
        ((StrictMode.ThreadPolicy.Builder)localObject3).penaltyDialog();
        StrictMode.setThreadPolicy(((StrictMode.ThreadPolicy.Builder)localObject3).build());
        StrictMode.setVmPolicy(localBuilder.build());
      }
    }
    else
    {
      localNoSuchMethodError.b(bwd.class);
      b.registerComponentCallbacks(new dij(this));
      localObject2 = b;
      if ((!aal.a((Context)localObject2, "babel_healthcheck_memory_enabled", false)) && (!aal.a((Context)localObject2, "babel_healthcheck_timer_enabled", false))) {
        break label824;
      }
      i = 1;
      label759:
      if (i != 0) {
        break label829;
      }
      ezi.a("Babel_Prime", "startMemoryMonitor disabled", new Object[0]);
    }
    for (;;)
    {
      long l2 = SystemClock.elapsedRealtime();
      ((axz)localNoSuchMethodError.a(axz.class)).a(l1, l2);
      a.c("onApplicationStartup");
      return;
      ezi.c("Babel", "Enable strict logging.", new Object[0]);
      break;
      label824:
      i = 0;
      break label759;
      label829:
      ezi.c("Babel_Prime", "startMemoryMonitor", new Object[0]);
      ilh.a((Context)localObject2, hmn.class);
      hmn.a();
    }
  }
  
  void b()
  {
    bdp localbdp = aal.a(b);
    boolean bool1 = ((fak)ilh.a(b, fak.class)).a();
    boolean bool2 = localbdp.a("babel_asserts", true);
    if ((localbdp.a("babel_expensive_asserts", false)) || (bool1)) {}
    for (bool1 = true;; bool1 = false)
    {
      hbs.a = bool2;
      hbs.b = bool1;
      ezi.a();
      DebugService.a(b);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dih
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */