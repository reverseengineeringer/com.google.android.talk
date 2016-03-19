import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.libraries.hangouts.video.internal.DecoderManager;
import com.google.android.libraries.hangouts.video.internal.EncoderManager;
import java.util.HashSet;
import java.util.Set;

public final class hde
{
  private static final Set<String> a;
  private static final hgu b = new hgu(new hlp(160, 100), 15);
  private static final hgu c = new hgu(new hlp(320, 200), 15);
  private static final hgu d = new hgu(new hlp(480, 300), 15);
  private static final hgu e = new hgu(new hlp(640, 400), 30);
  private static final hgu f = new hgu(new hlp(960, 600), 30);
  private static final hgu g = new hgu(new hlp(1280, 800), 30);
  private Context h;
  private boolean i;
  
  static
  {
    HashSet localHashSet = new HashSet();
    a = localHashSet;
    localHashSet.add("armeabi-v7a");
    a.add("arm64-v8a");
    a.add("x86");
  }
  
  protected static hgu a(int paramInt)
  {
    if (paramInt > (g.c() + f.c()) / 2) {
      return g;
    }
    if (paramInt > (f.c() + e.c()) / 2) {
      return f;
    }
    if (paramInt > (e.c() + d.c()) / 2) {
      return e;
    }
    if (paramInt > (d.c() + c.c()) / 2) {
      return d;
    }
    return c;
  }
  
  private void b(int paramInt)
  {
    int j = 1;
    Object localObject6 = c;
    Object localObject5 = b;
    hgu localhgu1 = c;
    int k = hdf.b;
    int m = DecoderManager.a(h);
    switch (paramInt)
    {
    default: 
      j = 0;
      boolean bool = EncoderManager.a(h, paramInt);
      if (k >= 2)
      {
        ??? = e;
        if (k >= 4) {
          ??? = f;
        }
        if (j != 0) {
          ??? = g;
        }
        hgu localhgu2 = b;
        if (j != 0) {
          localhgu2 = c;
        }
        localhgu1 = d;
        if ((k >= 4) || (j != 0)) {
          localhgu1 = e;
        }
        if ((k >= 4) && (j != 0))
        {
          localhgu1 = f;
          label140:
          localObject6 = ???;
          localObject5 = localhgu2;
          if (bool)
          {
            localhgu1 = g;
            localObject5 = localhgu2;
            localObject6 = ???;
          }
        }
      }
      break;
    }
    for (;;)
    {
      ??? = gvj.a(h.getContentResolver(), "babel_hangout_max_in_primary_video", null);
      if (??? != null) {
        localObject6 = hgu.a((String)???);
      }
      ??? = gvj.a(h.getContentResolver(), "babel_hangout_max_in_secondary_video", null);
      if (??? != null) {
        localObject5 = hgu.a((String)???);
      }
      ??? = gvj.a(h.getContentResolver(), "babel_hangout_max_out_nofx_video", null);
      if (??? != null) {
        localhgu1 = hgu.a((String)???);
      }
      synchronized (hgu.a)
      {
        hgu.d.put(Integer.valueOf(paramInt), localObject6);
        synchronized (hgu.a)
        {
          hgu.e.put(Integer.valueOf(paramInt), localObject5);
        }
      }
      synchronized (hgu.a)
      {
        hgu.f.put(Integer.valueOf(paramInt), localhgu1);
        if ((hgu.c == null) || (localhgu1.c() > hgu.c.c())) {
          hgu.c = localhgu1;
        }
        return;
        if ((m & 0x1) != 0) {
          break;
        }
        j = 0;
        break;
        if ((m & 0x2) != 0) {
          break;
        }
        j = 0;
        break;
        localObject1 = finally;
        throw ((Throwable)localObject1);
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
      break label140;
    }
  }
  
  public boolean a()
  {
    return i;
  }
  
  public boolean a(Context arg1)
  {
    boolean bool = false;
    h = ???;
    b(0);
    if (EncoderManager.a(h, 1)) {
      b(1);
    }
    for (;;)
    {
      synchronized (hgu.a)
      {
        hgu.b = true;
        hgu.a.notifyAll();
        if (!gvj.a(h.getContentResolver(), "babel_hangout_supported", true))
        {
          hlk.a(5, "vclib", "GServices override - disabling hangout calls");
          i = bool;
          return i;
        }
      }
      if (!h.getPackageManager().hasSystemFeature("android.hardware.microphone")) {
        hlk.a(5, "vclib", "No microphone available for hangout calls");
      }
      if ((a.contains(Build.CPU_ABI)) || (a.contains(Build.CPU_ABI2)))
      {
        bool = true;
      }
      else
      {
        ??? = String.valueOf(Build.CPU_ABI);
        String str = String.valueOf(Build.CPU_ABI2);
        hlk.a(5, "vclib", String.valueOf(???).length() + 47 + String.valueOf(str).length() + "ABI not supported (" + ??? + "," + str + ") - disabling hangout calls");
      }
    }
  }
}

/* Location:
 * Qualified Name:     hde
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */