public final class kzl
  extends lyb<kzl>
{
  public static final lyc<Object, kzl> a = lyc.a(kzl.class, 126976418L);
  private static final kzl[] c = new kzl[0];
  public kzo b = null;
  private int d = 0;
  private int e = -1;
  private int f = -1;
  private int g = 0;
  private int h = 0;
  private int i = -1;
  private int j = -1;
  private int k = 0;
  private int l = -1;
  private boolean m = false;
  private long n = 0L;
  private int o = 0;
  private int p = 0;
  
  public kzl()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((d & 0x1) != 0) {
      paramlxz.a(1, e);
    }
    if ((d & 0x4) != 0) {
      paramlxz.a(2, g);
    }
    if ((d & 0x400) != 0) {
      paramlxz.a(3, o);
    }
    if ((d & 0x800) != 0) {
      paramlxz.a(4, p);
    }
    if ((d & 0x10) != 0) {
      paramlxz.a(5, i);
    }
    if ((d & 0x20) != 0) {
      paramlxz.a(6, j);
    }
    if ((d & 0x40) != 0) {
      paramlxz.a(7, k);
    }
    if ((d & 0x8) != 0) {
      paramlxz.a(8, h);
    }
    if ((d & 0x80) != 0) {
      paramlxz.a(9, l);
    }
    if ((d & 0x100) != 0) {
      paramlxz.a(10, m);
    }
    if ((d & 0x2) != 0) {
      paramlxz.a(11, f);
    }
    if ((d & 0x200) != 0) {
      paramlxz.c(12, n);
    }
    if (b != null) {
      paramlxz.b(13, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if ((d & 0x1) != 0) {
      i1 = i2 + lxz.e(1, e);
    }
    i2 = i1;
    if ((d & 0x4) != 0) {
      i2 = i1 + lxz.e(2, g);
    }
    i1 = i2;
    if ((d & 0x400) != 0) {
      i1 = i2 + lxz.e(3, o);
    }
    i2 = i1;
    if ((d & 0x800) != 0) {
      i2 = i1 + lxz.e(4, p);
    }
    i1 = i2;
    if ((d & 0x10) != 0) {
      i1 = i2 + lxz.e(5, i);
    }
    i2 = i1;
    if ((d & 0x20) != 0) {
      i2 = i1 + lxz.e(6, j);
    }
    i1 = i2;
    if ((d & 0x40) != 0) {
      i1 = i2 + lxz.e(7, k);
    }
    i2 = i1;
    if ((d & 0x8) != 0) {
      i2 = i1 + lxz.e(8, h);
    }
    i1 = i2;
    if ((d & 0x80) != 0) {
      i1 = i2 + lxz.e(9, l);
    }
    i2 = i1;
    if ((d & 0x100) != 0) {
      i2 = i1 + (lxz.f(10) + 1);
    }
    i1 = i2;
    if ((d & 0x2) != 0) {
      i1 = i2 + lxz.e(11, f);
    }
    i2 = i1;
    if ((d & 0x200) != 0) {
      i2 = i1 + (lxz.f(12) + 8);
    }
    i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.d(13, b);
    }
    return i1;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof kzl)) {
        return false;
      }
      paramObject = (kzl)paramObject;
      if (((d & 0x1) != (d & 0x1)) || (e != e)) {
        return false;
      }
      if (((d & 0x2) != (d & 0x2)) || (f != f)) {
        return false;
      }
      if (((d & 0x4) != (d & 0x4)) || (g != g)) {
        return false;
      }
      if (((d & 0x8) != (d & 0x8)) || (h != h)) {
        return false;
      }
      if (((d & 0x10) != (d & 0x10)) || (i != i)) {
        return false;
      }
      if (((d & 0x20) != (d & 0x20)) || (j != j)) {
        return false;
      }
      if (((d & 0x40) != (d & 0x40)) || (k != k)) {
        return false;
      }
      if (((d & 0x80) != (d & 0x80)) || (l != l)) {
        return false;
      }
      if (((d & 0x100) != (d & 0x100)) || (m != m)) {
        return false;
      }
      if (((d & 0x200) != (d & 0x200)) || (n != n)) {
        return false;
      }
      if (b == null)
      {
        if (b != null) {
          return false;
        }
      }
      else if (!b.equals(b)) {
        return false;
      }
      if (((d & 0x400) != (d & 0x400)) || (o != o)) {
        return false;
      }
      if (((d & 0x800) != (d & 0x800)) || (p != p)) {
        return false;
      }
      if ((eD != null) && (!eD.b())) {
        break;
      }
    } while ((eD == null) || (eD.b()));
    return false;
    return eD.equals(eD);
  }
  
  public int hashCode()
  {
    int i4 = 0;
    int i5 = getClass().getName().hashCode();
    int i6 = e;
    int i7 = f;
    int i8 = g;
    int i9 = h;
    int i10 = i;
    int i11 = j;
    int i12 = k;
    int i13 = l;
    int i1;
    int i14;
    int i2;
    label98:
    int i15;
    int i16;
    if (m)
    {
      i1 = 1231;
      i14 = (int)(n ^ n >>> 32);
      if (b != null) {
        break label228;
      }
      i2 = 0;
      i15 = o;
      i16 = p;
      i3 = i4;
      if (eD != null) {
        if (!eD.b()) {
          break label239;
        }
      }
    }
    label228:
    label239:
    for (int i3 = i4;; i3 = eD.hashCode())
    {
      return (((i2 + ((i1 + (((((((((i5 + 527) * 31 + i6) * 31 + i7) * 31 + i8) * 31 + i9) * 31 + i10) * 31 + i11) * 31 + i12) * 31 + i13) * 31) * 31 + i14) * 31) * 31 + i15) * 31 + i16) * 31 + i3;
      i1 = 1237;
      break;
      i2 = b.hashCode();
      break label98;
    }
  }
}

/* Location:
 * Qualified Name:     kzl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */