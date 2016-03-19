import java.util.Map;

public final class agq
{
  public final int a;
  public final byte[] b;
  public final Map<String, String> c;
  public final boolean d;
  public final long e;
  
  public agq(int paramInt, byte[] paramArrayOfByte, Map<String, String> paramMap, boolean paramBoolean, long paramLong)
  {
    a = paramInt;
    b = paramArrayOfByte;
    c = paramMap;
    d = paramBoolean;
    e = paramLong;
  }
  
  public agq(byte[] paramArrayOfByte, Map<String, String> paramMap)
  {
    this(200, paramArrayOfByte, paramMap, false, 0L);
  }
}

/* Location:
 * Qualified Name:     agq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */