package com.google.android.gms.wearable.internal;

import aal;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gsy;

public class GetChannelInputStreamResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<GetChannelInputStreamResponse> CREATOR = new gsy();
  public final int a;
  public final int b;
  public final ParcelFileDescriptor c;
  
  public GetChannelInputStreamResponse(int paramInt1, int paramInt2, ParcelFileDescriptor paramParcelFileDescriptor)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramParcelFileDescriptor;
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
 * Qualified Name:     com.google.android.gms.wearable.internal.GetChannelInputStreamResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */