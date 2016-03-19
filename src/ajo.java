import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;

public final class ajo
  extends ajt<ParcelFileDescriptor>
{
  public ajo(Context paramContext, Uri paramUri)
  {
    super(paramContext, paramUri);
  }
  
  public Class<ParcelFileDescriptor> d()
  {
    return ParcelFileDescriptor.class;
  }
}

/* Location:
 * Qualified Name:     ajo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */