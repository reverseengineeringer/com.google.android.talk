import java.util.Locale;

public final class eum
{
  public final boolean a;
  public final int b;
  public final int c;
  
  eum(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    a = paramBoolean;
    b = paramInt1;
    c = paramInt2;
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    return (a) && (b > paramInt1) && (c > paramInt2);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {}
    do
    {
      return false;
      paramObject = (eum)paramObject;
    } while ((a != a) || (b != b) || (c != c));
    return true;
  }
  
  public String toString()
  {
    return String.format(Locale.US, "is connected: %b, signal level: %d%%, link speed: %dMbps", new Object[] { Boolean.valueOf(a), Integer.valueOf(b), Integer.valueOf(c) });
  }
}

/* Location:
 * Qualified Name:     eum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */