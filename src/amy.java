import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;

final class amy
{
  private final Map<aiw, amz> a = new HashMap();
  private final ana b = new ana();
  
  void a(aiw paramaiw)
  {
    try
    {
      amz localamz2 = (amz)a.get(paramaiw);
      amz localamz1 = localamz2;
      if (localamz2 == null)
      {
        localamz1 = b.a();
        a.put(paramaiw, localamz1);
      }
      b += 1;
      a.lock();
      return;
    }
    finally {}
  }
  
  void b(aiw paramaiw)
  {
    Object localObject1;
    String str;
    try
    {
      localObject1 = (amz)aal.a(a.get(paramaiw), "Argument must not be null");
      if (b <= 0)
      {
        str = String.valueOf("Cannot release a lock that is not held, key: ");
        paramaiw = String.valueOf(paramaiw);
        int i = b;
        throw new IllegalStateException(String.valueOf(str).length() + 32 + String.valueOf(paramaiw).length() + str + paramaiw + ", interestedThreads: " + i);
      }
    }
    finally {}
    b -= 1;
    if (b == 0)
    {
      Object localObject2 = (amz)a.remove(paramaiw);
      if (!localObject2.equals(localObject1))
      {
        str = String.valueOf("Removed the wrong lock, expected to remove: ");
        localObject1 = String.valueOf(localObject1);
        localObject2 = String.valueOf(localObject2);
        paramaiw = String.valueOf(paramaiw);
        throw new IllegalStateException(String.valueOf(str).length() + 31 + String.valueOf(localObject1).length() + String.valueOf(localObject2).length() + String.valueOf(paramaiw).length() + str + (String)localObject1 + ", but actually removed: " + (String)localObject2 + ", key: " + paramaiw);
      }
      b.a((amz)localObject2);
    }
    a.unlock();
  }
}

/* Location:
 * Qualified Name:     amy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */