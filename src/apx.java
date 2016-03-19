import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;

public final class apx
  implements api<String, ParcelFileDescriptor>
{
  public apg<String, ParcelFileDescriptor> a(Context paramContext, apo paramapo)
  {
    return new apw(paramapo.a(Uri.class, ParcelFileDescriptor.class));
  }
}

/* Location:
 * Qualified Name:     apx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */