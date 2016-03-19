package com.google.android.gms.maps.model;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fmh;
import gkx;
import java.util.Arrays;

public class StreetViewPanoramaLocation
  implements SafeParcelable
{
  public static final gkx CREATOR = new gkx();
  public final StreetViewPanoramaLink[] a;
  public final LatLng b;
  public final String c;
  private final int d;
  
  public StreetViewPanoramaLocation(int paramInt, StreetViewPanoramaLink[] paramArrayOfStreetViewPanoramaLink, LatLng paramLatLng, String paramString)
  {
    d = paramInt;
    a = paramArrayOfStreetViewPanoramaLink;
    b = paramLatLng;
    c = paramString;
  }
  
  int a()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof StreetViewPanoramaLocation)) {
        return false;
      }
      paramObject = (StreetViewPanoramaLocation)paramObject;
    } while ((c.equals(c)) && (b.equals(b)));
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { b, c });
  }
  
  public String toString()
  {
    return aal.c(this).a("panoId", c).a("position", b.toString()).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a());
    aal.a(paramParcel, 2, a, paramInt);
    aal.a(paramParcel, 3, b, paramInt);
    aal.a(paramParcel, 4, c);
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */