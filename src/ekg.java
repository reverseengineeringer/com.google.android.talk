import android.content.Context;
import android.content.res.Resources;
import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;

final class ekg
  extends byp<dnp, dsp>
{
  final dnq d;
  private final Context e;
  private final int f;
  private final iiv g;
  private final bih h;
  private final String i;
  
  protected ekg(Context paramContext, int paramInt, iiv paramiiv, bih parambih, dnq paramdnq, String paramString)
  {
    e = paramContext;
    f = paramInt;
    g = paramiiv;
    h = parambih;
    i = paramString;
    d = paramdnq;
  }
  
  public String a()
  {
    return e.getResources().getString(StressMode.ab);
  }
  
  protected void a(eau parameau)
  {
    super.a(parameau);
    bie.b(f, h, d);
  }
  
  protected void a(Exception paramException)
  {
    super.a(paramException);
    g.a(i);
    g.b(g.f()[g.b(i)]);
  }
  
  public int b()
  {
    aal.a(dvd.e(f), 1594);
    return bie.a(f, h, d);
  }
  
  public void c()
  {
    if (!j())
    {
      Toast.makeText(e, StressMode.ad, 0).show();
      return;
    }
    Toast.makeText(e, StressMode.ac, 0).show();
  }
  
  public Class<dnp> e()
  {
    return dnp.class;
  }
  
  public Class<dsp> f()
  {
    return dsp.class;
  }
}

/* Location:
 * Qualified Name:     ekg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */