package com.google.android.gms.wearable.internal;

import aal;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import atn;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gtz;

public class NodeParcelable
  implements atn, SafeParcelable
{
  public static final Parcelable.Creator<NodeParcelable> CREATOR = new gtz();
  final int a;
  private final String b;
  private final String c;
  private final int d;
  private final boolean e;
  
  public NodeParcelable(int paramInt1, String paramString1, String paramString2, int paramInt2, boolean paramBoolean)
  {
    a = paramInt1;
    b = paramString1;
    c = paramString2;
    d = paramInt2;
    e = paramBoolean;
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
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof NodeParcelable)) {
      return false;
    }
    return b.equals(b);
  }
  
  public boolean g()
  {
    return e;
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
  
  public String toString()
  {
    return "Node{" + c + ", id=" + b + ", hops=" + d + ", isNearby=" + e + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, a());
    aal.a(paramParcel, 3, b());
    aal.c(paramParcel, 4, c());
    aal.a(paramParcel, 5, g());
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.NodeParcelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */