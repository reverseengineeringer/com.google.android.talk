import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

public class hum
{
  final SparseArray<hty> a;
  final List<htu> b;
  final hud c;
  private final Context d;
  private final Queue<htu> e;
  private final Handler f;
  private final htw g;
  private int h;
  
  hum(Context paramContext)
  {
    d = paramContext;
    a = new SparseArray();
    b = new ArrayList();
    e = new LinkedBlockingQueue();
    f = new Handler(Looper.getMainLooper());
    c = new hud(paramContext, "background_results.bin");
    h = PreferenceManager.getDefaultSharedPreferences(d).getInt("bom_last_listener_id", 0);
    g = ((htw)ilh.a(paramContext, htw.class));
  }
  
  int a()
  {
    aal.w();
    int i = h + 1;
    h = i;
    if (i == 0) {
      h += 1;
    }
    return h;
  }
  
  public void a(htu paramhtu, hty paramhty)
  {
    aal.w();
    int i = 0;
    if (paramhty != null) {
      i = paramhty.c();
    }
    paramhtu.a(i);
    b.add(paramhtu);
    e.add(paramhtu);
    g.a();
    if (Log.isLoggable("BackgroundTask", 3))
    {
      paramhtu = String.valueOf(paramhtu.h());
      new StringBuilder(String.valueOf(paramhtu).length() + 45).append("Start background task: ").append(paramhtu).append(", manager: ").append(i);
    }
  }
  
  void a(htu paramhtu, hus paramhus)
  {
    juc.a(b, new hun(this, paramhtu, paramhus)).run();
  }
  
  public void a(hty paramhty)
  {
    aal.w();
    int k = paramhty.c();
    a.put(k, paramhty);
    if (Log.isLoggable("BackgroundTask", 3)) {
      new StringBuilder(29).append("Register manager: ").append(k);
    }
    String[] arrayOfString = paramhty.d();
    int m = arrayOfString.length;
    int i = 0;
    while (i < m)
    {
      String str1 = arrayOfString[i];
      int j = paramhty.d(str1) - b(paramhty, str1);
      while (j > 0)
      {
        hus localhus = c.a(k, str1);
        if (Log.isLoggable("BackgroundTask", 4))
        {
          String str2 = String.valueOf(localhus);
          new StringBuilder(String.valueOf(str1).length() + 40 + String.valueOf(str2).length()).append("Deliver saved background task result: ").append(str1).append(", ").append(str2);
        }
        paramhty.a(str1, localhus);
        j -= 1;
      }
      i += 1;
    }
  }
  
  public boolean a(hty paramhty, String paramString)
  {
    return b(paramhty, paramString) > 0;
  }
  
  public int b(hty paramhty, String paramString)
  {
    aal.w();
    int k = paramhty.c();
    int m = b.size();
    int j = 0;
    int i = 0;
    if (j < m)
    {
      paramhty = (htu)b.get(j);
      if ((paramhty.i() != k) || (!paramhty.h().equals(paramString))) {
        break label82;
      }
      i += 1;
    }
    label82:
    for (;;)
    {
      j += 1;
      break;
      return i;
    }
  }
  
  public void b(hty paramhty)
  {
    aal.w();
    int i = paramhty.c();
    a.remove(i);
    if (Log.isLoggable("BackgroundTask", 3)) {
      new StringBuilder(31).append("Unregister manager: ").append(i);
    }
  }
  
  boolean b()
  {
    return !b.isEmpty();
  }
  
  htu c()
  {
    return (htu)e.poll();
  }
  
  public void c(hty paramhty)
  {
    int k = paramhty.c();
    int m = b.size();
    int j = 0;
    int i = 0;
    if (j < m)
    {
      paramhty = (htu)b.get(j);
      if (paramhty.i() != k) {
        break label124;
      }
      paramhty.a(0);
      i += 1;
    }
    label124:
    for (;;)
    {
      j += 1;
      break;
      j = c.a(k);
      if (Log.isLoggable("BackgroundTask", 3)) {
        new StringBuilder(95).append("Permanently remove manager: ").append(k).append(", pending ops: ").append(i).append(", results dropped: ").append(j);
      }
      return;
    }
  }
  
  void c(hty paramhty, String paramString)
  {
    int j = 0;
    if (paramhty != null) {}
    for (int i = paramhty.c();; i = 0)
    {
      int k = b.size();
      while (j < k)
      {
        paramhty = (htu)b.get(j);
        if ((paramhty.i() == i) && (paramhty.h().equals(paramString))) {
          paramhty.f();
        }
        j += 1;
      }
      return;
    }
  }
  
  Handler d()
  {
    return f;
  }
  
  void e()
  {
    c.a();
    PreferenceManager.getDefaultSharedPreferences(d).edit().putInt("bom_last_listener_id", h).apply();
  }
}

/* Location:
 * Qualified Name:     hum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */