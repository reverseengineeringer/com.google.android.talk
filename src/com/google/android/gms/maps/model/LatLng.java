package com.google.android.gms.maps.model;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gkq;

public final class LatLng
  implements SafeParcelable
{
  public static final gkq CREATOR = new gkq();
  public final double a;
  public final double b;
  private final int c;
  
  public LatLng(double paramDouble1, double paramDouble2)
  {
    this(1, paramDouble1, paramDouble2);
  }
  
  public LatLng(int paramInt, double paramDouble1, double paramDouble2)
  {
    c = paramInt;
    if ((-180.0D <= paramDouble2) && (paramDouble2 < 180.0D)) {}
    for (b = paramDouble2;; b = (((paramDouble2 - 180.0D) % 360.0D + 360.0D) % 360.0D - 180.0D))
    {
      a = Math.max(-90.0D, Math.min(90.0D, paramDouble1));
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
      if (!(paramObject instanceof LatLng)) {
        return false;
      }
      paramObject = (LatLng)paramObject;
    } while ((Double.doubleToLongBits(a) == Double.doubleToLongBits(a)) && (Double.doubleToLongBits(b) == Double.doubleToLongBits(b)));
    return false;
  }
  
  public int hashCode()
  {
    long l = Double.doubleToLongBits(a);
    int i = (int)(l ^ l >>> 32);
    l = Double.doubleToLongBits(b);
    return (i + 31) * 31 + (int)(l ^ l >>> 32);
  }
  
  public String toString()
  {
    return "lat/lng: (" + a + "," + b + ")";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a());
    aal.a(paramParcel, 2, a);
    aal.a(paramParcel, 3, b);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.LatLng
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */