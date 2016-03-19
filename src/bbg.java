import android.content.Context;
import android.os.Bundle;

public final class bbg
  implements ilu, iov, ioz
{
  private static final ezv a = ezv.a("CallMediaTypeRefreshMixin");
  private Context b;
  private ilh c;
  private bcm d;
  
  public bbg(iog paramiog)
  {
    paramiog.a(this);
  }
  
  public void X_()
  {
    String str = a.b("CallMediaTypeRefreshMixin.onResume");
    hpu localhpu = (hpu)c.a(hpu.class);
    if ((localhpu.b()) && (aal.a(b, "babel_enable_call_media_type_refresh", true)))
    {
      long l = aal.a(b, "babel_call_media_type_refresh_initial_delay_ms", eea.y);
      d.a(new bbj(localhpu.a(), l));
    }
    a.c(str);
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    b = paramContext;
    c = paramilh;
    d = ((bcm)paramilh.a(bcm.class));
  }
}

/* Location:
 * Qualified Name:     bbg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */