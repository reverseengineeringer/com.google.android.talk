import java.nio.charset.Charset;
import java.security.MessageDigest;

public abstract interface aiw
{
  public static final Charset a = Charset.forName("UTF-8");
  
  public abstract void a(MessageDigest paramMessageDigest);
  
  public abstract boolean equals(Object paramObject);
  
  public abstract int hashCode();
}

/* Location:
 * Qualified Name:     aiw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */