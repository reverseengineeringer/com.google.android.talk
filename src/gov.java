import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

final class gov
  extends goh
{
  private final fis<glk> a;
  
  public gov(fis<glk> paramfis)
  {
    a = paramfis;
  }
  
  public void a(int paramInt, Bundle paramBundle, DataHolder paramDataHolder)
  {
    if (aal.q(3))
    {
      new StringBuilder("Owner callback: status=").append(paramInt).append("\nresolution=").append(paramBundle).append("\nholder=").append(paramDataHolder);
      aal.q(3);
    }
    Status localStatus = got.a(paramInt, paramBundle);
    if (paramDataHolder == null) {}
    for (paramBundle = null;; paramBundle = new gpu(paramDataHolder))
    {
      a.a(new goy(localStatus, paramBundle));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     gov
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */