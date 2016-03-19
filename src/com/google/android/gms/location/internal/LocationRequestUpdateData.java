package com.google.android.gms.location.internal;

import aal;
import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gel;
import gew;
import gey;
import gez;
import gfa;

public class LocationRequestUpdateData
  implements SafeParcelable
{
  public static final gel CREATOR = new gel();
  int a;
  LocationRequestInternal b;
  gez c;
  PendingIntent d;
  gew e;
  private final int f;
  
  public LocationRequestUpdateData(int paramInt1, int paramInt2, LocationRequestInternal paramLocationRequestInternal, IBinder paramIBinder1, PendingIntent paramPendingIntent, IBinder paramIBinder2)
  {
    f = paramInt1;
    a = paramInt2;
    b = paramLocationRequestInternal;
    if (paramIBinder1 == null)
    {
      paramLocationRequestInternal = null;
      c = paramLocationRequestInternal;
      d = paramPendingIntent;
      if (paramIBinder2 != null) {
        break label63;
      }
      paramLocationRequestInternal = (LocationRequestInternal)localObject;
    }
    for (;;)
    {
      e = paramLocationRequestInternal;
      return;
      paramLocationRequestInternal = gfa.a(paramIBinder1);
      break;
      label63:
      paramLocationRequestInternal = (LocationRequestInternal)localObject;
      if (paramIBinder2 != null)
      {
        paramLocationRequestInternal = paramIBinder2.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
        if ((paramLocationRequestInternal != null) && ((paramLocationRequestInternal instanceof gew))) {
          paramLocationRequestInternal = (gew)paramLocationRequestInternal;
        } else {
          paramLocationRequestInternal = new gey(paramIBinder2);
        }
      }
    }
  }
  
  int a()
  {
    return f;
  }
  
  IBinder b()
  {
    if (c == null) {
      return null;
    }
    return c.asBinder();
  }
  
  IBinder c()
  {
    if (e == null) {
      return null;
    }
    return e.asBinder();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.c(paramParcel, 1000, a());
    aal.a(paramParcel, 2, b, paramInt);
    aal.a(paramParcel, 3, b());
    aal.a(paramParcel, 4, d, paramInt);
    aal.a(paramParcel, 5, c());
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.LocationRequestUpdateData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */