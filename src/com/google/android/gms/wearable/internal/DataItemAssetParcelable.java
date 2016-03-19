package com.google.android.gms.wearable.internal;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import grn;
import gsq;

public class DataItemAssetParcelable
  implements SafeParcelable, grn
{
  public static final Parcelable.Creator<DataItemAssetParcelable> CREATOR = new gsq();
  final int a;
  private final String b;
  private final String c;
  
  public DataItemAssetParcelable(int paramInt, String paramString1, String paramString2)
  {
    a = paramInt;
    b = paramString1;
    c = paramString2;
  }
  
  public DataItemAssetParcelable(grn paramgrn)
  {
    a = 1;
    b = ((String)aal.d(paramgrn.R_()));
    c = ((String)aal.d(paramgrn.b()));
  }
  
  public boolean O_()
  {
    return true;
  }
  
  public String R_()
  {
    return b;
  }
  
  public String b()
  {
    return c;
  }
  
  public grn c()
  {
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DataItemAssetParcelable[");
    localStringBuilder.append("@");
    localStringBuilder.append(Integer.toHexString(hashCode()));
    if (b == null) {
      localStringBuilder.append(",noid");
    }
    for (;;)
    {
      localStringBuilder.append(", key=");
      localStringBuilder.append(c);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
      localStringBuilder.append(",");
      localStringBuilder.append(b);
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, R_());
    aal.a(paramParcel, 3, b());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.DataItemAssetParcelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */