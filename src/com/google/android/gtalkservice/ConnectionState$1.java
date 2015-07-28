package com.google.android.gtalkservice;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ConnectionState$1
  implements Parcelable.Creator<ConnectionState>
{
  public ConnectionState createFromParcel(Parcel paramParcel)
  {
    return new ConnectionState(paramParcel);
  }
  
  public ConnectionState[] newArray(int paramInt)
  {
    return new ConnectionState[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gtalkservice.ConnectionState.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */