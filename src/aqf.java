import android.content.Context;
import android.net.Uri;
import java.io.InputStream;

public final class aqf
  implements api<Uri, InputStream>, aqe<InputStream>
{
  public ajf<InputStream> a(Context paramContext, Uri paramUri)
  {
    return new ajv(paramContext, paramUri);
  }
  
  public apg<Uri, InputStream> a(Context paramContext, apo paramapo)
  {
    return new aqc(paramContext, this);
  }
}

/* Location:
 * Qualified Name:     aqf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */