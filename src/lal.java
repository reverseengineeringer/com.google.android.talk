import java.util.concurrent.locks.LockSupport;

final class lal
{
  static final lal a = new lal();
  volatile lal next;
  volatile Thread thread;
  
  lal() {}
  
  lal(byte paramByte)
  {
    kzz.d.a(this, Thread.currentThread());
  }
  
  void a()
  {
    Thread localThread = thread;
    if (localThread != null)
    {
      thread = null;
      LockSupport.unpark(localThread);
    }
  }
  
  void a(lal paramlal)
  {
    kzz.d.a(this, paramlal);
  }
}

/* Location:
 * Qualified Name:     lal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */