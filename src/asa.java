import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

final class asa
  implements Lock
{
  public void lock() {}
  
  public void lockInterruptibly() {}
  
  public Condition newCondition()
  {
    throw new UnsupportedOperationException("Should not be called");
  }
  
  public boolean tryLock()
  {
    return true;
  }
  
  public boolean tryLock(long paramLong, TimeUnit paramTimeUnit)
  {
    return true;
  }
  
  public void unlock() {}
}

/* Location:
 * Qualified Name:     asa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */