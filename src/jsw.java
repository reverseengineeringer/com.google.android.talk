import android.os.Build.VERSION;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.Security;

public final class jsw
  implements jrx
{
  public void a()
  {
    for (;;)
    {
      try
      {
        if (Build.VERSION.SDK_INT >= 16)
        {
          i = Build.VERSION.SDK_INT;
          if (i <= 18) {
            continue;
          }
        }
      }
      catch (SecurityException localSecurityException2)
      {
        int i;
        continue;
        try
        {
          Object localObject2 = SecureRandom.getInstance("SHA1PRNG");
          if (hpf.class.equals(((SecureRandom)localObject2).getProvider().getClass())) {
            continue;
          }
          String str = String.valueOf("SecureRandom.getInstance(\"SHA1PRNG\") backed by wrong Provider: ");
          localObject2 = String.valueOf(((SecureRandom)localObject2).getProvider().getClass());
          throw new SecurityException(String.valueOf(str).length() + 0 + String.valueOf(localObject2).length() + str + (String)localObject2);
        }
        catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
        {
          throw new SecurityException("SHA1PRNG not available", localNoSuchAlgorithmException);
        }
      }
      try
      {
        if (Build.VERSION.SDK_INT <= 18)
        {
          Object localObject1 = Security.getProviders("SecureRandom.SHA1PRNG");
          if ((localObject1 == null) || (localObject1.length <= 0) || (!hpf.class.equals(localObject1[0].getClass()))) {
            Security.insertProviderAt(new hpf(), 1);
          }
          localObject1 = new SecureRandom();
          if (hpf.class.equals(((SecureRandom)localObject1).getProvider().getClass())) {
            continue;
          }
          localObject1 = String.valueOf(((SecureRandom)localObject1).getProvider().getClass());
          throw new SecurityException(String.valueOf(localObject1).length() + 45 + "new SecureRandom() backed by wrong Provider: " + (String)localObject1);
        }
      }
      catch (SecurityException localSecurityException1) {}
      return;
      try
      {
        Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_seed", new Class[] { byte[].class }).invoke(null, new Object[] { hpd.a() });
        i = ((Integer)Class.forName("org.apache.harmony.xnet.provider.jsse.NativeCrypto").getMethod("RAND_load_file", new Class[] { String.class, Long.TYPE }).invoke(null, new Object[] { "/dev/urandom", Integer.valueOf(1024) })).intValue();
        if (i == 1024) {
          continue;
        }
        throw new IOException(60 + "Unexpected number of bytes read from Linux PRNG: " + i);
      }
      catch (Exception localException)
      {
        throw new SecurityException("Failed to seed OpenSSL PRNG", localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     jsw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */