package com.google.android.gms.wearable;

import aal;
import android.net.Uri;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gvg;
import java.util.Arrays;

public class Asset
  implements SafeParcelable
{
  public static final Parcelable.Creator<Asset> CREATOR = new gvg();
  final int a;
  public ParcelFileDescriptor b;
  public Uri c;
  private byte[] d;
  private String e;
  
  public Asset(int paramInt, byte[] paramArrayOfByte, String paramString, ParcelFileDescriptor paramParcelFileDescriptor, Uri paramUri)
  {
    a = paramInt;
    d = paramArrayOfByte;
    e = paramString;
    b = paramParcelFileDescriptor;
    c = paramUri;
  }
  
  public static Asset a(ParcelFileDescriptor paramParcelFileDescriptor)
  {
    if (paramParcelFileDescriptor == null) {
      throw new IllegalArgumentException("Asset fd cannot be null");
    }
    return new Asset(1, null, null, paramParcelFileDescriptor, null);
  }
  
  public static Asset a(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("Asset digest cannot be null");
    }
    return new Asset(1, null, paramString, null, null);
  }
  
  public static Asset a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("Asset data cannot be null");
    }
    return new Asset(1, paramArrayOfByte, null, null, null);
  }
  
  public byte[] a()
  {
    return d;
  }
  
  public String b()
  {
    return e;
  }
  
  public ParcelFileDescriptor c()
  {
    return b;
  }
  
  public Uri d()
  {
    return c;
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
      if (!(paramObject instanceof Asset)) {
        return false;
      }
      paramObject = (Asset)paramObject;
    } while ((aal.a(d, d)) && (aal.a(e, e)) && (aal.a(b, b)) && (aal.a(c, c)));
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { d, e, b, c });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Asset[@");
    localStringBuilder.append(Integer.toHexString(hashCode()));
    if (e == null) {
      localStringBuilder.append(", nodigest");
    }
    for (;;)
    {
      if (d != null)
      {
        localStringBuilder.append(", size=");
        localStringBuilder.append(d.length);
      }
      if (b != null)
      {
        localStringBuilder.append(", fd=");
        localStringBuilder.append(b);
      }
      if (c != null)
      {
        localStringBuilder.append(", uri=");
        localStringBuilder.append(c);
      }
      localStringBuilder.append("]");
      return localStringBuilder.toString();
      localStringBuilder.append(", ");
      localStringBuilder.append(e);
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt |= 0x1;
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, a());
    aal.a(paramParcel, 3, b());
    aal.a(paramParcel, 4, b, paramInt);
    aal.a(paramParcel, 5, c, paramInt);
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.Asset
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */