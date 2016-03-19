import com.google.android.libraries.hangouts.video.internal.CallService;
import java.io.IOException;

final class hem
  implements hbp<kiz>, Runnable
{
  private final hca b;
  private final kju c;
  private final mdx d;
  private String e;
  
  hem(hel paramhel, hca paramhca, kju paramkju, mdx parammdx)
  {
    b = paramhca;
    c = paramkju;
    d = parammdx;
  }
  
  public void run()
  {
    hlk.a(4, "vclib", "Beginning LogData upload.");
    try
    {
      e = b.a(a.a, "oauth2:https://www.googleapis.com/auth/hangouts ");
      Object localObject1 = new jxm();
      a = Integer.valueOf(1);
      d = Long.valueOf(CallService.a(a.a));
      Object localObject2 = new jxj();
      localObject1 = a.a(e, (jxm)localObject1, (jxj)localObject2, d);
      localObject2 = new kiy();
      if (c.f != null) {
        a = c.f.a;
      }
      b = c;
      b.u = Long.valueOf(System.currentTimeMillis());
      ((hbl)localObject1).a("media_sessions/log", (lyi)localObject2, kiz.class, this, 60000, 5);
      return;
    }
    catch (IOException localIOException)
    {
      hlk.a("vclib", "LogData upload failed to get credentials for user", localIOException);
      return;
    }
    catch (fgj localfgj)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     hem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */