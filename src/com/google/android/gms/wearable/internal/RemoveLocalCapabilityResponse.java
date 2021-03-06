package com.google.android.gms.wearable.internal;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gue;

public class RemoveLocalCapabilityResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<RemoveLocalCapabilityResponse> CREATOR = new gue();
  public final int a;
  public final int b;
  
  public RemoveLocalCapabilityResponse(int paramInt1, int paramInt2)
  {
    a = paramInt1;
    b = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.c(paramParcel, 2, b);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.RemoveLocalCapabilityResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */