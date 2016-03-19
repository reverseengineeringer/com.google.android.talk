package com.google.android.gms.auth;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fgo;
import java.util.Arrays;

public class AccountChangeEvent
  implements SafeParcelable
{
  public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new fgo();
  final int a;
  final long b;
  final String c;
  final int d;
  final int e;
  final String f;
  
  public AccountChangeEvent(int paramInt1, long paramLong, String paramString1, int paramInt2, int paramInt3, String paramString2)
  {
    a = paramInt1;
    b = paramLong;
    c = ((String)aal.d(paramString1));
    d = paramInt2;
    e = paramInt3;
    f = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof AccountChangeEvent)) {
        break;
      }
      paramObject = (AccountChangeEvent)paramObject;
    } while ((a == a) && (b == b) && (aal.a(c, c)) && (d == d) && (e == e) && (aal.a(f, f)));
    return false;
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(a), Long.valueOf(b), c, Integer.valueOf(d), Integer.valueOf(e), f });
  }
  
  public String toString()
  {
    String str = "UNKNOWN";
    switch (d)
    {
    }
    for (;;)
    {
      return "AccountChangeEvent {accountName = " + c + ", changeType = " + str + ", changeData = " + f + ", eventIndex = " + e + "}";
      str = "ADDED";
      continue;
      str = "REMOVED";
      continue;
      str = "RENAMED_TO";
      continue;
      str = "RENAMED_FROM";
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, b);
    aal.a(paramParcel, 3, c);
    aal.c(paramParcel, 4, d);
    aal.c(paramParcel, 5, e);
    aal.a(paramParcel, 6, f);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.AccountChangeEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */