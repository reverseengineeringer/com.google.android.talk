package com.google.android.gms.wearable.internal;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gru;
import gtx;

public class MessageEventParcelable
  implements SafeParcelable, gru
{
  public static final Parcelable.Creator<MessageEventParcelable> CREATOR = new gtx();
  final int a;
  private final int b;
  private final String c;
  private final byte[] d;
  private final String e;
  
  public MessageEventParcelable(int paramInt1, int paramInt2, String paramString1, byte[] paramArrayOfByte, String paramString2)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramString1;
    d = paramArrayOfByte;
    e = paramString2;
  }
  
  public String a()
  {
    return c;
  }
  
  public byte[] b()
  {
    return d;
  }
  
  public String c()
  {
    return e;
  }
  
  public int d()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("MessageEventParcelable[").append(b).append(",").append(c).append(", size=");
    if (d == null) {}
    for (Object localObject = "null";; localObject = Integer.valueOf(d.length)) {
      return localObject + "]";
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.c(paramParcel, 2, d());
    aal.a(paramParcel, 3, a());
    aal.a(paramParcel, 4, b());
    aal.a(paramParcel, 5, c());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.MessageEventParcelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */