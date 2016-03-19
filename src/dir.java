import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public final class dir
  implements Thread.UncaughtExceptionHandler
{
  private static final boolean c = false;
  final Context a;
  final Thread.UncaughtExceptionHandler b;
  
  static
  {
    new imx("debug.chat.crashinfo", (byte)0);
  }
  
  public dir(Context paramContext, boolean paramBoolean)
  {
    a = paramContext;
    b = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(new imz(paramContext, this, new ina(this)));
    if (paramBoolean) {
      PreferenceManager.getDefaultSharedPreferences(a).edit().putInt("crashes", 0).apply();
    }
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(a);
    int i;
    int j;
    label109:
    int k;
    if (paramBoolean)
    {
      i = 0;
      localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(a);
      if ((paramBoolean) || (!localSharedPreferences.getBoolean("crashed", false))) {
        break label608;
      }
      j = 1;
      if ((paramBoolean) || (j != 0)) {
        localSharedPreferences.edit().putBoolean("crashed", false).commit();
      }
      if (j == 0) {
        break label645;
      }
      localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramContext);
      String str = localSharedPreferences.getString("exception_class", null);
      ezi.e("Babel_Crash", "Startup - recovered from crash. Launches: %s exception class:  %s", new Object[] { Integer.valueOf(i), str });
      klf localklf = new klf();
      if (a() != 1) {
        break label614;
      }
      k = 1;
      label205:
      if (k != 0)
      {
        long l = localSharedPreferences.getLong("first_launch", 0L);
        l = localSharedPreferences.getLong("last_crash", 0L) - l;
        ezi.e("Babel_Crash", 64 + "Startup - first crash since version change: " + l, new Object[0]);
        c = Integer.valueOf((int)TimeUnit.MILLISECONDS.toSeconds(l));
      }
      b = Integer.valueOf(i);
      a = str;
      c().a(2369).a(localklf).d();
      localSharedPreferences = paramContext.getSharedPreferences(cfx.class.getName(), 0);
      if (!TextUtils.isEmpty(localSharedPreferences.getString("ONGOING_CALL_SESSION", ""))) {
        break label620;
      }
      k = 0;
      label357:
      if (k != 0) {
        c().a(2714).d();
      }
      localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(a);
      paramBoolean = localSharedPreferences.getBoolean("was_platform_bug", false);
      if (paramBoolean) {
        localSharedPreferences.edit().putBoolean("was_platform_bug", false).commit();
      }
      if (paramBoolean) {
        c().a(2955).d();
      }
      if (c) {
        b();
      }
      label455:
      localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(a);
      if (j == 0) {
        break label659;
      }
      localSharedPreferences.edit().putInt("launches", 1).apply();
    }
    for (;;)
    {
      localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(a);
      paramBoolean = localSharedPreferences.getBoolean("processing_push", false);
      if (paramBoolean) {
        localSharedPreferences.edit().putBoolean("processing_push", false).commit();
      }
      if (paramBoolean)
      {
        ezi.e("Babel", "wasProcessingPush is set; force sync", new Object[0]);
        c().a(2370).d();
        RealTimeChatService.e();
      }
      if (imz.b(paramContext)) {
        c().a(2956).d();
      }
      return;
      i = localSharedPreferences.getInt("launches", 0);
      break;
      label608:
      j = 0;
      break label109;
      label614:
      k = 0;
      break label205;
      label620:
      localSharedPreferences.edit().remove("ONGOING_CALL_SESSION").apply();
      k = 1;
      break label357;
      label645:
      ezi.c("Babel_Crash", "Startup - clean", new Object[0]);
      break label455;
      label659:
      localSharedPreferences.edit().putInt("launches", i + 1).apply();
    }
  }
  
  private int a()
  {
    return PreferenceManager.getDefaultSharedPreferences(a).getInt("crashes", 0);
  }
  
  public static void a(Context paramContext)
  {
    PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putBoolean("processing_push", true).commit();
  }
  
  private void b()
  {
    Iterator localIterator = bff.a(a).iterator();
    while (localIterator.hasNext())
    {
      Integer localInteger = (Integer)localIterator.next();
      aal.c(a, aal.a(localInteger, -1));
    }
  }
  
  private haw c()
  {
    int i = dvd.b(a);
    return ((hba)ilh.a(a, hba.class)).a(i);
  }
  
  public void a(Thread paramThread, Throwable paramThrowable, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 1;
    PreferenceManager.getDefaultSharedPreferences(a).edit().putBoolean("crashed", true).putInt("crashes", a() + 1).putLong("last_crash", System.currentTimeMillis()).putString("exception_class", paramThrowable.getClass().getName()).putBoolean("was_platform_bug", paramBoolean1).commit();
    dis localdis = new dis(this, paramThrowable, paramBoolean2, paramThread);
    if (!aal.v()) {}
    while (i != 0)
    {
      paramThread = String.valueOf(paramThread);
      ezi.d("Babel_Crash", String.valueOf(paramThread).length() + 40 + "Uncaught exception in background thread " + paramThread, paramThrowable);
      aal.a(localdis);
      return;
      i = 0;
    }
    localdis.run();
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    a(paramThread, paramThrowable, false, true);
  }
}

/* Location:
 * Qualified Name:     dir
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */