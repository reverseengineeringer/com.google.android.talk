package com.google.android.gms.maps.model;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gks;

public final class PointOfInterest
  implements SafeParcelable
{
  public static final gks CREATOR = new gks();
  public final LatLng a;
  public final String b;
  public final String c;
  private final int d;
  
  public PointOfInterest(int paramInt, LatLng paramLatLng, String paramString1, String paramString2)
  {
    d = paramInt;
    a = paramLatLng;
    b = paramString1;
    c = paramString2;
  }
  
  private int a()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a());
    aal.a(paramParcel, 2, a, paramInt);
    aal.a(paramParcel, 3, b);
    aal.a(paramParcel, 4, c);
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.PointOfInterest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */