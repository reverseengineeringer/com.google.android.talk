import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;

public class crx
  implements Parcelable
{
  public static final Parcelable.Creator<crx> CREATOR = new cry();
  public final String a;
  public final LatLng b;
  public final CharSequence c;
  public final CharSequence d;
  
  crx(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = ((LatLng)paramParcel.readParcelable(LatLng.class.getClassLoader()));
    c = paramParcel.readString();
    d = paramParcel.readString();
  }
  
  private crx(String paramString, LatLng paramLatLng, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    a = paramString;
    b = paramLatLng;
    c = paramCharSequence1;
    d = paramCharSequence2;
  }
  
  public static crx a(geo paramgeo)
  {
    return new crx(paramgeo.a(), paramgeo.d(), paramgeo.b(), paramgeo.c());
  }
  
  public geo a()
  {
    return new crz(this);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeParcelable(b, 0);
    paramParcel.writeString(c.toString());
    paramParcel.writeString(d.toString());
  }
}

/* Location:
 * Qualified Name:     crx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */