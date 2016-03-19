import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.InputStream;

public final class anx
  implements anv<InputStream>, api<Uri, InputStream>
{
  public ajf<InputStream> a(AssetManager paramAssetManager, String paramString)
  {
    return new aju(paramAssetManager, paramString);
  }
  
  public apg<Uri, InputStream> a(Context paramContext, apo paramapo)
  {
    return new anu(paramContext.getAssets(), this);
  }
}

/* Location:
 * Qualified Name:     anx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */