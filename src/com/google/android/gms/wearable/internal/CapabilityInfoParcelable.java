package com.google.android.gms.wearable.internal;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import atn;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gut;
import java.util.List;
import java.util.Set;

public class CapabilityInfoParcelable
  implements atn, SafeParcelable
{
  public static final Parcelable.Creator<CapabilityInfoParcelable> CREATOR = new gut();
  final int a;
  private final Object b = new Object();
  private final String c;
  private final List<NodeParcelable> d;
  private Set<atn> e;
  
  public CapabilityInfoParcelable(int paramInt, String paramString, List<NodeParcelable> paramList)
  {
    a = paramInt;
    c = paramString;
    d = paramList;
    e = null;
  }
  
  public String a()
  {
    return c;
  }
  
  public List<NodeParcelable> b()
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
      paramObject = (CapabilityInfoParcelable)paramObject;
      if (a != a) {
        return false;
      }
      if (c != null)
      {
        if (c.equals(c)) {}
      }
      else {
        while (c != null) {
          return false;
        }
      }
      if (d == null) {
        break;
      }
    } while (d.equals(d));
    for (;;)
    {
      return false;
      if (d == null) {
        break;
      }
    }
  }
  
  public int hashCode()
  {
    int j = 0;
    int k = a;
    if (c != null) {}
    for (int i = c.hashCode();; i = 0)
    {
      if (d != null) {
        j = d.hashCode();
      }
      return (i + k * 31) * 31 + j;
    }
  }
  
  public String toString()
  {
    return "CapabilityInfo{" + c + ", " + d + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, a());
    aal.c(paramParcel, 3, b());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.CapabilityInfoParcelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */