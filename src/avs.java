import java.util.List;

public final class avs
{
  private static final avz<Object> a = new avt();
  
  public static <T> ic<List<T>> a()
  {
    return a(new ie(20), new avu(), new avv());
  }
  
  public static <T extends avy> ic<T> a(int paramInt, avw<T> paramavw)
  {
    return a(new ie(paramInt), paramavw);
  }
  
  public static <T extends avy> ic<T> a(int paramInt)
  {
    return a(new id(150), paramInt);
  }
  
  private static <T extends avy> ic<T> a(ic<T> paramic, avw<T> paramavw)
  {
    return a(paramic, paramavw, a);
  }
  
  private static <T> ic<T> a(ic<T> paramic, avw<T> paramavw, avz<T> paramavz)
  {
    return new avx(paramic, paramavw, paramavz);
  }
}

/* Location:
 * Qualified Name:     avs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */