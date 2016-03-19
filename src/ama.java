import android.graphics.Bitmap.Config;

final class ama
  implements amp
{
  private final amb a;
  private int b;
  private int c;
  private Bitmap.Config d;
  
  public ama(amb paramamb)
  {
    a = paramamb;
  }
  
  public void a()
  {
    a.a(this);
  }
  
  public void a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    b = paramInt1;
    c = paramInt2;
    d = paramConfig;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof ama))
    {
      paramObject = (ama)paramObject;
      bool1 = bool2;
      if (b == b)
      {
        bool1 = bool2;
        if (c == c)
        {
          bool1 = bool2;
          if (d == d) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    int j = b;
    int k = c;
    if (d != null) {}
    for (int i = d.hashCode();; i = 0) {
      return i + (j * 31 + k) * 31;
    }
  }
  
  public String toString()
  {
    return alz.c(b, c, d);
  }
}

/* Location:
 * Qualified Name:     ama
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */