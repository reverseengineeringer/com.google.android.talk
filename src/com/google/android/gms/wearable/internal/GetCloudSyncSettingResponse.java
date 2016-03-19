package com.google.android.gms.wearable.internal;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gtc;

public class GetCloudSyncSettingResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<GetCloudSyncSettingResponse> CREATOR = new gtc();
  public final int a;
  public final int b;
  public final boolean c;
  
  public GetCloudSyncSettingResponse(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramBoolean;
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
    aal.a(paramParcel, 3, c);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.GetCloudSyncSettingResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */