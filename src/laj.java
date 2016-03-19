import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;

final class laj
  extends laa
{
  static final Unsafe a;
  static final long b;
  static final long c;
  static final long d;
  static final long e;
  static final long f;
  
  static
  {
    try
    {
      localUnsafe1 = Unsafe.getUnsafe();
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        try
        {
          Unsafe localUnsafe1;
          c = localUnsafe1.objectFieldOffset(kzz.class.getDeclaredField("waiters"));
          b = localUnsafe1.objectFieldOffset(kzz.class.getDeclaredField("listeners"));
          d = localUnsafe1.objectFieldOffset(kzz.class.getDeclaredField("value"));
          e = localUnsafe1.objectFieldOffset(lal.class.getDeclaredField("thread"));
          f = localUnsafe1.objectFieldOffset(lal.class.getDeclaredField("next"));
          a = localUnsafe1;
          return;
        }
        catch (Exception localException)
        {
          throw koh.a(localException);
        }
        localSecurityException = localSecurityException;
        try
        {
          Unsafe localUnsafe2 = (Unsafe)AccessController.doPrivileged(new lak());
        }
        catch (PrivilegedActionException localPrivilegedActionException)
        {
          throw new RuntimeException("Could not initialize intrinsics", localPrivilegedActionException.getCause());
        }
      }
    }
  }
  
  void a(lal paramlal, Thread paramThread)
  {
    a.putObject(paramlal, e, paramThread);
  }
  
  void a(lal paramlal1, lal paramlal2)
  {
    a.putObject(paramlal1, f, paramlal2);
  }
  
  boolean a(kzz<?> paramkzz, Object paramObject1, Object paramObject2)
  {
    return a.compareAndSwapObject(paramkzz, d, paramObject1, paramObject2);
  }
  
  boolean a(kzz<?> paramkzz, lae paramlae1, lae paramlae2)
  {
    return a.compareAndSwapObject(paramkzz, b, paramlae1, paramlae2);
  }
  
  boolean a(kzz<?> paramkzz, lal paramlal1, lal paramlal2)
  {
    return a.compareAndSwapObject(paramkzz, c, paramlal1, paramlal2);
  }
}

/* Location:
 * Qualified Name:     laj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */