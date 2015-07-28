package com.google.android.videochat;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class CallState$1
  implements Parcelable.Creator<CallState>
{
  public CallState createFromParcel(Parcel paramParcel)
  {
    return new CallState(paramParcel);
  }
  
  public CallState[] newArray(int paramInt)
  {
    return new CallState[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallState.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */