import java.util.Arrays;

public final class gbt
  extends gbh<gbt>
{
  public long a = 0L;
  public long b = 0L;
  public String c = "";
  public int d = 0;
  public int e = 0;
  public boolean f = false;
  public gbu[] g = gbu.b();
  public gbr h = null;
  public byte[] i = gbp.h;
  public byte[] j = gbp.h;
  public byte[] k = gbp.h;
  public gbq l = null;
  public String m = "";
  public long n = 180000L;
  public gbs q = null;
  public byte[] r = gbp.h;
  public int s = 0;
  public int[] t = gbp.a;
  
  public gbt()
  {
    o = null;
    p = -1;
  }
  
  protected int a()
  {
    int i4 = 0;
    int i1 = super.a();
    int i2 = i1;
    if (a != 0L) {
      i2 = i1 + gbg.b(1, a);
    }
    i1 = i2;
    if (!c.equals("")) {
      i1 = i2 + gbg.b(2, c);
    }
    i2 = i1;
    if (g != null)
    {
      i2 = i1;
      if (g.length > 0)
      {
        i2 = 0;
        while (i2 < g.length)
        {
          gbu localgbu = g[i2];
          i3 = i1;
          if (localgbu != null) {
            i3 = i1 + gbg.b(3, localgbu);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (!Arrays.equals(i, gbp.h)) {
      i1 = i2 + gbg.b(6, i);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + gbg.b(7, l);
    }
    i1 = i2;
    if (!Arrays.equals(j, gbp.h)) {
      i1 = i2 + gbg.b(8, j);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + gbg.b(9, h);
    }
    i1 = i2;
    if (f) {
      i1 = i2 + (gbg.c(10) + 1);
    }
    i2 = i1;
    if (d != 0) {
      i2 = i1 + gbg.b(11, d);
    }
    i1 = i2;
    if (e != 0) {
      i1 = i2 + gbg.b(12, e);
    }
    i2 = i1;
    if (!Arrays.equals(k, gbp.h)) {
      i2 = i1 + gbg.b(13, k);
    }
    i1 = i2;
    if (!m.equals("")) {
      i1 = i2 + gbg.b(14, m);
    }
    i2 = i1;
    if (n != 180000L)
    {
      long l1 = n;
      i2 = gbg.c(15);
      i2 = i1 + (gbg.b(gbg.c(l1)) + i2);
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + gbg.b(16, q);
    }
    i2 = i1;
    if (b != 0L) {
      i2 = i1 + gbg.b(17, b);
    }
    int i3 = i2;
    if (!Arrays.equals(r, gbp.h)) {
      i3 = i2 + gbg.b(18, r);
    }
    i1 = i3;
    if (s != 0) {
      i1 = i3 + gbg.b(19, s);
    }
    i2 = i1;
    if (t != null)
    {
      i2 = i1;
      if (t.length > 0)
      {
        i3 = 0;
        i2 = i4;
        while (i2 < t.length)
        {
          i3 += gbg.b(t[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + t.length * 2;
      }
    }
    return i2;
  }
  
  public void a(gbg paramgbg)
  {
    int i2 = 0;
    if (a != 0L) {
      paramgbg.a(1, a);
    }
    if (!c.equals("")) {
      paramgbg.a(2, c);
    }
    int i1;
    if ((g != null) && (g.length > 0))
    {
      i1 = 0;
      while (i1 < g.length)
      {
        gbu localgbu = g[i1];
        if (localgbu != null) {
          paramgbg.a(3, localgbu);
        }
        i1 += 1;
      }
    }
    if (!Arrays.equals(i, gbp.h)) {
      paramgbg.a(6, i);
    }
    if (l != null) {
      paramgbg.a(7, l);
    }
    if (!Arrays.equals(j, gbp.h)) {
      paramgbg.a(8, j);
    }
    if (h != null) {
      paramgbg.a(9, h);
    }
    if (f) {
      paramgbg.a(10, f);
    }
    if (d != 0) {
      paramgbg.a(11, d);
    }
    if (e != 0) {
      paramgbg.a(12, e);
    }
    if (!Arrays.equals(k, gbp.h)) {
      paramgbg.a(13, k);
    }
    if (!m.equals("")) {
      paramgbg.a(14, m);
    }
    if (n != 180000L) {
      paramgbg.a(n);
    }
    if (q != null) {
      paramgbg.a(16, q);
    }
    if (b != 0L) {
      paramgbg.a(17, b);
    }
    if (!Arrays.equals(r, gbp.h)) {
      paramgbg.a(18, r);
    }
    if (s != 0) {
      paramgbg.a(19, s);
    }
    if ((t != null) && (t.length > 0))
    {
      i1 = i2;
      while (i1 < t.length)
      {
        paramgbg.a(20, t[i1]);
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
    label69:
    label140:
    label204:
    label220:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          do
                          {
                            do
                            {
                              do
                              {
                                do
                                {
                                  do
                                  {
                                    return bool1;
                                    bool1 = bool2;
                                  } while (!(paramObject instanceof gbt));
                                  paramObject = (gbt)paramObject;
                                  bool1 = bool2;
                                } while (a != a);
                                bool1 = bool2;
                              } while (b != b);
                              if (c != null) {
                                break;
                              }
                              bool1 = bool2;
                            } while (c != null);
                            bool1 = bool2;
                          } while (d != d);
                          bool1 = bool2;
                        } while (e != e);
                        bool1 = bool2;
                      } while (f != f);
                      bool1 = bool2;
                    } while (!gbl.a(g, g));
                    if (h != null) {
                      break label317;
                    }
                    bool1 = bool2;
                  } while (h != null);
                  bool1 = bool2;
                } while (!Arrays.equals(i, i));
                bool1 = bool2;
              } while (!Arrays.equals(j, j));
              bool1 = bool2;
            } while (!Arrays.equals(k, k));
            if (l != null) {
              break label333;
            }
            bool1 = bool2;
          } while (l != null);
          if (m != null) {
            break label349;
          }
          bool1 = bool2;
        } while (m != null);
        bool1 = bool2;
      } while (n != n);
      if (q != null) {
        break label365;
      }
      bool1 = bool2;
    } while (q != null);
    label317:
    label333:
    label349:
    label365:
    while (q.equals(q))
    {
      bool1 = bool2;
      if (!Arrays.equals(r, r)) {
        break;
      }
      bool1 = bool2;
      if (s != s) {
        break;
      }
      bool1 = bool2;
      if (!gbl.a(t, t)) {
        break;
      }
      return a((gbh)paramObject);
      if (c.equals(c)) {
        break label69;
      }
      return false;
      if (h.equals(h)) {
        break label140;
      }
      return false;
      if (l.equals(l)) {
        break label204;
      }
      return false;
      if (m.equals(m)) {
        break label220;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int i6 = 0;
    int i7 = (int)(a ^ a >>> 32);
    int i8 = (int)(b ^ b >>> 32);
    int i1;
    int i9;
    int i10;
    int i2;
    label65:
    int i11;
    int i3;
    label83:
    int i12;
    int i13;
    int i14;
    int i4;
    label120:
    int i5;
    label130:
    int i15;
    if (c == null)
    {
      i1 = 0;
      i9 = d;
      i10 = e;
      if (!f) {
        break label289;
      }
      i2 = 1231;
      i11 = gbl.a(g);
      if (h != null) {
        break label296;
      }
      i3 = 0;
      i12 = Arrays.hashCode(i);
      i13 = Arrays.hashCode(j);
      i14 = Arrays.hashCode(k);
      if (l != null) {
        break label307;
      }
      i4 = 0;
      if (m != null) {
        break label319;
      }
      i5 = 0;
      i15 = (int)(n ^ n >>> 32);
      if (q != null) {
        break label331;
      }
    }
    for (;;)
    {
      return ((((((i5 + (i4 + ((((i3 + ((i2 + (((i1 + ((i7 + 527) * 31 + i8) * 31) * 31 + i9) * 31 + i10) * 31) * 31 + i11) * 31) * 31 + i12) * 31 + i13) * 31 + i14) * 31) * 31) * 31 + i15) * 31 + i6) * 31 + Arrays.hashCode(r)) * 31 + s) * 31 + gbl.a(t)) * 31 + c();
      i1 = c.hashCode();
      break;
      label289:
      i2 = 1237;
      break label65;
      label296:
      i3 = h.hashCode();
      break label83;
      label307:
      i4 = l.hashCode();
      break label120;
      label319:
      i5 = m.hashCode();
      break label130;
      label331:
      i6 = q.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     gbt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */