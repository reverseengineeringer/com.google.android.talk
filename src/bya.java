import android.content.res.Resources;
import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class bya
  extends byp<dnn, drv>
{
  private final ba d;
  private final bfd e;
  private final String f;
  private final String g;
  private final String h;
  private final boolean i;
  
  public bya(ba paramba, bfd parambfd, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    d = paramba;
    e = parambfd;
    f = paramString1;
    g = paramString2;
    h = paramString3;
    i = paramBoolean;
  }
  
  public String a()
  {
    return d.getResources().getString(StressMode.G, new Object[] { ezc.d(f) });
  }
  
  public int b()
  {
    return RealTimeChatService.a(e.g(), g, h, f, true, true);
  }
  
  public void c()
  {
    if (byp.j()) {}
    for (int j = StressMode.E;; j = StressMode.F)
    {
      Toast.makeText(d, d.getString(j, new Object[] { f }), 0).show();
      return;
    }
  }
  
  public void d()
  {
    if (i)
    {
      d.setResult(1);
      d.finish();
    }
  }
  
  public Class<dnn> e()
  {
    return dnn.class;
  }
  
  public Class<drv> f()
  {
    return drv.class;
  }
}

/* Location:
 * Qualified Name:     bya
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */