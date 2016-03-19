package com.google.android.gms.common.internal;

import aal;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fks;
import fkx;

public class ValidateAccountRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<ValidateAccountRequest> CREATOR = new fkx();
  final int a;
  final IBinder b;
  private final int c;
  private final Scope[] d;
  private final Bundle e;
  private final String f;
  
  public ValidateAccountRequest(int paramInt1, int paramInt2, IBinder paramIBinder, Scope[] paramArrayOfScope, Bundle paramBundle, String paramString)
  {
    a = paramInt1;
    c = paramInt2;
    b = paramIBinder;
    d = paramArrayOfScope;
    e = paramBundle;
    f = paramString;
  }
  
  public ValidateAccountRequest(fks paramfks, Scope[] paramArrayOfScope, String paramString, Bundle paramBundle) {}
  
  public int a()
  {
    return c;
  }
  
  public Scope[] b()
  {
    return d;
  }
  
  public String c()
  {
    return f;
  }
  
  public Bundle d()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.c(paramParcel, 2, a());
    aal.a(paramParcel, 3, b);
    aal.a(paramParcel, 4, b(), paramInt);
    aal.a(paramParcel, 5, d());
    aal.a(paramParcel, 6, c());
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.ValidateAccountRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */