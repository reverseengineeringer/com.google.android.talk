import java.security.MessageDigest;
import java.util.UUID;

final class asv
  implements aiw
{
  private final UUID b;
  
  public asv()
  {
    this(UUID.randomUUID());
  }
  
  private asv(UUID paramUUID)
  {
    b = paramUUID;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    throw new UnsupportedOperationException("Not implemented");
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof asv)) {
      return b.equals(b);
    }
    return false;
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
}

/* Location:
 * Qualified Name:     asv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */