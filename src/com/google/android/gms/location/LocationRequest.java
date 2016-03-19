package com.google.android.gms.location;

import aal;
import android.os.Parcel;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gdq;
import java.util.Arrays;

public final class LocationRequest
  implements SafeParcelable
{
  public static final gdq CREATOR = new gdq();
  int a;
  long b;
  long c;
  boolean d;
  long e;
  int f;
  float g;
  long h;
  private final int i;
  
  public LocationRequest()
  {
    i = 1;
    a = 102;
    b = 3600000L;
    c = 600000L;
    d = false;
    e = Long.MAX_VALUE;
    f = Integer.MAX_VALUE;
    g = 0.0F;
    h = 0L;
  }
  
  public LocationRequest(int paramInt1, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, long paramLong3, int paramInt3, float paramFloat, long paramLong4)
  {
    i = paramInt1;
    a = paramInt2;
    b = paramLong1;
    c = paramLong2;
    d = paramBoolean;
    e = paramLong3;
    f = paramInt3;
    g = paramFloat;
    h = paramLong4;
  }
  
  private int a()
  {
    return i;
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
      if (!(paramObject instanceof LocationRequest)) {
        return false;
      }
      paramObject = (LocationRequest)paramObject;
    } while ((a == a) && (b == b) && (c == c) && (d == d) && (e == e) && (f == f) && (g == g));
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(a), Long.valueOf(b), Long.valueOf(c), Boolean.valueOf(d), Long.valueOf(e), Integer.valueOf(f), Float.valueOf(g) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = localStringBuilder1.append("Request[");
    String str;
    switch (a)
    {
    case 101: 
    case 103: 
    default: 
      str = "???";
    }
    for (;;)
    {
      localStringBuilder2.append(str);
      if (a != 105)
      {
        localStringBuilder1.append(" requested=");
        localStringBuilder1.append(b + "ms");
      }
      localStringBuilder1.append(" fastest=");
      localStringBuilder1.append(c + "ms");
      if (h > b)
      {
        localStringBuilder1.append(" maxWait=");
        localStringBuilder1.append(h + "ms");
      }
      if (e != Long.MAX_VALUE)
      {
        long l1 = e;
        long l2 = SystemClock.elapsedRealtime();
        localStringBuilder1.append(" expireIn=");
        localStringBuilder1.append(l1 - l2 + "ms");
      }
      if (f != Integer.MAX_VALUE) {
        localStringBuilder1.append(" num=").append(f);
      }
      localStringBuilder1.append(']');
      return localStringBuilder1.toString();
      str = "PRIORITY_HIGH_ACCURACY";
      continue;
      str = "PRIORITY_BALANCED_POWER_ACCURACY";
      continue;
      str = "PRIORITY_LOW_POWER";
      continue;
      str = "PRIORITY_NO_POWER";
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.c(paramParcel, 1000, a());
    aal.a(paramParcel, 2, b);
    aal.a(paramParcel, 3, c);
    aal.a(paramParcel, 4, d);
    aal.a(paramParcel, 5, e);
    aal.c(paramParcel, 6, f);
    aal.a(paramParcel, 7, g);
    aal.a(paramParcel, 8, h);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */