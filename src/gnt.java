import android.database.Cursor;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;
import java.util.HashMap;

final class gnt
  implements gpr
{
  private final int b;
  private boolean c;
  private ArrayList<Long> d;
  private ArrayList<gps> e;
  private ArrayList<gpy> f;
  private gps g;
  private final boolean h;
  
  public gnt(gnq paramgnq, int paramInt)
  {
    b = paramInt;
    if (!TextUtils.isEmpty(e())) {}
    for (boolean bool = true;; bool = false)
    {
      h = bool;
      return;
    }
  }
  
  private static Iterable<gps> a(gps paramgps)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramgps);
    return localArrayList;
  }
  
  private String a(Cursor paramCursor, gnu paramgnu)
  {
    int i = a.c.getInt(4);
    if (i == 0) {
      return paramCursor.getString(5);
    }
    return paramgnu.a(i);
  }
  
  private String a(String paramString)
  {
    if (f())
    {
      int i = a.d.a(b, 0);
      return a.b.b(paramString, i, a.b.a(i));
    }
    return null;
  }
  
  private int k()
  {
    return a.e.b(b);
  }
  
  private void l()
  {
    if (c) {
      return;
    }
    c = true;
    int j = k();
    d = new ArrayList(j);
    e = new ArrayList();
    f = null;
    if ((f()) && (a.j)) {
      f = a.k.a(a("v_phones"), false);
    }
    if (f == null) {
      f = new ArrayList();
    }
    g = null;
    String str1 = e();
    int i = 0;
    label115:
    if (i < j)
    {
      int k = a.e.a(b, i);
      if (a.c.moveToPosition(k))
      {
        long l = a.c.getLong(0);
        d.add(Long.valueOf(l));
      }
    }
    label363:
    label465:
    for (;;)
    {
      Object localObject = a.c.getString(2);
      String str2;
      if (("vnd.android.cursor.item/email_v2".equals(localObject)) && (g == null))
      {
        localObject = a(a.c, a.h);
        str2 = a.c.getString(3);
        if (!TextUtils.isEmpty(str2))
        {
          localObject = new gnx((String)localObject, str2);
          if (!e.contains(localObject))
          {
            if ((str1 == null) || (!a.g.containsKey(((gps)localObject).b())) || (!str1.equals(a.g.get(((gps)localObject).b())))) {
              break label363;
            }
            g = ((gps)localObject);
            e.clear();
          }
        }
      }
      for (;;)
      {
        if (gnv.b(a.c)) {
          break label465;
        }
        i += 1;
        break label115;
        break;
        e.add(localObject);
        continue;
        if ("vnd.android.cursor.item/phone_v2".equals(localObject))
        {
          localObject = a(a.c, a.i);
          str2 = a.c.getString(3);
          if (!TextUtils.isEmpty(str2))
          {
            localObject = new gog((String)localObject, str2);
            if (!f.contains(localObject)) {
              f.add(localObject);
            }
          }
        }
      }
    }
  }
  
  public Iterable<gps> P_()
  {
    a.f();
    String str = gpd.d(g());
    if (!TextUtils.isEmpty(str)) {
      return a(new gnx("", str));
    }
    l();
    if (h)
    {
      if (g != null) {
        return a(g);
      }
      return gps.a;
    }
    a.f();
    if (k() > 0) {}
    for (int i = 1; i == 0; i = 0)
    {
      if (aal.q(3))
      {
        new StringBuilder("Row should have a contact: ").append(g());
        aal.q(3);
      }
      return gps.a;
    }
    return e;
  }
  
  public String a()
  {
    a.f();
    if (f()) {
      return a("name");
    }
    a.c.moveToPosition(a.e.a(b, 0));
    return a.c.getString(1);
  }
  
  public Iterable<Long> b()
  {
    a.f();
    l();
    return d;
  }
  
  public Iterable<gpy> d()
  {
    a.f();
    if (gpd.e(g())) {
      return gpy.a;
    }
    l();
    return f;
  }
  
  public String e()
  {
    a.f();
    return (String)a.f.get(b);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof gnt))
    {
      paramObject = (gnt)paramObject;
      bool1 = bool2;
      if (b == b)
      {
        bool1 = bool2;
        if (a == a) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public boolean f()
  {
    a.f();
    return a.d.b(b) > 0;
  }
  
  public String g()
  {
    a.f();
    return a("qualified_id");
  }
  
  public String h()
  {
    a.f();
    return gos.a.a(a("avatar"));
  }
  
  public int hashCode()
  {
    return a.hashCode() * 31 + b;
  }
  
  public String[] i()
  {
    a.f();
    return gpd.b(a("v_circle_ids"));
  }
  
  public String j()
  {
    a.f();
    if (f()) {
      return a.b.c().getString("account");
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     gnt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */