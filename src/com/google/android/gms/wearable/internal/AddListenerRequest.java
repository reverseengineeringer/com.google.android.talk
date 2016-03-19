package com.google.android.gms.wearable.internal;

import aal;
import android.content.IntentFilter;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gtp;
import gtq;
import gty;
import gup;

public class AddListenerRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<AddListenerRequest> CREATOR = new gty();
  final int a;
  public final gtp b;
  public final IntentFilter[] c;
  public final String d;
  public final String e;
  
  public AddListenerRequest(int paramInt, IBinder paramIBinder, IntentFilter[] paramArrayOfIntentFilter, String paramString1, String paramString2)
  {
    a = paramInt;
    if (paramIBinder != null) {}
    for (b = gtq.a(paramIBinder);; b = null)
    {
      c = paramArrayOfIntentFilter;
      d = paramString1;
      e = paramString2;
      return;
    }
  }
  
  public AddListenerRequest(gup paramgup)
  {
    a = 1;
    b = paramgup;
    c = paramgup.b();
    d = paramgup.c();
    e = paramgup.d();
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
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, a());
    aal.a(paramParcel, 3, c, paramInt);
    aal.a(paramParcel, 4, d);
    aal.a(paramParcel, 5, e);
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.AddListenerRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */