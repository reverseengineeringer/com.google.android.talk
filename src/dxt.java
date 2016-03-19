import android.content.Context;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class dxt
  extends dxu<dna, drq>
{
  public dxt(Context paramContext, int paramInt, dxv paramdxv)
  {
    super(paramContext, paramInt, paramdxv, StressMode.sS);
  }
  
  public int b()
  {
    return RealTimeChatService.e(d);
  }
  
  public Class<dna> e()
  {
    return dna.class;
  }
  
  public Class<drq> f()
  {
    return drq.class;
  }
  
  protected int i()
  {
    return aal.a(aal.oJ, "babel_get_voice_account_info_request_timeout_millis", 20000);
  }
}

/* Location:
 * Qualified Name:     dxt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */