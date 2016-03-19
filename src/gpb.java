import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import java.util.Arrays;

final class gpb
  extends goh
{
  private final gny a;
  
  public gpb(gny paramgny)
  {
    a = paramgny;
  }
  
  public void a(int paramInt, Bundle paramBundle, DataHolder[] paramArrayOfDataHolder)
  {
    if (aal.q(3))
    {
      new StringBuilder("People callback: status=").append(paramInt).append("\nresolution=").append(paramBundle).append("\nholders=").append(Arrays.toString(paramArrayOfDataHolder));
      aal.q(3);
    }
    paramBundle = got.b(paramInt, paramBundle);
    a.a(paramBundle, paramArrayOfDataHolder);
  }
}

/* Location:
 * Qualified Name:     gpb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */