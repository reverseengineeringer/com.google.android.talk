import android.content.ContentValues;
import android.database.Cursor;
import java.util.EnumMap;

public final class dns
  implements dmk
{
  private static final dnv[] c = ;
  public final int a;
  public final String b;
  private final EnumMap<dnv, dnt> d = new EnumMap(dnv.class);
  
  public dns(int paramInt, String paramString)
  {
    a = paramInt;
    b = paramString;
  }
  
  private int a(dnv paramdnv, int paramInt)
  {
    return aal.a((Integer)a(paramdnv), 0);
  }
  
  private <T> T a(dnv paramdnv)
  {
    long l = System.currentTimeMillis();
    dnt localdnt = (dnt)d.get(paramdnv);
    if (a(paramdnv, localdnt, l)) {
      return (T)b;
    }
    return null;
  }
  
  private void a(String paramString, dnv paramdnv, StringBuilder paramStringBuilder)
  {
    paramdnv = (dnt)d.get(paramdnv);
    if (paramdnv != null) {
      paramStringBuilder.append(paramString).append(':').append(b).append('(').append(a).append(") ");
    }
  }
  
  private static boolean a(dnv paramdnv, dnt paramdnt, long paramLong)
  {
    return (paramdnt != null) && (paramdnv.b(a, paramLong));
  }
  
  private static boolean a(Long paramLong1, Long paramLong2, long paramLong)
  {
    hbs.b("Expected non-null", paramLong1);
    hbs.b("Expected non-null", paramLong2);
    long l1 = aal.a(paramLong2, 0L);
    long l2 = aal.a(paramLong1, 0L);
    if (!aal.a(l1, paramLong)) {
      ezi.d("Babel", 100 + "incoming last seen is in the future: lastSeenVal=" + l1 + " valueTime=" + paramLong, new Object[0]);
    }
    while ((l1 <= l2) && (aal.a(l2, paramLong))) {
      return false;
    }
    return true;
  }
  
  private boolean b(dnv paramdnv, Object paramObject, long paramLong)
  {
    dnt localdnt = (dnt)d.get(paramdnv);
    if (localdnt != null)
    {
      if (paramLong < a) {
        return false;
      }
      if (!a(paramdnv, localdnt, paramLong)) {
        b = null;
      }
      a = paramLong;
      if (localdnt.a(paramObject)) {
        return false;
      }
      if ((paramdnv == dnv.f) && (b != null) && (paramObject != null) && (!a((Long)b, (Long)paramObject, paramLong))) {
        return false;
      }
      b = paramObject;
    }
    for (;;)
    {
      return true;
      paramObject = new dnt(paramObject, paramLong);
      d.put(paramdnv, paramObject);
    }
  }
  
  public int a(Cursor paramCursor)
  {
    int j = 0;
    long l1 = System.currentTimeMillis();
    dnv[] arrayOfdnv = c;
    int m = arrayOfdnv.length;
    int i = 0;
    while (i < m)
    {
      dnv localdnv = arrayOfdnv[i];
      long l2 = localdnv.a(paramCursor);
      int k = j;
      if (l2 > 0L)
      {
        k = j;
        if (localdnv.b(l2, l1))
        {
          k = j;
          if (b(localdnv, localdnv.b(paramCursor), l2)) {
            k = j | l;
          }
        }
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  public int a(dtk paramdtk, int paramInt)
  {
    int j = 0;
    dnv[] arrayOfdnv = c;
    int m = arrayOfdnv.length;
    int i = 0;
    while (i < m)
    {
      dnv localdnv = arrayOfdnv[i];
      int k = j;
      if (localdnv.a(paramInt))
      {
        k = j;
        if (b(localdnv, paramdtk.a(localdnv), a)) {
          k = j | l;
        }
      }
      i += 1;
      j = k;
    }
    return j;
  }
  
  public String a()
  {
    return (String)a(dnv.c);
  }
  
  public void a(int paramInt, ContentValues paramContentValues)
  {
    dnv[] arrayOfdnv = c;
    int j = arrayOfdnv.length;
    int i = 0;
    if (i < j)
    {
      dnv localdnv = arrayOfdnv[i];
      if (localdnv.a(paramInt))
      {
        dnt localdnt = (dnt)d.get(localdnv);
        if (localdnt == null) {
          break label78;
        }
        localdnv.a(b, Long.valueOf(a), paramContentValues);
      }
      for (;;)
      {
        i += 1;
        break;
        label78:
        localdnv.a(null, null, paramContentValues);
      }
    }
  }
  
  public boolean a(int paramInt, long paramLong)
  {
    dnv[] arrayOfdnv = c;
    int j = arrayOfdnv.length;
    int i = 0;
    while (i < j)
    {
      dnv localdnv = arrayOfdnv[i];
      if (localdnv.a(paramInt))
      {
        dnt localdnt = (dnt)d.get(localdnv);
        if ((localdnt == null) || (!localdnv.a(a, paramLong))) {
          return false;
        }
      }
      i += 1;
    }
    return true;
  }
  
  public boolean a(dnv paramdnv, Object paramObject, long paramLong)
  {
    if (paramdnv == dnv.f)
    {
      paramdnv = (Long)paramObject;
      paramObject = (dnt)d.get(dnv.f);
      if (paramObject == null) {
        return false;
      }
      if (b == null) {
        return false;
      }
      if (!a((Long)b, paramdnv, paramLong)) {
        return false;
      }
      b = paramdnv;
      return true;
    }
    return b(paramdnv, paramObject, paramLong);
  }
  
  public int b()
  {
    return a(dnv.e, 0);
  }
  
  public int b(int paramInt, long paramLong)
  {
    dnv[] arrayOfdnv = c;
    int k = arrayOfdnv.length;
    int j = 0;
    int i = 0;
    if (j < k)
    {
      dnv localdnv = arrayOfdnv[j];
      if ((!localdnv.a(paramInt)) || (!a(localdnv, (dnt)d.get(localdnv), paramLong))) {
        break label82;
      }
      i = l | i;
    }
    label82:
    for (;;)
    {
      j += 1;
      break;
      return i;
    }
  }
  
  public int c()
  {
    return a(dnv.d, 0);
  }
  
  public long d()
  {
    return aal.a((Long)a(dnv.f), 0L);
  }
  
  public boolean e()
  {
    return aal.a((Boolean)a(dnv.a), false);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Presence [");
    a("reachable", dnv.a, localStringBuilder);
    a("available", dnv.b, localStringBuilder);
    a("callType", dnv.d, localStringBuilder);
    a("deviceStatus", dnv.e, localStringBuilder);
    a("lastSeen", dnv.f, localStringBuilder);
    a("statusMessage", dnv.c, localStringBuilder);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     dns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */