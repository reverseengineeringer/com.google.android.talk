package com.google.android.gms.wearable;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gvh;
import java.util.Arrays;

public class ConnectionConfiguration
  implements SafeParcelable
{
  public static final Parcelable.Creator<ConnectionConfiguration> CREATOR = new gvh();
  final int a;
  private final String b;
  private final String c;
  private final int d;
  private final int e;
  private final boolean f;
  private boolean g;
  private String h;
  private boolean i;
  private String j;
  
  public ConnectionConfiguration(int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, String paramString3, boolean paramBoolean3, String paramString4)
  {
    a = paramInt1;
    b = paramString1;
    c = paramString2;
    d = paramInt2;
    e = paramInt3;
    f = paramBoolean1;
    g = paramBoolean2;
    h = paramString3;
    i = paramBoolean3;
    j = paramString4;
  }
  
  public String a()
  {
    return b;
  }
  
  public String b()
  {
    return c;
  }
  
  public int c()
  {
    return d;
  }
  
  public int d()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean e()
  {
    return g;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ConnectionConfiguration)) {}
    do
    {
      return false;
      paramObject = (ConnectionConfiguration)paramObject;
    } while ((!aal.a(Integer.valueOf(a), Integer.valueOf(a))) || (!aal.a(b, b)) || (!aal.a(c, c)) || (!aal.a(Integer.valueOf(d), Integer.valueOf(d))) || (!aal.a(Integer.valueOf(e), Integer.valueOf(e))) || (!aal.a(Boolean.valueOf(f), Boolean.valueOf(f))) || (!aal.a(Boolean.valueOf(i), Boolean.valueOf(i))));
    return true;
  }
  
  public String f()
  {
    return h;
  }
  
  public boolean g()
  {
    return i;
  }
  
  public String h()
  {
    return j;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(a), b, c, Integer.valueOf(d), Integer.valueOf(e), Boolean.valueOf(f), Boolean.valueOf(i) });
  }
  
  public boolean i()
  {
    return f;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ConnectionConfiguration[ ");
    localStringBuilder.append("mName=" + b);
    localStringBuilder.append(", mAddress=" + c);
    localStringBuilder.append(", mType=" + d);
    localStringBuilder.append(", mRole=" + e);
    localStringBuilder.append(", mEnabled=" + f);
    localStringBuilder.append(", mIsConnected=" + g);
    localStringBuilder.append(", mPeerNodeId=" + h);
    localStringBuilder.append(", mBtlePriority=" + i);
    localStringBuilder.append(", mNodeId=" + j);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, a());
    aal.a(paramParcel, 3, b());
    aal.c(paramParcel, 4, c());
    aal.c(paramParcel, 5, d());
    aal.a(paramParcel, 6, i());
    aal.a(paramParcel, 7, e());
    aal.a(paramParcel, 8, f());
    aal.a(paramParcel, 9, g());
    aal.a(paramParcel, 10, h());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.ConnectionConfiguration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */