import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

public final class dml
  implements Serializable
{
  private final String a;
  private final int b;
  private Boolean c;
  private Long d;
  private Float e;
  private boolean f = false;
  private boolean g;
  private long h;
  private float i;
  
  public dml(String paramString)
  {
    a = paramString;
    e = Float.valueOf(1.08F);
    b = 3;
  }
  
  public dml(String paramString, long paramLong)
  {
    a = paramString;
    d = Long.valueOf(paramLong);
    b = 2;
  }
  
  public dml(String paramString, boolean paramBoolean)
  {
    a = paramString;
    c = Boolean.valueOf(paramBoolean);
    b = 1;
  }
  
  public dml(jzv paramjzv)
  {
    a = a;
    int j = aal.a(b, 0);
    if (j == 1)
    {
      b = 1;
      g = aal.a(c.d, false);
      if (aal.a(d, 0) != 2) {
        break label167;
      }
    }
    for (;;)
    {
      f = bool;
      return;
      if (j == 2)
      {
        b = 2;
        h = aal.a(c.a, 0L);
        break;
      }
      if (j == 3)
      {
        b = 3;
        i = ((float)aal.a(c.b));
        break;
      }
      ezi.e("Babel", String.format("Invalid server experiment type %s for %s", new Object[] { Integer.valueOf(j), toString() }), new Object[0]);
      b = -1;
      break;
      label167:
      bool = false;
    }
  }
  
  private static hqc e(int paramInt)
  {
    return ((hpz)ilh.a(aal.oJ, hpz.class)).b(paramInt);
  }
  
  private static Boolean e()
  {
    Iterator localIterator = ilh.c(aal.oJ, dvo.class).iterator();
    while (localIterator.hasNext())
    {
      dvo localdvo = (dvo)localIterator.next();
      if (localdvo.a()) {
        return Boolean.valueOf(localdvo.b());
      }
    }
    return null;
  }
  
  private static Long f()
  {
    Iterator localIterator = ilh.c(aal.oJ, dvo.class).iterator();
    while (localIterator.hasNext())
    {
      dvo localdvo = (dvo)localIterator.next();
      if (localdvo.a()) {
        return Long.valueOf(localdvo.c());
      }
    }
    return null;
  }
  
  private static Float g()
  {
    Iterator localIterator = ilh.c(aal.oJ, dvo.class).iterator();
    while (localIterator.hasNext())
    {
      dvo localdvo = (dvo)localIterator.next();
      if (localdvo.a()) {
        return Float.valueOf(localdvo.d());
      }
    }
    return null;
  }
  
  public int a()
  {
    boolean bool2 = true;
    int j = b;
    String str = 36 + "Invalid experiment type. " + j;
    boolean bool1 = bool2;
    if (b != 1)
    {
      bool1 = bool2;
      if (b != 2) {
        if (b != 3) {
          break label71;
        }
      }
    }
    label71:
    for (bool1 = bool2;; bool1 = false)
    {
      hbs.a(str, bool1);
      return b;
    }
  }
  
  public Boolean a(int paramInt)
  {
    hbs.b("Expected non-null", c);
    if (!((hpz)ilh.a(aal.oJ, hpz.class)).c(paramInt))
    {
      ezi.d("Babel", 61 + "Invalid account getting server boolean experiment " + paramInt, new Object[0]);
      return null;
    }
    boolean bool = aal.a(c, false);
    hqc localhqc = e(paramInt).g("babel_exp");
    if (localhqc.a(a)) {
      return Boolean.valueOf(localhqc.a(a, bool));
    }
    return null;
  }
  
  public void a(hqe paramhqe, dml paramdml)
  {
    hbs.a(paramdml.b(), b());
    hbs.a(Integer.valueOf(paramdml.a()), Integer.valueOf(a()));
    if (paramdml.a() == 1) {
      paramhqe.h("babel_exp").c(a, g);
    }
    do
    {
      return;
      if (paramdml.a() == 2)
      {
        paramhqe.h("babel_exp").c(a, h);
        return;
      }
    } while (paramdml.a() != 3);
    paramhqe.h("babel_exp").b(a, i);
  }
  
  public void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public String b()
  {
    return a;
  }
  
  public boolean b(int paramInt)
  {
    hbs.b("Expected non-null", c);
    boolean bool = aal.a(c, false);
    if (!((hpz)ilh.a(aal.oJ, hpz.class)).c(paramInt))
    {
      ezi.d("Babel", 54 + "Invalid account getting boolean experiment " + paramInt, new Object[0]);
      return bool;
    }
    Boolean localBoolean = e();
    if (localBoolean != null) {
      return aal.a(localBoolean, false);
    }
    return e(paramInt).g("babel_exp").a(a, bool);
  }
  
  public long c(int paramInt)
  {
    hbs.b("Expected non-null", d);
    long l = aal.a(d, 0L);
    if (!((hpz)ilh.a(aal.oJ, hpz.class)).c(paramInt))
    {
      ezi.d("Babel", 51 + "Invalid account getting long experiment " + paramInt, new Object[0]);
      return l;
    }
    Long localLong = f();
    if (localLong != null) {
      return aal.a(localLong, 0L);
    }
    return e(paramInt).g("babel_exp").a(a, l);
  }
  
  public boolean c()
  {
    return f;
  }
  
  public float d(int paramInt)
  {
    hbs.b("Expected non-null", e);
    float f1 = aal.a(e);
    if (!((hpz)ilh.a(aal.oJ, hpz.class)).c(paramInt))
    {
      ezi.d("Babel", 52 + "Invalid account getting float experiment " + paramInt, new Object[0]);
      return f1;
    }
    Float localFloat = g();
    if (localFloat != null) {
      return aal.a(localFloat);
    }
    return e(paramInt).g("babel_exp").a(a, f1);
  }
  
  public Boolean d()
  {
    return c;
  }
  
  public String toString()
  {
    String str1 = String.valueOf("BabelExperiment{id='");
    String str2 = a;
    int j = b;
    String str3 = String.valueOf(c);
    String str4 = String.valueOf(d);
    String str5 = String.valueOf(e);
    return String.valueOf(str1).length() + 76 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + str1 + str2 + "', experimentType=" + j + ", defaultBoolean=" + str3 + ", defaultLong=" + str4 + ", defaultFloat=" + str5 + "}";
  }
}

/* Location:
 * Qualified Name:     dml
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */