import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;

final class gox
  extends goh
{
  private final fis<glm> a;
  
  public gox(fis<glm> paramfis)
  {
    a = paramfis;
  }
  
  public void a(int paramInt, Bundle paramBundle, DataHolder paramDataHolder)
  {
    if (aal.q(3))
    {
      new StringBuilder("People callback: status=").append(paramInt).append("\nresolution=").append(paramBundle).append("\nholder=").append(paramDataHolder);
      aal.q(3);
    }
    paramBundle = got.a(paramInt, paramBundle);
    paramDataHolder = got.a(paramDataHolder);
    a.a(new gpa(paramBundle, paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     gox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */