import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.net.Uri;
import android.widget.ArrayAdapter;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class ekq
{
  private final Context a;
  private final hpz b;
  
  ekq(Context paramContext)
  {
    a = paramContext;
    b = ((hpz)ilh.a(paramContext, hpz.class));
  }
  
  public static eku a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return eku.b;
    case 3: 
      return eku.a;
    }
    return eku.c;
  }
  
  static void a(int paramInt1, int paramInt2)
  {
    long l1 = aal.a((Integer)b().get(paramInt2), 0);
    if (l1 == 0L)
    {
      RealTimeChatService.a(paramInt1, -1L);
      return;
    }
    long l2 = System.currentTimeMillis();
    RealTimeChatService.a(paramInt1, TimeUnit.MILLISECONDS.toMicros(l1 + l2));
  }
  
  private static List<Integer> b()
  {
    ArrayList localArrayList = new ArrayList(7);
    int i = 0;
    while (i < 7)
    {
      int j = new int[] { 0, 1, 2, 4, 8, 24, 72 }[i];
      localArrayList.add(Integer.valueOf((int)TimeUnit.HOURS.toMillis(j)));
      i += 1;
    }
    if (ezc.a())
    {
      localArrayList.add(1, Integer.valueOf((int)TimeUnit.MINUTES.toMillis(1L)));
      localArrayList.add(2, Integer.valueOf((int)TimeUnit.MINUTES.toMillis(5L)));
      localArrayList.add(3, Integer.valueOf((int)TimeUnit.MINUTES.toMillis(10L)));
    }
    return localArrayList;
  }
  
  public Uri a(int paramInt, eku parameku)
  {
    return ezc.c(b(paramInt, parameku));
  }
  
  public String a(String paramString, int paramInt)
  {
    if ("sms_notification_sound_key".equals(paramString)) {
      paramInt = b.b("SMS");
    }
    String str = b.a(paramInt).b(paramString);
    if (str != null) {
      return str;
    }
    if ("hangout_sound_key".equals(paramString)) {
      return ezc.b(aal.hL);
    }
    return ezc.b(aal.hM);
  }
  
  public List<String> a()
  {
    Resources localResources = a.getResources();
    Object localObject = b();
    ArrayList localArrayList = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      int i = aal.a((Integer)((Iterator)localObject).next(), 0);
      if (i == 0)
      {
        localArrayList.add(localResources.getString(StressMode.bC));
      }
      else if (i < TimeUnit.HOURS.toMillis(1L))
      {
        i = (int)TimeUnit.MILLISECONDS.toMinutes(i);
        localArrayList.add(localResources.getQuantityString(aal.hj, i, new Object[] { Integer.valueOf(i) }));
      }
      else
      {
        i = (int)TimeUnit.MILLISECONDS.toHours(i);
        localArrayList.add(localResources.getQuantityString(aal.hi, i, new Object[] { Integer.valueOf(i) }));
      }
    }
    return localArrayList;
  }
  
  public void a(int paramInt, long paramLong)
  {
    b.b(paramInt).b("dnd_expiration", paramLong).d();
  }
  
  public void a(int paramInt, String paramString)
  {
    int i = a().indexOf(paramString);
    if (i == -1)
    {
      ezi.e("Babel", "Unrecognized DND choice", new Object[0]);
      return;
    }
    a(paramInt, i);
  }
  
  public void a(Activity paramActivity, int paramInt, Runnable paramRunnable)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity);
    paramActivity = new ArrayAdapter(paramActivity, aal.fC);
    Object localObject = a().iterator();
    while (((Iterator)localObject).hasNext()) {
      paramActivity.add((String)((Iterator)localObject).next());
    }
    localBuilder.setTitle(StressMode.bz);
    localObject = new ekr(this, paramInt, paramRunnable);
    localBuilder.setOnCancelListener(new eks(this, paramRunnable));
    localBuilder.setAdapter(paramActivity, (DialogInterface.OnClickListener)localObject);
    localBuilder.show();
  }
  
  public String b(int paramInt, eku parameku)
  {
    switch (ekt.a[parameku.ordinal()])
    {
    default: 
      parameku = "chat_notification_sound_key";
    }
    for (;;)
    {
      return a(parameku, paramInt);
      parameku = "sms_notification_sound_key";
      continue;
      parameku = "gv_sms_sound_key";
      continue;
      parameku = "gv_voicemail_sound_key";
    }
  }
  
  public boolean b(int paramInt)
  {
    if (!b.a(paramInt).a("chat_notification_enabled_key", true)) {
      return false;
    }
    long l = ((ekq)ilh.a(a, ekq.class)).e(paramInt) / 1000L;
    return System.currentTimeMillis() > l;
  }
  
  public boolean c(int paramInt)
  {
    return b.a(paramInt).a("hangouts_notification_enabled_key", true);
  }
  
  public boolean d(int paramInt)
  {
    return b.a(paramInt).a("hangout_vibrate_boolean_key", true);
  }
  
  public long e(int paramInt)
  {
    if (paramInt == -1) {
      return 0L;
    }
    return b.a(paramInt).a("dnd_expiration", 0L);
  }
}

/* Location:
 * Qualified Name:     ekq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */