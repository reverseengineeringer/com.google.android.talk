import java.util.Arrays;

final class gbo
{
  final int a;
  final byte[] b;
  
  gbo(int paramInt, byte[] paramArrayOfByte)
  {
    a = paramInt;
    b = paramArrayOfByte;
  }
  
  int a()
  {
    return gbg.e(a) + 0 + b.length;
  }
  
  void a(gbg paramgbg)
  {
    paramgbg.d(a);
    paramgbg.b(b);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof gbo)) {
        return false;
      }
      paramObject = (gbo)paramObject;
    } while ((a == a) && (Arrays.equals(b, b)));
    return false;
  }
  
  public int hashCode()
  {
    return (a + 527) * 31 + Arrays.hashCode(b);
  }
}

/* Location:
 * Qualified Name:     gbo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */