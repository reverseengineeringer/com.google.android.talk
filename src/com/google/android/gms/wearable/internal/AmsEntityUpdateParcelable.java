package com.google.android.gms.wearable.internal;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import atn;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gur;

public class AmsEntityUpdateParcelable
  implements atn, SafeParcelable
{
  public static final Parcelable.Creator<AmsEntityUpdateParcelable> CREATOR = new gur();
  final int a;
  private byte b;
  private final byte c;
  private final String d;
  
  public AmsEntityUpdateParcelable(int paramInt, byte paramByte1, byte paramByte2, String paramString)
  {
    b = paramByte1;
    a = paramInt;
    c = paramByte2;
    d = paramString;
  }
  
  public byte a()
  {
    return b;
  }
  
  public byte b()
  {
    return c;
  }
  
  public String c()
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
      paramObject = (AmsEntityUpdateParcelable)paramObject;
      if (b != b) {
        return false;
      }
      if (a != a) {
        return false;
      }
      if (c != c) {
        return false;
      }
    } while (d.equals(d));
    return false;
  }
  
  public int hashCode()
  {
    return ((a * 31 + b) * 31 + c) * 31 + d.hashCode();
  }
  
  public String toString()
  {
    return "AmsEntityUpdateParcelable{mVersionCode=" + a + ", mEntityId=" + b + ", mAttributeId=" + c + ", mValue='" + d + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, a());
    aal.a(paramParcel, 3, b());
    aal.a(paramParcel, 4, c());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.AmsEntityUpdateParcelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */