import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;

public final class aqd
  implements api<Uri, ParcelFileDescriptor>, aqe<ParcelFileDescriptor>
{
  public ajf<ParcelFileDescriptor> a(Context paramContext, Uri paramUri)
  {
    return new ajo(paramContext, paramUri);
  }
  
  public apg<Uri, ParcelFileDescriptor> a(Context paramContext, apo paramapo)
  {
    return new aqc(paramContext, this);
  }
}

/* Location:
 * Qualified Name:     aqd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */