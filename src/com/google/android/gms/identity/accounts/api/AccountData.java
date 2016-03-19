package com.google.android.gms.identity.accounts.api;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gao;

public final class AccountData
  implements SafeParcelable
{
  public static final Parcelable.Creator<AccountData> CREATOR = new gao();
  private final int a;
  private final String b;
  private final String c;
  
  public AccountData(int paramInt, String paramString1, String paramString2)
  {
    aal.a(paramString1, "Account name must not be empty.");
    a = paramInt;
    b = paramString1;
    c = paramString2;
  }
  
  private int c()
  {
    return a;
  }
  
  public String a()
  {
    return b;
  }
  
  public String b()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.a(paramParcel, 1, a());
    aal.c(paramParcel, 1000, c());
    aal.a(paramParcel, 2, b());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.identity.accounts.api.AccountData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */