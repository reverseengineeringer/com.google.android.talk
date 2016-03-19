import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;

public final class apt
  implements api<Integer, ParcelFileDescriptor>
{
  public apg<Integer, ParcelFileDescriptor> a(Context paramContext, apo paramapo)
  {
    return new aps(paramContext, paramapo.a(Uri.class, ParcelFileDescriptor.class));
  }
}

/* Location:
 * Qualified Name:     apt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */