import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

final class jru
  extends PhantomReference<Object>
  implements Runnable
{
  static final Set<lbl<?>> a = Collections.synchronizedSet(new HashSet());
  final lbl<?> b;
  
  jru(Object paramObject, ReferenceQueue<Object> paramReferenceQueue, lbl<?> paramlbl)
  {
    super(paramObject, paramReferenceQueue);
    b = paramlbl;
    a.add(paramlbl);
  }
  
  public void run()
  {
    a.remove(b);
  }
}

/* Location:
 * Qualified Name:     jru
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */