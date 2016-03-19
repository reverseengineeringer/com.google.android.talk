import java.util.Queue;

abstract class amc<T extends amp>
{
  private final Queue<T> a = avq.a(20);
  
  protected abstract T a();
  
  public void a(T paramT)
  {
    if (a.size() < 20) {
      a.offer(paramT);
    }
  }
  
  protected T b()
  {
    amp localamp2 = (amp)a.poll();
    amp localamp1 = localamp2;
    if (localamp2 == null) {
      localamp1 = a();
    }
    return localamp1;
  }
}

/* Location:
 * Qualified Name:     amc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */