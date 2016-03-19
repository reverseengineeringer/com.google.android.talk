package com.google.android.gms.common.internal;

import aal;
import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fho;
import fks;
import fkt;
import fkv;
import flb;
import java.util.Collection;

public class GetServiceRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<GetServiceRequest> CREATOR = new flb();
  final int a;
  final int b;
  int c;
  String d;
  IBinder e;
  Scope[] f;
  Bundle g;
  Account h;
  
  public GetServiceRequest(int paramInt)
  {
    a = 2;
    c = fho.a;
    b = paramInt;
  }
  
  public GetServiceRequest(int paramInt1, int paramInt2, int paramInt3, String paramString, IBinder paramIBinder, Scope[] paramArrayOfScope, Bundle paramBundle, Account paramAccount)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    d = paramString;
    if (paramInt1 < 2)
    {
      paramString = null;
      if (paramIBinder != null) {
        paramString = fkv.a(fkt.a(paramIBinder));
      }
    }
    for (h = paramString;; h = paramAccount)
    {
      f = paramArrayOfScope;
      g = paramBundle;
      return;
      e = paramIBinder;
    }
  }
  
  public GetServiceRequest a(Account paramAccount)
  {
    h = paramAccount;
    return this;
  }
  
  public GetServiceRequest a(Bundle paramBundle)
  {
    g = paramBundle;
    return this;
  }
  
  public GetServiceRequest a(fks paramfks)
  {
    if (paramfks != null) {
      e = paramfks.asBinder();
    }
    return this;
  }
  
  public GetServiceRequest a(String paramString)
  {
    d = paramString;
    return this;
  }
  
  public GetServiceRequest a(Collection<Scope> paramCollection)
  {
    f = ((Scope[])paramCollection.toArray(new Scope[paramCollection.size()]));
    return this;
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
    aal.c(paramParcel, 3, c);
    aal.a(paramParcel, 4, d);
    aal.a(paramParcel, 5, e);
    aal.a(paramParcel, 6, f, paramInt);
    aal.a(paramParcel, 7, g);
    aal.a(paramParcel, 8, h, paramInt);
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.GetServiceRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */