import android.content.Context;
import android.os.Handler;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class diu
  implements hpw, iox, ioy, ioz
{
  static final boolean a = false;
  boolean b;
  djc[] c;
  final Handler d = new Handler();
  Context e;
  int f = -1;
  epc g;
  haw h;
  final Runnable i = new diw(this);
  private final eap j = new div(this);
  
  static
  {
    imx localimx = ezi.f;
  }
  
  public diu(Context paramContext, iog paramiog)
  {
    e = paramContext;
    g = ((epc)ilh.a(paramContext, epc.class));
    paramiog.a(this);
    ((hpu)ilh.a(paramContext, hpu.class)).a(this);
    c = new djc[] { new dix(this), new djb(this), new dja(this), new diy(this) };
  }
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    f = paramInt2;
    h = ((hba)ilh.a(e, hba.class)).a(paramInt2);
    c();
  }
  
  public void b()
  {
    b = true;
    c();
  }
  
  public void c()
  {
    i.run();
  }
  
  public void s_()
  {
    RealTimeChatService.a(j);
    c();
  }
  
  public void t_()
  {
    RealTimeChatService.b(j);
  }
}

/* Location:
 * Qualified Name:     diu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */