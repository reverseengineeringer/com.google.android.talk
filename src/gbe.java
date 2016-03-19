import java.util.Arrays;

public final class gbe
  extends gbh<gbe>
{
  public byte[] a = gbp.h;
  public String b = "";
  public double c = 0.0D;
  public float d = 0.0F;
  public long e = 0L;
  public int f = 0;
  public int g = 0;
  public boolean h = false;
  public gbc[] i = gbc.b();
  public gbd[] j = gbd.b();
  public String[] k = gbp.f;
  public long[] l = gbp.b;
  public float[] m = gbp.c;
  public long n = 0L;
  
  public gbe()
  {
    o = null;
    p = -1;
  }
  
  protected int a()
  {
    int i7 = 0;
    int i2 = super.a();
    int i1 = i2;
    if (!Arrays.equals(a, gbp.h)) {
      i1 = i2 + gbg.b(1, a);
    }
    i2 = i1;
    if (!b.equals("")) {
      i2 = i1 + gbg.b(2, b);
    }
    i1 = i2;
    if (Double.doubleToLongBits(c) != Double.doubleToLongBits(0.0D)) {
      i1 = i2 + (gbg.c(3) + 8);
    }
    i2 = i1;
    if (Float.floatToIntBits(d) != Float.floatToIntBits(0.0F)) {
      i2 = i1 + (gbg.c(4) + 4);
    }
    int i3 = i2;
    if (e != 0L) {
      i3 = i2 + gbg.b(5, e);
    }
    i1 = i3;
    if (f != 0) {
      i1 = i3 + gbg.b(6, f);
    }
    i2 = i1;
    if (g != 0)
    {
      i2 = g;
      i3 = gbg.c(7);
      i2 = i1 + (gbg.e(gbg.f(i2)) + i3);
    }
    i1 = i2;
    if (h) {
      i1 = i2 + (gbg.c(8) + 1);
    }
    i2 = i1;
    Object localObject;
    if (i != null)
    {
      i2 = i1;
      if (i.length > 0)
      {
        i2 = 0;
        while (i2 < i.length)
        {
          localObject = i[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + gbg.b(9, (gbn)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (j != null)
    {
      i1 = i2;
      if (j.length > 0)
      {
        i1 = i2;
        i2 = 0;
        while (i2 < j.length)
        {
          localObject = j[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + gbg.b(10, (gbn)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    i2 = i1;
    if (k != null)
    {
      i2 = i1;
      if (k.length > 0)
      {
        i2 = 0;
        i3 = 0;
        int i5;
        for (int i4 = 0; i2 < k.length; i4 = i5)
        {
          localObject = k[i2];
          int i6 = i3;
          i5 = i4;
          if (localObject != null)
          {
            i5 = i4 + 1;
            i6 = i3 + gbg.a((String)localObject);
          }
          i2 += 1;
          i3 = i6;
        }
        i2 = i1 + i3 + i4 * 1;
      }
    }
    i1 = i2;
    if (l != null)
    {
      i1 = i2;
      if (l.length > 0)
      {
        i3 = 0;
        i1 = i7;
        while (i1 < l.length)
        {
          i3 += gbg.b(l[i1]);
          i1 += 1;
        }
        i1 = i2 + i3 + l.length * 1;
      }
    }
    i2 = i1;
    if (n != 0L) {
      i2 = i1 + gbg.b(13, n);
    }
    i1 = i2;
    if (m != null)
    {
      i1 = i2;
      if (m.length > 0) {
        i1 = i2 + m.length * 4 + m.length * 1;
      }
    }
    return i1;
  }
  
  public void a(gbg paramgbg)
  {
    int i2 = 0;
    if (!Arrays.equals(a, gbp.h)) {
      paramgbg.a(1, a);
    }
    if (!b.equals("")) {
      paramgbg.a(2, b);
    }
    if (Double.doubleToLongBits(c) != Double.doubleToLongBits(0.0D)) {
      paramgbg.a(c);
    }
    if (Float.floatToIntBits(d) != Float.floatToIntBits(0.0F)) {
      paramgbg.a(4, d);
    }
    if (e != 0L) {
      paramgbg.a(5, e);
    }
    if (f != 0) {
      paramgbg.a(6, f);
    }
    if (g != 0) {
      paramgbg.a(g);
    }
    if (h) {
      paramgbg.a(8, h);
    }
    int i1;
    Object localObject;
    if ((i != null) && (i.length > 0))
    {
      i1 = 0;
      while (i1 < i.length)
      {
        localObject = i[i1];
        if (localObject != null) {
          paramgbg.a(9, (gbn)localObject);
        }
        i1 += 1;
      }
    }
    if ((j != null) && (j.length > 0))
    {
      i1 = 0;
      while (i1 < j.length)
      {
        localObject = j[i1];
        if (localObject != null) {
          paramgbg.a(10, (gbn)localObject);
        }
        i1 += 1;
      }
    }
    if ((k != null) && (k.length > 0))
    {
      i1 = 0;
      while (i1 < k.length)
      {
        localObject = k[i1];
        if (localObject != null) {
          paramgbg.a(11, (String)localObject);
        }
        i1 += 1;
      }
    }
    if ((l != null) && (l.length > 0))
    {
      i1 = 0;
      while (i1 < l.length)
      {
        paramgbg.a(12, l[i1]);
        i1 += 1;
      }
    }
    if (n != 0L) {
      paramgbg.a(13, n);
    }
    if ((m != null) && (m.length > 0))
    {
      i1 = i2;
      while (i1 < m.length)
      {
        paramgbg.a(14, m[i1]);
        i1 += 1;
      }
    }
    super.a(paramgbg);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (!(paramObject instanceof gbe));
        paramObject = (gbe)paramObject;
        bool1 = bool2;
      } while (!Arrays.equals(a, a));
      if (b != null) {
        break;
      }
      bool1 = bool2;
    } while (b != null);
    while (b.equals(b))
    {
      bool1 = bool2;
      if (Double.doubleToLongBits(c) != Double.doubleToLongBits(c)) {
        break;
      }
      bool1 = bool2;
      if (Float.floatToIntBits(d) != Float.floatToIntBits(d)) {
        break;
      }
      bool1 = bool2;
      if (e != e) {
        break;
      }
      bool1 = bool2;
      if (f != f) {
        break;
      }
      bool1 = bool2;
      if (g != g) {
        break;
      }
      bool1 = bool2;
      if (h != h) {
        break;
      }
      bool1 = bool2;
      if (!gbl.a(i, i)) {
        break;
      }
      bool1 = bool2;
      if (!gbl.a(j, j)) {
        break;
      }
      bool1 = bool2;
      if (!gbl.a(k, k)) {
        break;
      }
      bool1 = bool2;
      if (!gbl.a(l, l)) {
        break;
      }
      bool1 = bool2;
      if (!gbl.a(m, m)) {
        break;
      }
      bool1 = bool2;
      if (n != n) {
        break;
      }
      return a((gbh)paramObject);
    }
    return false;
  }
  
  public int hashCode()
  {
    int i3 = Arrays.hashCode(a);
    int i1;
    int i4;
    int i5;
    int i6;
    int i7;
    int i8;
    if (b == null)
    {
      i1 = 0;
      long l1 = Double.doubleToLongBits(c);
      i4 = (int)(l1 ^ l1 >>> 32);
      i5 = Float.floatToIntBits(d);
      i6 = (int)(e ^ e >>> 32);
      i7 = f;
      i8 = g;
      if (!h) {
        break label221;
      }
    }
    label221:
    for (int i2 = 1231;; i2 = 1237)
    {
      return (((((((i2 + ((((((i1 + (i3 + 527) * 31) * 31 + i4) * 31 + i5) * 31 + i6) * 31 + i7) * 31 + i8) * 31) * 31 + gbl.a(i)) * 31 + gbl.a(j)) * 31 + gbl.a(k)) * 31 + gbl.a(l)) * 31 + gbl.a(m)) * 31 + (int)(n ^ n >>> 32)) * 31 + c();
      i1 = b.hashCode();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     gbe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */