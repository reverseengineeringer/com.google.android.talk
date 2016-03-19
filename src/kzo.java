public final class kzo
  extends lyb<kzo>
{
  public kzp a = null;
  private int b = 0;
  private long c = 0L;
  
  public kzo()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((b & 0x1) != 0) {
      paramlxz.b(2, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if ((b & 0x1) != 0) {
      j = i + lxz.e(2, c);
    }
    return j;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof kzo)) {
        return false;
      }
      paramObject = (kzo)paramObject;
      if (a == null)
      {
        if (a != null) {
          return false;
        }
      }
      else if (!a.equals(a)) {
        return false;
      }
      if (((b & 0x1) != (b & 0x1)) || (c != c)) {
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
    int k = 0;
    int m = getClass().getName().hashCode();
    int i;
    int n;
    if (a == null)
    {
      i = 0;
      n = (int)(c ^ c >>> 32);
      j = k;
      if (eD != null) {
        if (!eD.b()) {
          break label93;
        }
      }
    }
    label93:
    for (int j = k;; j = eD.hashCode())
    {
      return ((i + (m + 527) * 31) * 31 + n) * 31 + j;
      i = a.hashCode();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     kzo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */