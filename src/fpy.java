import java.util.Arrays;

final class fpy
  extends fmx
{
  private final byte[] a;
  
  fpy(byte[] paramArrayOfByte)
  {
    super(Arrays.copyOfRange(paramArrayOfByte, 0, 25));
    a = paramArrayOfByte;
  }
  
  byte[] a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     fpy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */