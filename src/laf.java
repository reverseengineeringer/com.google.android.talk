import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

final class laf
  extends laa
{
  final AtomicReferenceFieldUpdater<lal, Thread> a;
  final AtomicReferenceFieldUpdater<lal, lal> b;
  final AtomicReferenceFieldUpdater<kzz, lal> c;
  final AtomicReferenceFieldUpdater<kzz, lae> d;
  final AtomicReferenceFieldUpdater<kzz, Object> e;
  
  laf(AtomicReferenceFieldUpdater<lal, Thread> paramAtomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<lal, lal> paramAtomicReferenceFieldUpdater1, AtomicReferenceFieldUpdater<kzz, lal> paramAtomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<kzz, lae> paramAtomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<kzz, Object> paramAtomicReferenceFieldUpdater4)
  {
    a = paramAtomicReferenceFieldUpdater;
    b = paramAtomicReferenceFieldUpdater1;
    c = paramAtomicReferenceFieldUpdater2;
    d = paramAtomicReferenceFieldUpdater3;
    e = paramAtomicReferenceFieldUpdater4;
  }
  
  void a(lal paramlal, Thread paramThread)
  {
    a.lazySet(paramlal, paramThread);
  }
  
  void a(lal paramlal1, lal paramlal2)
  {
    b.lazySet(paramlal1, paramlal2);
  }
  
  boolean a(kzz<?> paramkzz, Object paramObject1, Object paramObject2)
  {
    return e.compareAndSet(paramkzz, paramObject1, paramObject2);
  }
  
  boolean a(kzz<?> paramkzz, lae paramlae1, lae paramlae2)
  {
    return d.compareAndSet(paramkzz, paramlae1, paramlae2);
  }
  
  boolean a(kzz<?> paramkzz, lal paramlal1, lal paramlal2)
  {
    return c.compareAndSet(paramkzz, paramlal1, paramlal2);
  }
}

/* Location:
 * Qualified Name:     laf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */