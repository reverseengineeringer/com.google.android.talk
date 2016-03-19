import android.net.Uri;
import android.util.Log;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.PutDataRequest;
import java.util.List;

public final class grw
{
  private final PutDataRequest a;
  private final grp b;
  
  public grw(PutDataRequest paramPutDataRequest, grp paramgrp)
  {
    a = paramPutDataRequest;
    b = new grp();
    if (paramgrp != null) {
      b.a(paramgrp);
    }
  }
  
  public static grw a(String paramString)
  {
    return new grw(PutDataRequest.a(paramString), null);
  }
  
  public Uri a()
  {
    return a.a();
  }
  
  public grp b()
  {
    return b;
  }
  
  public PutDataRequest c()
  {
    gba localgba = aal.a(b);
    a.a(gbn.a(a));
    int j = b.size();
    int i = 0;
    while (i < j)
    {
      String str = Integer.toString(i);
      Asset localAsset = (Asset)b.get(i);
      if (str == null) {
        throw new IllegalStateException("asset key cannot be null: " + localAsset);
      }
      if (localAsset == null) {
        throw new IllegalStateException("asset cannot be null: key=" + str);
      }
      if (Log.isLoggable("DataMap", 3)) {
        new StringBuilder("asPutDataRequest: adding asset: ").append(str).append(" ").append(localAsset);
      }
      a.a(str, localAsset);
      i += 1;
    }
    return a;
  }
}

/* Location:
 * Qualified Name:     grw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */