package com.google.android.gtalkservice;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ConnectionError$1
  implements Parcelable.Creator<ConnectionError>
{
  public ConnectionError createFromParcel(Parcel paramParcel)
  {
    return new ConnectionError(paramParcel);
  }
  
  public ConnectionError[] newArray(int paramInt)
  {
    return new ConnectionError[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gtalkservice.ConnectionError.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */