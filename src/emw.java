import android.database.Cursor;

public final class emw
  extends ems
{
  public static final String[] a = { "_id", "type", "address", "body", "date", "thread_id", "status", "read", "seen", "date_sent" };
  public static final String[] b = { "_id", "type", "address", "body", "date", "thread_id", "status", "read", "seen" };
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
  private static int w = 0;
  public String m;
  public String n;
  public long o;
  public long p;
  public long q;
  public int r;
  public long s;
  public int t;
  public boolean u;
  public boolean v;
  
  static
  {
    w = 1;
    c = 0;
    int i1 = w;
    w = i1 + 1;
    d = i1;
    i1 = w;
    w = i1 + 1;
    e = i1;
    i1 = w;
    w = i1 + 1;
    f = i1;
    i1 = w;
    w = i1 + 1;
    g = i1;
    i1 = w;
    w = i1 + 1;
    h = i1;
    i1 = w;
    w = i1 + 1;
    i = i1;
    i1 = w;
    w = i1 + 1;
    j = i1;
    i1 = w;
    w = i1 + 1;
    k = i1;
    i1 = w;
    w = i1 + 1;
    l = i1;
  }
  
  public int a()
  {
    return 0;
  }
  
  public void a(Cursor paramCursor)
  {
    boolean bool2 = false;
    o = paramCursor.getLong(c);
    m = paramCursor.getString(e);
    n = paramCursor.getString(f);
    p = (paramCursor.getLong(g) * 1000L);
    long l1;
    if (enn.f())
    {
      l1 = paramCursor.getLong(l) * 1000L;
      q = l1;
      r = paramCursor.getInt(d);
      s = paramCursor.getLong(h);
      t = paramCursor.getInt(i);
      if (paramCursor.getInt(j) != 0) {
        break label169;
      }
      bool1 = false;
      label138:
      u = bool1;
      if (paramCursor.getInt(k) != 0) {
        break label174;
      }
    }
    label169:
    label174:
    for (boolean bool1 = bool2;; bool1 = true)
    {
      v = bool1;
      return;
      l1 = 0L;
      break;
      bool1 = true;
      break label138;
    }
  }
  
  public long b()
  {
    return o;
  }
  
  public long c()
  {
    return p;
  }
}

/* Location:
 * Qualified Name:     emw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */