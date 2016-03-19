import java.nio.ByteBuffer;
import java.security.MessageDigest;

public final class ave
  implements aiw
{
  private final String b;
  private final long c;
  private final int d;
  
  public ave(String paramString, long paramLong, int paramInt)
  {
    b = paramString;
    c = paramLong;
    d = paramInt;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(ByteBuffer.allocate(12).putLong(c).putInt(d).array());
    paramMessageDigest.update(b.getBytes(a));
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (ave)paramObject;
      if (c != c) {
        return false;
      }
      if (d != d) {
        return false;
      }
    } while (avq.a(b, b));
    return false;
  }
  
  public int hashCode()
  {
    if (b != null) {}
    for (int i = b.hashCode();; i = 0) {
      return (i * 31 + (int)(c ^ c >>> 32)) * 31 + d;
    }
  }
}

/* Location:
 * Qualified Name:     ave
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */