package com.google.android.gms.googlehelp.internal.common;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fzg;

public class TogglingData
  implements SafeParcelable
{
  public static final Parcelable.Creator<TogglingData> CREATOR = new fzg();
  final int a;
  String b;
  String c;
  String d;
  
  private TogglingData()
  {
    a = 1;
  }
  
  public TogglingData(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    a = paramInt;
    b = paramString1;
    c = paramString2;
    d = paramString3;
  }
  
  public TogglingData a(String paramString)
  {
    d = paramString;
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, b);
    aal.a(paramParcel, 3, c);
    aal.a(paramParcel, 4, d);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.googlehelp.internal.common.TogglingData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */