import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;

public class kzz<V>
  implements lbb<V>
{
  private static final boolean a = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
  private static final Logger b = Logger.getLogger(kzz.class.getName());
  private static final Object c;
  static final laa d;
  volatile lae listeners;
  volatile Object value;
  volatile lal waiters;
  
  static
  {
    try
    {
      localObject = new laj();
      d = (laa)localObject;
      c = new Object();
      return;
    }
    catch (Throwable localThrowable2)
    {
      for (;;)
      {
        try
        {
          Object localObject = new laf(AtomicReferenceFieldUpdater.newUpdater(lal.class, Thread.class, "thread"), AtomicReferenceFieldUpdater.newUpdater(lal.class, lal.class, "next"), AtomicReferenceFieldUpdater.newUpdater(kzz.class, lal.class, "waiters"), AtomicReferenceFieldUpdater.newUpdater(kzz.class, lae.class, "listeners"), AtomicReferenceFieldUpdater.newUpdater(kzz.class, Object.class, "value"));
        }
        catch (Throwable localThrowable1)
        {
          b.log(Level.SEVERE, "UnsafeAtomicHelper is broken!", localThrowable2);
          b.log(Level.SEVERE, "SafeAtomicHelper is broken!", localThrowable1);
          lah locallah = new lah();
        }
      }
    }
  }
  
  private static V a(Object paramObject)
  {
    if ((paramObject instanceof lab))
    {
      paramObject = b;
      localObject = new CancellationException("Task was cancelled.");
      ((CancellationException)localObject).initCause((Throwable)paramObject);
      throw ((Throwable)localObject);
    }
    if ((paramObject instanceof lac)) {
      throw new ExecutionException(b);
    }
    Object localObject = paramObject;
    if (paramObject == c) {
      localObject = null;
    }
    return (V)localObject;
  }
  
  private void a(lal paramlal)
  {
    thread = null;
    paramlal = waiters;
    if (paramlal == lal.a) {}
    label34:
    label80:
    for (;;)
    {
      return;
      for (;;)
      {
        if (paramlal == null) {
          break label80;
        }
        lal locallal2 = next;
        lal locallal1;
        if (thread != null)
        {
          locallal1 = paramlal;
          paramlal = locallal2;
        }
        else
        {
          if (locallal1 != null)
          {
            next = locallal2;
            if (thread == null) {
              break;
            }
          }
          for (;;)
          {
            paramlal = locallal1;
            break label34;
            if (!d.a(this, paramlal, locallal2)) {
              break;
            }
          }
          locallal1 = null;
        }
      }
    }
  }
  
  private static void b(Runnable paramRunnable, Executor paramExecutor)
  {
    try
    {
      paramExecutor.execute(paramRunnable);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      Logger localLogger = b;
      Level localLevel = Level.SEVERE;
      paramRunnable = String.valueOf(paramRunnable);
      paramExecutor = String.valueOf(paramExecutor);
      localLogger.log(localLevel, String.valueOf(paramRunnable).length() + 57 + String.valueOf(paramExecutor).length() + "RuntimeException while executing runnable " + paramRunnable + " with executor " + paramExecutor, localRuntimeException);
    }
  }
  
  private void d()
  {
    do
    {
      localObject1 = waiters;
    } while (!d.a(this, (lal)localObject1, lal.a));
    while (localObject1 != null)
    {
      ((lal)localObject1).a();
      localObject1 = next;
    }
    Object localObject2;
    do
    {
      localObject2 = listeners;
    } while (!d.a(this, (lae)localObject2, lae.a));
    Object localObject1 = null;
    Object localObject3;
    for (;;)
    {
      localObject3 = localObject1;
      if (localObject2 == null) {
        break;
      }
      localObject3 = next;
      next = ((lae)localObject1);
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
    while (localObject3 != null)
    {
      b(b, c);
      localObject3 = next;
    }
    a();
  }
  
  protected void a() {}
  
  public void a(Runnable paramRunnable, Executor paramExecutor)
  {
    fii.a(paramRunnable, "Runnable was null.");
    fii.a(paramExecutor, "Executor was null.");
    Object localObject = listeners;
    if (localObject != lae.a)
    {
      lae locallae2 = new lae(paramRunnable, paramExecutor);
      lae locallae1;
      do
      {
        next = ((lae)localObject);
        if (d.a(this, (lae)localObject, locallae2)) {
          return;
        }
        locallae1 = listeners;
        localObject = locallae1;
      } while (locallae1 != lae.a);
    }
    b(paramRunnable, paramExecutor);
  }
  
  final void a(Future<?> paramFuture)
  {
    if (paramFuture != null) {}
    for (int i = 1;; i = 0)
    {
      if ((i & isCancelled()) != 0) {
        paramFuture.cancel(c());
      }
      return;
    }
  }
  
  protected boolean a(Throwable paramThrowable)
  {
    paramThrowable = new lac((Throwable)fii.a(paramThrowable));
    if (d.a(this, null, paramThrowable))
    {
      d();
      return true;
    }
    return false;
  }
  
  protected boolean a(lbb<? extends V> paramlbb)
  {
    fii.a(paramlbb);
    Object localObject2 = value;
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      if (paramlbb.isDone()) {
        return a(paramlbb, null);
      }
      localObject1 = new lag(this, paramlbb);
      if (d.a(this, null, localObject1)) {
        for (;;)
        {
          try
          {
            paramlbb.a((Runnable)localObject1, lbh.a);
            return true;
          }
          catch (Throwable paramlbb) {}
          try
          {
            paramlbb = new lac(paramlbb);
            d.a(this, localObject1, paramlbb);
          }
          catch (Throwable paramlbb)
          {
            for (;;)
            {
              paramlbb = lac.a;
            }
          }
        }
      }
      localObject1 = value;
    }
    if ((localObject1 instanceof lab)) {
      paramlbb.cancel(a);
    }
    return false;
  }
  
  boolean a(lbb<? extends V> paramlbb, Object paramObject)
  {
    if ((paramlbb instanceof lai)) {
      paramlbb = value;
    }
    while (d.a(this, paramObject, paramlbb))
    {
      d();
      return true;
      try
      {
        Object localObject = aal.a(paramlbb);
        paramlbb = (lbb<? extends V>)localObject;
        if (localObject == null) {
          paramlbb = c;
        }
      }
      catch (ExecutionException paramlbb)
      {
        paramlbb = new lac(paramlbb.getCause());
      }
      catch (CancellationException paramlbb)
      {
        paramlbb = new lab(false, paramlbb);
      }
      catch (Throwable paramlbb)
      {
        paramlbb = new lac(paramlbb);
      }
    }
    return false;
  }
  
  protected void b() {}
  
  protected boolean b(V paramV)
  {
    Object localObject = paramV;
    if (paramV == null) {
      localObject = c;
    }
    if (d.a(this, null, localObject))
    {
      d();
      return true;
    }
    return false;
  }
  
  protected final boolean c()
  {
    Object localObject = value;
    return ((localObject instanceof lab)) && (a);
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    Object localObject2 = value;
    int i;
    Object localObject1;
    label40:
    lab locallab;
    if (localObject2 == null)
    {
      i = 1;
      if ((i | localObject2 instanceof lag) == 0) {
        break label129;
      }
      if (!a) {
        break label107;
      }
      localObject1 = new CancellationException("Future.cancel() was called.");
      locallab = new lab(paramBoolean, (Throwable)localObject1);
      localObject1 = localObject2;
    }
    label107:
    do
    {
      if (d.a(this, localObject1, locallab))
      {
        if (paramBoolean) {
          b();
        }
        d();
        if ((localObject1 instanceof lag)) {
          a.cancel(paramBoolean);
        }
        return true;
        i = 0;
        break;
        localObject1 = null;
        break label40;
      }
      localObject2 = value;
      localObject1 = localObject2;
    } while ((localObject2 instanceof lag));
    label129:
    return false;
  }
  
  public V get()
  {
    if (Thread.interrupted()) {
      throw new InterruptedException();
    }
    Object localObject = value;
    int i;
    if (localObject != null)
    {
      i = 1;
      if ((localObject instanceof lag)) {
        break label50;
      }
    }
    label50:
    for (int j = 1;; j = 0)
    {
      if ((i & j) == 0) {
        break label55;
      }
      return (V)a(localObject);
      i = 0;
      break;
    }
    label55:
    localObject = waiters;
    if (localObject != lal.a)
    {
      lal locallal2 = new lal((byte)0);
      label156:
      label159:
      lal locallal1;
      do
      {
        locallal2.a((lal)localObject);
        if (d.a(this, (lal)localObject, locallal2)) {
          for (;;)
          {
            LockSupport.park(this);
            if (Thread.interrupted())
            {
              a(locallal2);
              throw new InterruptedException();
            }
            localObject = value;
            if (localObject != null)
            {
              i = 1;
              if ((localObject instanceof lag)) {
                break label156;
              }
            }
            for (j = 1;; j = 0)
            {
              if ((i & j) == 0) {
                break label159;
              }
              return (V)a(localObject);
              i = 0;
              break;
            }
          }
        }
        locallal1 = waiters;
        localObject = locallal1;
      } while (locallal1 != lal.a);
    }
    return (V)a(value);
  }
  
  public V get(long paramLong, TimeUnit paramTimeUnit)
  {
    paramLong = paramTimeUnit.toNanos(paramLong);
    if (Thread.interrupted()) {
      throw new InterruptedException();
    }
    paramTimeUnit = value;
    int i;
    if (paramTimeUnit != null)
    {
      i = 1;
      if ((paramTimeUnit instanceof lag)) {
        break label61;
      }
    }
    label61:
    for (int j = 1;; j = 0)
    {
      if ((i & j) == 0) {
        break label67;
      }
      return (V)a(paramTimeUnit);
      i = 0;
      break;
    }
    label67:
    long l1;
    lal locallal2;
    if (paramLong > 0L)
    {
      l1 = System.nanoTime() + paramLong;
      if (paramLong < 1000L) {
        break label346;
      }
      paramTimeUnit = waiters;
      if (paramTimeUnit == lal.a) {
        break label294;
      }
      locallal2 = new lal((byte)0);
      locallal2.a(paramTimeUnit);
      if (!d.a(this, paramTimeUnit, locallal2)) {}
    }
    else
    {
      label201:
      label207:
      long l2;
      do
      {
        LockSupport.parkNanos(this, paramLong);
        if (Thread.interrupted())
        {
          a(locallal2);
          throw new InterruptedException();
          l1 = 0L;
          break;
        }
        paramTimeUnit = value;
        if (paramTimeUnit != null)
        {
          i = 1;
          if ((paramTimeUnit instanceof lag)) {
            break label201;
          }
        }
        for (j = 1;; j = 0)
        {
          if ((i & j) == 0) {
            break label207;
          }
          return (V)a(paramTimeUnit);
          i = 0;
          break;
        }
        l2 = l1 - System.nanoTime();
        paramLong = l2;
      } while (l2 >= 1000L);
      a(locallal2);
      paramLong = l2;
    }
    label254:
    label294:
    label308:
    label314:
    label346:
    for (;;)
    {
      if (paramLong > 0L)
      {
        paramTimeUnit = value;
        if (paramTimeUnit != null)
        {
          i = 1;
          if ((paramTimeUnit instanceof lag)) {
            break label308;
          }
        }
        for (j = 1;; j = 0)
        {
          if ((i & j) == 0) {
            break label314;
          }
          return (V)a(paramTimeUnit);
          lal locallal1 = waiters;
          paramTimeUnit = locallal1;
          if (locallal1 != lal.a) {
            break;
          }
          return (V)a(value);
          i = 0;
          break label254;
        }
        if (Thread.interrupted()) {
          throw new InterruptedException();
        }
        paramLong = l1 - System.nanoTime();
      }
      else
      {
        throw new TimeoutException();
      }
    }
  }
  
  public boolean isCancelled()
  {
    return value instanceof lab;
  }
  
  public boolean isDone()
  {
    int j = 1;
    Object localObject = value;
    int i;
    if (localObject != null)
    {
      i = 1;
      if ((localObject instanceof lag)) {
        break label29;
      }
    }
    for (;;)
    {
      return i & j;
      i = 0;
      break;
      label29:
      j = 0;
    }
  }
}

/* Location:
 * Qualified Name:     kzz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */