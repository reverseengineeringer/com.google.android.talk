import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class hnt
  implements hnj
{
  private static final Charset c = Charset.forName("UTF-8");
  gyi a;
  String b;
  
  public hnt() {}
  
  public hnt(gyi paramgyi, String paramString)
  {
    this();
    a = paramgyi;
    b = paramString;
  }
  
  private static long a(String paramString)
  {
    aen.a(paramString);
    aen.a(paramString, "name can not be empty.");
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramString.getBytes(c));
      long l = ByteBuffer.wrap(localMessageDigest.digest()).getLong();
      return l;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  private void b(mik parammik)
  {
    if (Log.isLoggable("ClearcutTransmitter", 3)) {
      parammik.toString();
    }
    a.a(b, lyi.a(parammik));
  }
  
  public void a(mik parammik)
  {
    if ((c != null) && (!c.trim().isEmpty()))
    {
      b = Long.valueOf(a(c));
      c = null;
    }
    b(parammik);
  }
}

/* Location:
 * Qualified Name:     hnt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */