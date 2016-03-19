import java.io.Serializable;

public abstract class knq<T>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  
  public static <T> knq<T> b(T paramT)
  {
    return new kob(fii.a(paramT));
  }
  
  public static <T> knq<T> c()
  {
    return kmm.a;
  }
  
  public static <T> knq<T> c(T paramT)
  {
    if (paramT == null) {
      return kmm.a;
    }
    return new kob(paramT);
  }
  
  public abstract T a(T paramT);
  
  public abstract boolean a();
  
  public abstract T b();
}

/* Location:
 * Qualified Name:     knq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */