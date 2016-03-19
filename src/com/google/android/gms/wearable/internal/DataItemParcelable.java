package com.google.android.gms.wearable.internal;

import aal;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import grm;
import grn;
import gst;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class DataItemParcelable
  implements SafeParcelable, grm
{
  public static final Parcelable.Creator<DataItemParcelable> CREATOR = new gst();
  final int a;
  private final Uri b;
  private final Map<String, grn> c;
  private byte[] d;
  
  public DataItemParcelable(int paramInt, Uri paramUri, Bundle paramBundle, byte[] paramArrayOfByte)
  {
    a = paramInt;
    b = paramUri;
    paramUri = new HashMap();
    paramBundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramUri.put(str, (DataItemAssetParcelable)paramBundle.getParcelable(str));
    }
    c = paramUri;
    d = paramArrayOfByte;
  }
  
  public boolean O_()
  {
    return true;
  }
  
  public Uri U_()
  {
    return b;
  }
  
  public String a(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder("DataItemParcelable[");
    localStringBuilder.append("@");
    localStringBuilder.append(Integer.toHexString(hashCode()));
    Object localObject2 = new StringBuilder(",dataSz=");
    if (d == null) {}
    for (Object localObject1 = "null";; localObject1 = Integer.valueOf(d.length))
    {
      localStringBuilder.append(localObject1);
      localStringBuilder.append(", numAssets=" + c.size());
      localStringBuilder.append(", uri=" + b);
      if (paramBoolean) {
        break;
      }
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
    localStringBuilder.append("]\n  assets: ");
    localObject1 = c.keySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      localStringBuilder.append("\n    " + (String)localObject2 + ": " + c.get(localObject2));
    }
    localStringBuilder.append("\n  ]");
    return localStringBuilder.toString();
  }
  
  public byte[] b()
  {
    return d;
  }
  
  public Map<String, grn> c()
  {
    return c;
  }
  
  public DataItemParcelable d()
  {
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Bundle g()
  {
    Bundle localBundle = new Bundle();
    localBundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
    Iterator localIterator = c.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localBundle.putParcelable((String)localEntry.getKey(), new DataItemAssetParcelable((grn)localEntry.getValue()));
    }
    return localBundle;
  }
  
  public String toString()
  {
    return a(Log.isLoggable("DataItem", 3));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, U_(), paramInt);
    aal.a(paramParcel, 4, g());
    aal.a(paramParcel, 5, b());
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.DataItemParcelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */