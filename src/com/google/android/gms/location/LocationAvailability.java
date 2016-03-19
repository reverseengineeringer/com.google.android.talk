package com.google.android.gms.location;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gdp;
import java.util.Arrays;

public final class LocationAvailability
  implements SafeParcelable
{
  public static final gdp CREATOR = new gdp();
  int a;
  int b;
  long c;
  int d;
  private final int e;
  
  public LocationAvailability(int paramInt1, int paramInt2, int paramInt3, int paramInt4, long paramLong)
  {
    e = paramInt1;
    d = paramInt2;
    a = paramInt3;
    b = paramInt4;
    c = paramLong;
  }
  
  private int a()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof LocationAvailability)) {}
    do
    {
      return false;
      paramObject = (LocationAvailability)paramObject;
    } while ((d != d) || (a != a) || (b != b) || (c != c));
    return true;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(d), Integer.valueOf(a), Integer.valueOf(b), Long.valueOf(c) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("LocationAvailability[isLocationAvailable: ");
    if (d < 1000) {}
    for (boolean bool = true;; bool = false) {
      return bool + "]";
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.c(paramParcel, 1000, a());
    aal.c(paramParcel, 2, b);
    aal.a(paramParcel, 3, c);
    aal.c(paramParcel, 4, d);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationAvailability
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */