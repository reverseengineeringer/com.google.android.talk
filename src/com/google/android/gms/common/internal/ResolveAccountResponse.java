package com.google.android.gms.common.internal;

import aal;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fks;
import fkt;
import fmj;

public class ResolveAccountResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new fmj();
  final int a;
  IBinder b;
  private ConnectionResult c;
  private boolean d;
  private boolean e;
  
  public ResolveAccountResponse()
  {
    this(new ConnectionResult(8, null));
  }
  
  public ResolveAccountResponse(int paramInt, IBinder paramIBinder, ConnectionResult paramConnectionResult, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramInt;
    b = paramIBinder;
    c = paramConnectionResult;
    d = paramBoolean1;
    e = paramBoolean2;
  }
  
  private ResolveAccountResponse(ConnectionResult paramConnectionResult)
  {
    this(1, null, paramConnectionResult, false, false);
  }
  
  public fks a()
  {
    return fkt.a(b);
  }
  
  public ConnectionResult b()
  {
    return c;
  }
  
  public boolean c()
  {
    return d;
  }
  
  public boolean d()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof ResolveAccountResponse)) {
        return false;
      }
      paramObject = (ResolveAccountResponse)paramObject;
    } while ((c.equals(c)) && (a().equals(((ResolveAccountResponse)paramObject).a())));
    return false;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, b);
    aal.a(paramParcel, 3, b(), paramInt);
    aal.a(paramParcel, 4, c());
    aal.a(paramParcel, 5, d());
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.ResolveAccountResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */