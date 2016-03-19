package com.google.android.gms.people.identity.internal;

import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gni;

public final class AccountToken
  implements SafeParcelable
{
  public static final gni CREATOR = new gni();
  private final int a;
  private final String b;
  private final String c;
  
  public AccountToken(int paramInt, String paramString1, String paramString2)
  {
    a = paramInt;
    b = paramString1;
    c = paramString2;
  }
  
  private int a()
  {
    return a;
  }
  
  private String b()
  {
    return b;
  }
  
  private String c()
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
    aal.a(paramParcel, 1, b());
    aal.c(paramParcel, 1000, a());
    aal.a(paramParcel, 2, c());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.people.identity.internal.AccountToken
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */