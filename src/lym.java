import java.util.Arrays;

final class lym
{
  final int a;
  final byte[] b;
  
  lym(int paramInt, byte[] paramArrayOfByte)
  {
    a = paramInt;
    b = paramArrayOfByte;
  }
  
  int a()
  {
    return lxz.h(a) + 0 + b.length;
  }
  
  void a(lxz paramlxz)
  {
    paramlxz.g(a);
    paramlxz.b(b);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof lym)) {
        return false;
      }
      paramObject = (lym)paramObject;
    } while ((a == a) && (Arrays.equals(b, b)));
    return false;
  }
  
  public int hashCode()
  {
    return (a + 527) * 31 + Arrays.hashCode(b);
  }
}

/* Location:
 * Qualified Name:     lym
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */