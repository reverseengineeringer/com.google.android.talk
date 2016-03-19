package com.google.android.gms.wearable;

import aal;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.internal.DataItemAssetParcelable;
import gvi;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public class PutDataRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<PutDataRequest> CREATOR = new gvi();
  private static final Random b = new SecureRandom();
  final int a;
  private final Uri c;
  private final Bundle d;
  private byte[] e;
  
  public PutDataRequest(int paramInt, Uri paramUri, Bundle paramBundle, byte[] paramArrayOfByte)
  {
    a = paramInt;
    c = paramUri;
    d = paramBundle;
    d.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
    e = paramArrayOfByte;
  }
  
  private PutDataRequest(Uri paramUri)
  {
    this(1, paramUri, new Bundle(), null);
  }
  
  public static PutDataRequest a(Uri paramUri)
  {
    return new PutDataRequest(paramUri);
  }
  
  public static PutDataRequest a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("An empty path was supplied.");
    }
    if (!paramString.startsWith("/")) {
      throw new IllegalArgumentException("A path must start with a single / .");
    }
    if (paramString.startsWith("//")) {
      throw new IllegalArgumentException("A path must start with a single / .");
    }
    return a(new Uri.Builder().scheme("wear").path(paramString).build());
  }
  
  public Uri a()
  {
    return c;
  }
  
  public PutDataRequest a(String paramString, Asset paramAsset)
  {
    aal.d(paramString);
    aal.d(paramAsset);
    d.putParcelable(paramString, paramAsset);
    return this;
  }
  
  public PutDataRequest a(byte[] paramArrayOfByte)
  {
    e = paramArrayOfByte;
    return this;
  }
  
  public String a(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder("PutDataRequest[");
    Object localObject2 = new StringBuilder("dataSz=");
    if (e == null) {}
    for (Object localObject1 = "null";; localObject1 = Integer.valueOf(e.length))
    {
      localStringBuilder.append(localObject1);
      localStringBuilder.append(", numAssets=" + d.size());
      localStringBuilder.append(", uri=" + c);
      if (paramBoolean) {
        break;
      }
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
    localStringBuilder.append("]\n  assets: ");
    localObject1 = d.keySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      localStringBuilder.append("\n    " + (String)localObject2 + ": " + d.getParcelable((String)localObject2));
    }
    localStringBuilder.append("\n  ]");
    return localStringBuilder.toString();
  }
  
  public byte[] b()
  {
    return e;
  }
  
  public Map<String, Asset> c()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = d.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, (Asset)d.getParcelable(str));
    }
    return Collections.unmodifiableMap(localHashMap);
  }
  
  public Bundle d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return a(Log.isLoggable("DataMap", 3));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, a(), paramInt);
    aal.a(paramParcel, 4, d());
    aal.a(paramParcel, 5, b());
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.PutDataRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */