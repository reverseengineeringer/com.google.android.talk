package com.google.android.gms.location;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gdn;
import gdo;
import java.util.Arrays;
import java.util.Comparator;

public class DetectedActivity
  implements SafeParcelable
{
  public static final gdo CREATOR = new gdo();
  public static final Comparator<DetectedActivity> a = new gdn();
  int b;
  int c;
  private final int d;
  
  public DetectedActivity(int paramInt1, int paramInt2, int paramInt3)
  {
    d = paramInt1;
    b = paramInt2;
    c = paramInt3;
  }
  
  public int a()
  {
    int j = b;
    int i = j;
    if (j > 15) {
      i = 4;
    }
    return i;
  }
  
  public int b()
  {
    return c;
  }
  
  public int c()
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
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (DetectedActivity)paramObject;
    } while ((b == b) && (c == c));
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(b), Integer.valueOf(c) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("DetectedActivity [type=");
    int i = a();
    String str;
    switch (i)
    {
    case 6: 
    default: 
      str = Integer.toString(i);
    }
    for (;;)
    {
      return str + ", confidence=" + c + "]";
      str = "IN_VEHICLE";
      continue;
      str = "ON_BICYCLE";
      continue;
      str = "ON_FOOT";
      continue;
      str = "STILL";
      continue;
      str = "UNKNOWN";
      continue;
      str = "TILTING";
      continue;
      str = "WALKING";
      continue;
      str = "RUNNING";
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, b);
    aal.c(paramParcel, 1000, c());
    aal.c(paramParcel, 2, c);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.DetectedActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */