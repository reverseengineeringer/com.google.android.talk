package com.google.android.gms.wearable.internal;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gtg;

public class GetDataItemResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<GetDataItemResponse> CREATOR = new gtg();
  public final int a;
  public final int b;
  public final DataItemParcelable c;
  
  public GetDataItemResponse(int paramInt1, int paramInt2, DataItemParcelable paramDataItemParcelable)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramDataItemParcelable;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.c(paramParcel, 2, b);
    aal.a(paramParcel, 3, c, paramInt);
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.GetDataItemResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */