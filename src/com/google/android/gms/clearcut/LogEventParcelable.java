package com.google.android.gms.clearcut;

import a;
import aal;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import fgw;
import fmg;
import gbt;
import java.util.Arrays;
import java.util.List;

public class LogEventParcelable
  implements SafeParcelable
{
  public static final fgw CREATOR = new fgw();
  public final int a;
  public PlayLoggerContext b;
  public byte[] c;
  public int[] d;
  public final gbt e;
  public final a f;
  public final a g;
  
  public LogEventParcelable(int paramInt, PlayLoggerContext paramPlayLoggerContext, byte[] paramArrayOfByte, int[] paramArrayOfInt)
  {
    a = paramInt;
    b = paramPlayLoggerContext;
    c = paramArrayOfByte;
    d = paramArrayOfInt;
    e = null;
    f = null;
    g = null;
  }
  
  public LogEventParcelable(PlayLoggerContext paramPlayLoggerContext, gbt paramgbt, a parama1, a parama2, int[] paramArrayOfInt)
  {
    a = 1;
    b = paramPlayLoggerContext;
    e = paramgbt;
    f = parama1;
    g = parama2;
    d = paramArrayOfInt;
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
      if (!(paramObject instanceof LogEventParcelable)) {
        break;
      }
      paramObject = (LogEventParcelable)paramObject;
    } while ((a == a) && (aal.a(b, b)) && (Arrays.equals(c, c)) && (Arrays.equals(d, d)) && (aal.a(e, e)) && (aal.a(f, f)) && (aal.a(g, g)));
    return false;
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(a), b, c, d, e, f, g });
  }
  
  public String toString()
  {
    List localList = null;
    StringBuilder localStringBuilder = new StringBuilder("LogEventParcelable[");
    localStringBuilder.append(a);
    localStringBuilder.append(", ");
    localStringBuilder.append(b);
    localStringBuilder.append(", ");
    if (c == null)
    {
      localObject = null;
      localStringBuilder.append((String)localObject);
      localStringBuilder.append(", ");
      if (d != null) {
        break label156;
      }
    }
    for (Object localObject = localList;; localObject = ((fmg)localObject).a(new StringBuilder(), localList).toString())
    {
      localStringBuilder.append((String)localObject);
      localStringBuilder.append(", ");
      localStringBuilder.append(e);
      localStringBuilder.append(", ");
      localStringBuilder.append(f);
      localStringBuilder.append(", ");
      localStringBuilder.append(g);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
      localObject = new String(c);
      break;
      label156:
      localObject = new fmg(", ");
      localList = Arrays.asList(new int[][] { d });
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, b, paramInt);
    aal.a(paramParcel, 3, c);
    int[] arrayOfInt = d;
    if (arrayOfInt != null)
    {
      paramInt = aal.p(paramParcel, 4);
      paramParcel.writeIntArray(arrayOfInt);
      aal.q(paramParcel, paramInt);
    }
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.clearcut.LogEventParcelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */