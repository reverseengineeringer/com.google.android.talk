package com.google.android.gms.wearable.internal;

import aal;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gtp;
import gtq;
import gud;

public class RemoveListenerRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<RemoveListenerRequest> CREATOR = new gud();
  final int a;
  public final gtp b;
  
  public RemoveListenerRequest(int paramInt, IBinder paramIBinder)
  {
    a = paramInt;
    if (paramIBinder != null)
    {
      b = gtq.a(paramIBinder);
      return;
    }
    b = null;
  }
  
  public RemoveListenerRequest(gtp paramgtp)
  {
    a = 1;
    b = paramgtp;
  }
  
  IBinder a()
  {
    if (b == null) {
      return null;
    }
    return b.asBinder();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, a());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.RemoveListenerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */