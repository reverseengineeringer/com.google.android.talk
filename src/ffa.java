import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Base64;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Asset;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.concurrent.TimeUnit;

final class ffa
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<ffa> CREATOR = new ffb();
  private final Uri a;
  private final Bitmap b;
  
  ffa(Uri paramUri, Bitmap paramBitmap)
  {
    a = paramUri;
    b = paramBitmap;
  }
  
  protected ffa(Parcel paramParcel)
  {
    a = ((Uri)paramParcel.readParcelable(Uri.class.getClassLoader()));
    b = ((Bitmap)paramParcel.readParcelable(Bitmap.class.getClassLoader()));
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    paramContext = ((ffi)ilh.a(paramContext, ffi.class)).a(paramContext);
    paramContext.a().a(TimeUnit.MILLISECONDS);
    if (!paramContext.a().e())
    {
      Log.e("BabelUploadConvAvatar", "GoogleApiClient failed to connect");
      return bco.d;
    }
    parambcg = (gro)paramContext.b().a(paramContext.a(), a).a();
    for (;;)
    {
      try
      {
        ffv localffv;
        Asset localAsset;
        int i;
        if ((parambcg.j().a()) && (parambcg.a() > 0))
        {
          grw localgrw = ffe.c((grm)parambcg.a(0));
          localffv = new ffv(localgrw.b());
          localAsset = aal.a(b);
          if (localffv.b() == null)
          {
            i = 1;
            if (i == 0) {
              continue;
            }
            localffv.a(localAsset);
            if (ezi.a("BabelUploadConvAvatar", 2)) {
              String.format("WearableService.uploadAvatar avatar loaded: %s, size: %d", new Object[] { a.getLastPathSegment(), Integer.valueOf(localAsset.a().length) });
            }
            paramContext.b().a(paramContext.a(), localgrw.c()).a();
          }
        }
        else
        {
          return bco.a;
        }
        byte[] arrayOfByte = localAsset.a();
        if (!new String(Base64.encode(ffe.g().digest(arrayOfByte), 11), Charset.defaultCharset()).equals(localffv.b().b()))
        {
          i = 1;
          continue;
          ezi.a("BabelUploadConvAvatar", 2);
        }
        else
        {
          i = 0;
        }
      }
      finally
      {
        paramContext.e();
        parambcg.b();
      }
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeParcelable(b, 0);
  }
}

/* Location:
 * Qualified Name:     ffa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */