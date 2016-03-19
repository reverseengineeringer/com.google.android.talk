package com.google.android.gms.maps.model;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fmh;
import gkp;
import java.util.Arrays;

public final class LatLngBounds
  implements SafeParcelable
{
  public static final gkp CREATOR = new gkp();
  public final LatLng a;
  public final LatLng b;
  private final int c;
  
  public LatLngBounds(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2)
  {
    aal.b(paramLatLng1, "null southwest");
    aal.b(paramLatLng2, "null northeast");
    if (a >= a) {}
    for (boolean bool = true;; bool = false)
    {
      aal.a(bool, "southern latitude exceeds northern latitude (%s > %s)", new Object[] { Double.valueOf(a), Double.valueOf(a) });
      c = paramInt;
      a = paramLatLng1;
      b = paramLatLng2;
      return;
    }
  }
  
  private int a()
  {
    return c;
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
      if (!(paramObject instanceof LatLngBounds)) {
        return false;
      }
      paramObject = (LatLngBounds)paramObject;
    } while ((a.equals(a)) && (b.equals(b)));
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { a, b });
  }
  
  public String toString()
  {
    return aal.c(this).a("southwest", a).a("northeast", b).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a());
    aal.a(paramParcel, 2, a, paramInt);
    aal.a(paramParcel, 3, b, paramInt);
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.LatLngBounds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */