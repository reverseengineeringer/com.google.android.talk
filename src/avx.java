import android.util.Log;

final class avx<T>
  implements ic<T>
{
  private final avw<T> a;
  private final avz<T> b;
  private final ic<T> c;
  
  avx(ic<T> paramic, avw<T> paramavw, avz<T> paramavz)
  {
    c = paramic;
    a = paramavw;
    b = paramavz;
  }
  
  public T a()
  {
    Object localObject2 = c.a();
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = a.a();
      localObject1 = localObject2;
      if (Log.isLoggable("FactoryPools", 2))
      {
        localObject1 = String.valueOf(localObject2.getClass());
        new StringBuilder(String.valueOf(localObject1).length() + 12).append("Created new ").append((String)localObject1);
        localObject1 = localObject2;
      }
    }
    if ((localObject1 instanceof avy)) {
      ((avy)localObject1).i_().a(false);
    }
    return (T)localObject1;
  }
  
  public boolean a(T paramT)
  {
    if ((paramT instanceof avy)) {
      ((avy)paramT).i_().a(true);
    }
    b.a(paramT);
    return c.a(paramT);
  }
}

/* Location:
 * Qualified Name:     avx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */