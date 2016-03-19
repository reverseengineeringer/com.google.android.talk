import java.util.Arrays;

public final class gbs
  extends gbh<gbs>
{
  public byte[] a = gbp.h;
  public byte[][] b = gbp.g;
  public boolean c = false;
  
  public gbs()
  {
    o = null;
    p = -1;
  }
  
  protected int a()
  {
    int n = 0;
    int j = super.a();
    int i = j;
    if (!Arrays.equals(a, gbp.h)) {
      i = j + gbg.b(1, a);
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        int k = 0;
        int m = 0;
        j = n;
        while (j < b.length)
        {
          byte[] arrayOfByte = b[j];
          int i1 = k;
          n = m;
          if (arrayOfByte != null)
          {
            n = m + 1;
            i1 = k + gbg.a(arrayOfByte);
          }
          j += 1;
          k = i1;
          m = n;
        }
        j = i + k + m * 1;
      }
    }
    i = j;
    if (c) {
      i = j + (gbg.c(3) + 1);
    }
    return i;
  }
  
  public void a(gbg paramgbg)
  {
    if (!Arrays.equals(a, gbp.h)) {
      paramgbg.a(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        byte[] arrayOfByte = b[i];
        if (arrayOfByte != null) {
          paramgbg.a(2, arrayOfByte);
        }
        i += 1;
      }
    }
    if (c) {
      paramgbg.a(3, c);
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
          do
          {
            return bool1;
            bool1 = bool2;
          } while (!(paramObject instanceof gbs));
          paramObject = (gbs)paramObject;
          bool1 = bool2;
        } while (!Arrays.equals(a, a));
        bool1 = bool2;
      } while (!gbl.a(b, b));
      bool1 = bool2;
    } while (c != c);
    return a((gbh)paramObject);
  }
  
  public int hashCode()
  {
    int j = Arrays.hashCode(a);
    int k = gbl.a(b);
    if (c) {}
    for (int i = 1231;; i = 1237) {
      return (i + ((j + 527) * 31 + k) * 31) * 31 + c();
    }
  }
}

/* Location:
 * Qualified Name:     gbs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */