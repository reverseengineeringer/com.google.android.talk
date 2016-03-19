import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

final class ele
  extends byp<dpv, dsu>
{
  private final int e;
  private final boolean f;
  
  ele(elc paramelc, int paramInt, boolean paramBoolean)
  {
    e = paramInt;
    f = paramBoolean;
  }
  
  public String a()
  {
    return d.getActivity().getString(StressMode.iY);
  }
  
  protected void a(eau parameau)
  {
    super.a(parameau);
    parameau = (dsu)parameau.c();
    int i = d.a.a();
    Boolean localBoolean = parameau.k();
    boolean bool;
    if (localBoolean != null)
    {
      bool = aal.a(localBoolean, false);
      d.f.a(bool);
      d.b.b(i, bool);
    }
    parameau = parameau.l();
    if (parameau != null)
    {
      bool = aal.a(parameau, false);
      d.e.a(bool);
      d.b.a(i, bool);
    }
  }
  
  protected void a(Exception paramException)
  {
    super.a(paramException);
    if (e == 2)
    {
      paramException = d.f;
      if (f) {
        break label36;
      }
    }
    label36:
    for (boolean bool = true;; bool = false)
    {
      paramException.a(bool);
      return;
    }
  }
  
  public int b()
  {
    return RealTimeChatService.a(d.c, e, f);
  }
  
  public void c()
  {
    if (!j())
    {
      Toast.makeText(d.context, StressMode.ja, 0).show();
      return;
    }
    Toast.makeText(d.context, StressMode.iZ, 0).show();
  }
  
  public Class<dpv> e()
  {
    return dpv.class;
  }
  
  public Class<dsu> f()
  {
    return dsu.class;
  }
}

/* Location:
 * Qualified Name:     ele
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */