import java.util.Iterator;

final class gvx<T>
  implements Iterator<T>
{
  final int a = 0;
  int b;
  int c;
  boolean d = false;
  
  gvx(gvw paramgvw)
  {
    b = paramgvw.a();
  }
  
  public boolean hasNext()
  {
    return c < b;
  }
  
  public T next()
  {
    Object localObject = e.a(c);
    c += 1;
    d = true;
    return (T)localObject;
  }
  
  public void remove()
  {
    if (!d) {
      throw new IllegalStateException();
    }
    c -= 1;
    b -= 1;
    d = false;
    e.b(c);
  }
}

/* Location:
 * Qualified Name:     gvx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */