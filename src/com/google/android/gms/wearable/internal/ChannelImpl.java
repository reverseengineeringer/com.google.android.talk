package com.google.android.gms.wearable.internal;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.Channel;
import guv;

public class ChannelImpl
  implements SafeParcelable, Channel
{
  public static final Parcelable.Creator<ChannelImpl> CREATOR = new guv();
  final int a;
  private final String b;
  private final String c;
  private final String d;
  
  public ChannelImpl(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    a = paramInt;
    b = ((String)aal.d(paramString1));
    c = ((String)aal.d(paramString2));
    d = ((String)aal.d(paramString3));
  }
  
  public String a()
  {
    return c;
  }
  
  public String b()
  {
    return d;
  }
  
  public String c()
  {
    return b;
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
      if (!(paramObject instanceof ChannelImpl)) {
        return false;
      }
      paramObject = (ChannelImpl)paramObject;
    } while ((b.equals(b)) && (aal.a(c, c)) && (aal.a(d, d)) && (a == a));
    return false;
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
  
  public String toString()
  {
    return "ChannelImpl{versionCode=" + a + ", token='" + b + '\'' + ", nodeId='" + c + '\'' + ", path='" + d + '\'' + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, c());
    aal.a(paramParcel, 3, a());
    aal.a(paramParcel, 4, b());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.ChannelImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */