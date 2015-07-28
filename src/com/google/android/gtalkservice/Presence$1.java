package com.google.android.gtalkservice;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class Presence$1
  implements Parcelable.Creator<Presence>
{
  public Presence createFromParcel(Parcel paramParcel)
  {
    return new Presence(paramParcel);
  }
  
  public Presence[] newArray(int paramInt)
  {
    return new Presence[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gtalkservice.Presence.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */