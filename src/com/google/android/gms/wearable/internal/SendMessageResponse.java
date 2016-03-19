package com.google.android.gms.wearable.internal;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import guf;

public class SendMessageResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<SendMessageResponse> CREATOR = new guf();
  public final int a;
  public final int b;
  public final int c;
  
  public SendMessageResponse(int paramInt1, int paramInt2, int paramInt3)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
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
    aal.c(paramParcel, 3, c);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.SendMessageResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */