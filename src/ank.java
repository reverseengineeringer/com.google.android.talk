import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

final class ank
  implements avw<anl>
{
  ank(anj paramanj) {}
  
  private static anl b()
  {
    try
    {
      anl localanl = new anl(MessageDigest.getInstance("SHA-256"));
      return localanl;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new RuntimeException(localNoSuchAlgorithmException);
    }
  }
}

/* Location:
 * Qualified Name:     ank
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */