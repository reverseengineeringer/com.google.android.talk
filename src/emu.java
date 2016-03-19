import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class emu
  extends ems
{
  public static final String[] a = { "_id", "msg_box", "sub", "sub_cs", "m_size", "date", "thread_id", "pri", "st", "read", "seen" };
  public static final int b;
  public static final int c;
  public static final int d;
  public static final int e;
  public static final int f;
  public static final int g;
  public static final int h;
  public static final int i;
  public static final int j;
  public static final int k;
  public static final int l;
  private static int x = 0;
  private int A = 0;
  private int B = 0;
  private String C = null;
  private String D = null;
  private String E = null;
  private boolean F = false;
  public long m;
  public int n;
  public String o;
  public int p;
  public long q;
  public long r;
  public int s;
  public int t;
  public boolean u;
  public boolean v;
  public List<emv> w = new ArrayList();
  private long y;
  private boolean z = false;
  
  static
  {
    x = 1;
    b = 0;
    int i1 = x;
    x = i1 + 1;
    c = i1;
    i1 = x;
    x = i1 + 1;
    d = i1;
    i1 = x;
    x = i1 + 1;
    e = i1;
    i1 = x;
    x = i1 + 1;
    f = i1;
    i1 = x;
    x = i1 + 1;
    g = i1;
    i1 = x;
    x = i1 + 1;
    h = i1;
    i1 = x;
    x = i1 + 1;
    i = i1;
    i1 = x;
    x = i1 + 1;
    j = i1;
    i1 = x;
    x = i1 + 1;
    k = i1;
    i1 = x;
    x = i1 + 1;
    l = i1;
  }
  
  public static emu a(Cursor paramCursor)
  {
    boolean bool2 = true;
    emu localemu = new emu();
    m = paramCursor.getLong(b);
    n = paramCursor.getInt(c);
    o = paramCursor.getString(d);
    p = paramCursor.getInt(e);
    if (!TextUtils.isEmpty(o)) {
      o = aal.a(aal.b(o, 4), p);
    }
    y = paramCursor.getLong(f);
    q = (paramCursor.getLong(g) * 1000L * 1000L);
    r = paramCursor.getLong(h);
    s = paramCursor.getInt(i);
    t = paramCursor.getInt(j);
    if (paramCursor.getInt(k) == 0) {}
    for (boolean bool1 = false;; bool1 = true)
    {
      u = bool1;
      bool1 = bool2;
      if (paramCursor.getInt(l) == 0) {
        bool1 = false;
      }
      v = bool1;
      w.clear();
      z = false;
      A = 0;
      B = 0;
      C = null;
      D = null;
      E = null;
      F = false;
      return localemu;
    }
  }
  
  private void m()
  {
    if (z) {}
    long l1;
    do
    {
      return;
      z = true;
      Iterator localIterator = w.iterator();
      l1 = 0L;
      int i3 = 0;
      int i1 = 0;
      Object localObject2 = null;
      Object localObject1 = null;
      if (localIterator.hasNext())
      {
        emv localemv = (emv)localIterator.next();
        Object localObject5;
        Object localObject4;
        int i4;
        int i2;
        if (localemv.a())
        {
          A += 1;
          if (C == null)
          {
            C = j;
            localObject5 = localObject1;
            localObject4 = localObject2;
            i4 = i1;
            i2 = i3;
          }
        }
        for (;;)
        {
          l1 += n;
          i3 = i2;
          i1 = i4;
          localObject2 = localObject4;
          localObject1 = localObject5;
          break;
          Object localObject3 = localObject1;
          if (localObject1 == null)
          {
            localObject1 = new StringBuilder();
            localObject3 = localObject1;
            if (!TextUtils.isEmpty(C))
            {
              ((StringBuilder)localObject1).append(C);
              localObject3 = localObject1;
            }
          }
          i2 = i3;
          i4 = i1;
          localObject4 = localObject2;
          localObject5 = localObject3;
          if (!TextUtils.isEmpty(j))
          {
            if (((StringBuilder)localObject3).length() > 0) {
              ((StringBuilder)localObject3).append(" ");
            }
            ((StringBuilder)localObject3).append(j);
            i2 = i3;
            i4 = i1;
            localObject4 = localObject2;
            localObject5 = localObject3;
            continue;
            i2 = i3;
            i4 = i1;
            localObject4 = localObject2;
            localObject5 = localObject1;
            if (localemv.b())
            {
              B += 1;
              if (localemv.c()) {
                F = true;
              }
              if (D == null)
              {
                D = localemv.d().toString();
                E = i;
                i4 = l;
                i2 = m;
                localObject4 = localObject2;
                localObject5 = localObject1;
              }
              else
              {
                localObject3 = localObject2;
                if (localObject2 == null)
                {
                  localObject3 = new StringBuilder();
                  ((StringBuilder)localObject3).append(aal.a(new String[] { D, E, Integer.toString(i1), Integer.toString(i3) }));
                }
                ((StringBuilder)localObject3).append('|').append(aal.a(new String[] { localemv.d().toString(), i, Integer.toString(l), Integer.toString(m) }));
                i2 = i3;
                i4 = i1;
                localObject4 = localObject3;
                localObject5 = localObject1;
              }
            }
          }
        }
      }
      if (B > 1) {
        E = "multipart/mixed";
      }
      if (localObject1 != null) {
        C = ((StringBuilder)localObject1).toString();
      }
      if (localObject2 != null) {
        D = ((StringBuilder)localObject2).toString();
      }
    } while (y > 0L);
    if (o != null) {}
    for (long l2 = o.getBytes().length;; l2 = 0L)
    {
      y = l2;
      y += l1;
      return;
    }
  }
  
  public int a()
  {
    return 1;
  }
  
  public void a(emv paramemv)
  {
    w.add(paramemv);
  }
  
  public long b()
  {
    return m;
  }
  
  public long c()
  {
    return q;
  }
  
  public List<emv> d()
  {
    return w;
  }
  
  public String e()
  {
    if (!z) {
      m();
    }
    if (C == null) {
      return "";
    }
    return C;
  }
  
  public String f()
  {
    if (!z) {
      m();
    }
    return D;
  }
  
  public String g()
  {
    if (!z) {
      m();
    }
    return E;
  }
  
  public long h()
  {
    if (!z) {
      m();
    }
    return y;
  }
  
  public boolean i()
  {
    if (!z) {
      m();
    }
    return F;
  }
  
  public int j()
  {
    if (!z) {
      m();
    }
    return A;
  }
  
  public int k()
  {
    if (!z) {
      m();
    }
    return B;
  }
  
  public List<eft> l()
  {
    ArrayList localArrayList = null;
    if (!z) {
      m();
    }
    if (B > 0)
    {
      localArrayList = new ArrayList();
      Iterator localIterator = w.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (emv)localIterator.next();
        if (((emv)localObject).b())
        {
          String str = ((emv)localObject).d().toString();
          int i1 = l;
          int i2 = m;
          localObject = i;
          localArrayList.add(new efw(new int[] { 0 }, null, str, i1, i2, (String)localObject, 1));
        }
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     emu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */