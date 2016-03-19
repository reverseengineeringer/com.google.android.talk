package com.google.android.gms.common.data;

import aal;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fkh;
import fki;
import fkj;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class DataHolder
  implements SafeParcelable
{
  public static final fkj CREATOR = new fkj();
  private static final fkh l = new fkh(new String[0]);
  Bundle a;
  int[] b;
  int c;
  boolean d = false;
  private final int e;
  private final String[] f;
  private final CursorWindow[] g;
  private final int h;
  private final Bundle i;
  private Object j;
  private boolean k = true;
  
  public DataHolder(int paramInt1, String[] paramArrayOfString, CursorWindow[] paramArrayOfCursorWindow, int paramInt2, Bundle paramBundle)
  {
    e = paramInt1;
    f = paramArrayOfString;
    g = paramArrayOfCursorWindow;
    h = paramInt2;
    i = paramBundle;
  }
  
  private DataHolder(fkh paramfkh, int paramInt, Bundle paramBundle)
  {
    this(a, a(paramfkh), paramInt, null);
  }
  
  private DataHolder(String[] paramArrayOfString, CursorWindow[] paramArrayOfCursorWindow, int paramInt, Bundle paramBundle)
  {
    e = 1;
    f = ((String[])aal.d(paramArrayOfString));
    g = ((CursorWindow[])aal.d(paramArrayOfCursorWindow));
    h = paramInt;
    i = paramBundle;
    a();
  }
  
  private void a(String paramString, int paramInt)
  {
    if ((a == null) || (!a.containsKey(paramString))) {
      throw new IllegalArgumentException("No such column: " + paramString);
    }
    if (e()) {
      throw new IllegalArgumentException("Buffer is closed.");
    }
    if ((paramInt < 0) || (paramInt >= c)) {
      throw new CursorIndexOutOfBoundsException(paramInt, c);
    }
  }
  
  private static CursorWindow[] a(fkh paramfkh)
  {
    int i2 = 0;
    if (a.length == 0) {
      return new CursorWindow[0];
    }
    ArrayList localArrayList2 = b;
    int i3 = localArrayList2.size();
    Object localObject2 = new CursorWindow(false);
    ArrayList localArrayList1 = new ArrayList();
    localArrayList1.add(localObject2);
    ((CursorWindow)localObject2).setNumColumns(a.length);
    int m = 0;
    int n = 0;
    Object localObject1;
    if (m < i3) {
      localObject1 = localObject2;
    }
    for (;;)
    {
      int i1;
      try
      {
        if (!((CursorWindow)localObject2).allocRow())
        {
          new StringBuilder("Allocating additional cursor window for large data set (row ").append(m).append(")");
          localObject2 = new CursorWindow(false);
          ((CursorWindow)localObject2).setStartPosition(m);
          ((CursorWindow)localObject2).setNumColumns(a.length);
          localArrayList1.add(localObject2);
          localObject1 = localObject2;
          if (!((CursorWindow)localObject2).allocRow())
          {
            Log.e("DataHolder", "Unable to allocate row to hold data.");
            localArrayList1.remove(localObject2);
            return (CursorWindow[])localArrayList1.toArray(new CursorWindow[localArrayList1.size()]);
          }
        }
        localObject2 = (Map)localArrayList2.get(m);
        i1 = 0;
        bool = true;
        if ((i1 < a.length) && (bool))
        {
          String str = a[i1];
          Object localObject3 = ((Map)localObject2).get(str);
          if (localObject3 == null)
          {
            bool = ((CursorWindow)localObject1).putNull(m, i1);
            break label655;
          }
          if ((localObject3 instanceof String))
          {
            bool = ((CursorWindow)localObject1).putString((String)localObject3, m, i1);
            break label655;
          }
          if ((localObject3 instanceof Long))
          {
            bool = ((CursorWindow)localObject1).putLong(((Long)localObject3).longValue(), m, i1);
            break label655;
          }
          if ((localObject3 instanceof Integer))
          {
            bool = ((CursorWindow)localObject1).putLong(((Integer)localObject3).intValue(), m, i1);
            break label655;
          }
          if ((localObject3 instanceof Boolean))
          {
            if (!((Boolean)localObject3).booleanValue()) {
              break label662;
            }
            l1 = 1L;
            bool = ((CursorWindow)localObject1).putLong(l1, m, i1);
            break label655;
          }
          if ((localObject3 instanceof byte[]))
          {
            bool = ((CursorWindow)localObject1).putBlob((byte[])localObject3, m, i1);
            break label655;
          }
          if ((localObject3 instanceof Double))
          {
            bool = ((CursorWindow)localObject1).putDouble(((Double)localObject3).doubleValue(), m, i1);
            break label655;
          }
          if ((localObject3 instanceof Float))
          {
            bool = ((CursorWindow)localObject1).putDouble(((Float)localObject3).floatValue(), m, i1);
            break label655;
          }
          throw new IllegalArgumentException("Unsupported object for column " + str + ": " + localObject3);
        }
      }
      catch (RuntimeException paramfkh)
      {
        boolean bool;
        n = localArrayList1.size();
        m = i2;
        if (m < n)
        {
          ((CursorWindow)localArrayList1.get(m)).close();
          m += 1;
          continue;
          if (!bool)
          {
            if (n != 0) {
              throw new fki("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
            }
            new StringBuilder("Couldn't populate window data for row ").append(m).append(" - allocating new window.");
            ((CursorWindow)localObject1).freeLastRow();
            localObject1 = new CursorWindow(false);
            ((CursorWindow)localObject1).setStartPosition(m);
            ((CursorWindow)localObject1).setNumColumns(a.length);
            localArrayList1.add(localObject1);
            n = m - 1;
            m = 1;
            i1 = m;
            m = n + 1;
            localObject2 = localObject1;
            n = i1;
            break;
          }
          i1 = 0;
          n = m;
          m = i1;
          continue;
        }
        throw paramfkh;
      }
      return (CursorWindow[])localArrayList1.toArray(new CursorWindow[localArrayList1.size()]);
      label655:
      i1 += 1;
      continue;
      label662:
      long l1 = 0L;
    }
  }
  
  public static DataHolder b(int paramInt)
  {
    return new DataHolder(l, paramInt, null);
  }
  
  private int g()
  {
    return e;
  }
  
  private String[] h()
  {
    return f;
  }
  
  private CursorWindow[] i()
  {
    return g;
  }
  
  public int a(int paramInt)
  {
    int n = 0;
    boolean bool;
    if ((paramInt >= 0) && (paramInt < c))
    {
      bool = true;
      aal.a(bool);
    }
    for (;;)
    {
      int m = n;
      if (n < b.length)
      {
        if (paramInt < b[n]) {
          m = n - 1;
        }
      }
      else
      {
        paramInt = m;
        if (m == b.length) {
          paramInt = m - 1;
        }
        return paramInt;
        bool = false;
        break;
      }
      n += 1;
    }
  }
  
  public int a(String paramString, int paramInt1, int paramInt2)
  {
    a(paramString, paramInt1);
    return g[paramInt2].getInt(paramInt1, a.getInt(paramString));
  }
  
  public void a()
  {
    int n = 0;
    a = new Bundle();
    int m = 0;
    while (m < f.length)
    {
      a.putInt(f[m], m);
      m += 1;
    }
    b = new int[g.length];
    int i1 = 0;
    m = n;
    n = i1;
    while (m < g.length)
    {
      b[m] = n;
      i1 = g[m].getStartPosition();
      n += g[m].getNumRows() - (n - i1);
      m += 1;
    }
    c = n;
  }
  
  public void a(Object paramObject)
  {
    j = paramObject;
  }
  
  public int b()
  {
    return h;
  }
  
  public String b(String paramString, int paramInt1, int paramInt2)
  {
    a(paramString, paramInt1);
    return g[paramInt2].getString(paramInt1, a.getInt(paramString));
  }
  
  public Bundle c()
  {
    return i;
  }
  
  public byte[] c(String paramString, int paramInt1, int paramInt2)
  {
    a(paramString, paramInt1);
    return g[paramInt2].getBlob(paramInt1, a.getInt(paramString));
  }
  
  public int d()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean e()
  {
    try
    {
      boolean bool = d;
      return bool;
    }
    finally {}
  }
  
  public void f()
  {
    try
    {
      if (!d)
      {
        d = true;
        int m = 0;
        while (m < g.length)
        {
          g[m].close();
          m += 1;
        }
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  protected void finalize()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 53	com/google/android/gms/common/data/DataHolder:k	Z
    //   4: ifeq +79 -> 83
    //   7: aload_0
    //   8: getfield 59	com/google/android/gms/common/data/DataHolder:g	[Landroid/database/CursorWindow;
    //   11: arraylength
    //   12: ifle +71 -> 83
    //   15: aload_0
    //   16: invokevirtual 111	com/google/android/gms/common/data/DataHolder:e	()Z
    //   19: ifne +64 -> 83
    //   22: aload_0
    //   23: getfield 292	com/google/android/gms/common/data/DataHolder:j	Ljava/lang/Object;
    //   26: ifnonnull +62 -> 88
    //   29: new 94	java/lang/StringBuilder
    //   32: dup
    //   33: ldc_w 307
    //   36: invokespecial 99	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   39: aload_0
    //   40: invokevirtual 308	java/lang/Object:toString	()Ljava/lang/String;
    //   43: invokevirtual 103	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   49: astore_1
    //   50: ldc_w 310
    //   53: new 94	java/lang/StringBuilder
    //   56: dup
    //   57: ldc_w 312
    //   60: invokespecial 99	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   63: aload_1
    //   64: invokevirtual 103	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: ldc -99
    //   69: invokevirtual 103	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: invokevirtual 107	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   75: invokestatic 170	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   78: pop
    //   79: aload_0
    //   80: invokevirtual 314	com/google/android/gms/common/data/DataHolder:f	()V
    //   83: aload_0
    //   84: invokespecial 316	java/lang/Object:finalize	()V
    //   87: return
    //   88: aload_0
    //   89: getfield 292	com/google/android/gms/common/data/DataHolder:j	Ljava/lang/Object;
    //   92: invokevirtual 308	java/lang/Object:toString	()Ljava/lang/String;
    //   95: astore_1
    //   96: goto -46 -> 50
    //   99: astore_1
    //   100: aload_0
    //   101: invokespecial 316	java/lang/Object:finalize	()V
    //   104: aload_1
    //   105: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	106	0	this	DataHolder
    //   49	47	1	str	String
    //   99	6	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	50	99	finally
    //   50	83	99	finally
    //   88	96	99	finally
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int m = aal.p(paramParcel, 20293);
    aal.a(paramParcel, 1, h());
    aal.c(paramParcel, 1000, g());
    aal.a(paramParcel, 2, i(), paramInt);
    aal.c(paramParcel, 3, b());
    aal.a(paramParcel, 4, c());
    aal.q(paramParcel, m);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.DataHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */