import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.ParcelFileDescriptor;

public final class anw
  implements anv<ParcelFileDescriptor>, api<Uri, ParcelFileDescriptor>
{
  public ajf<ParcelFileDescriptor> a(AssetManager paramAssetManager, String paramString)
  {
    return new ajn(paramAssetManager, paramString);
  }
  
  public apg<Uri, ParcelFileDescriptor> a(Context paramContext, apo paramapo)
  {
    return new anu(paramContext.getAssets(), this);
  }
}

/* Location:
 * Qualified Name:     anw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */