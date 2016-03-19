import java.io.File;

public final class aqs<T>
  implements alr<T>
{
  public final T a;
  
  public aqs(File paramFile)
  {
    this(paramFile);
  }
  
  private aqs(T paramT)
  {
    a = aal.a(paramT, "Argument must not be null");
  }
  
  public Class<T> b()
  {
    return a.getClass();
  }
  
  public final T c()
  {
    return (T)a;
  }
  
  public final int d()
  {
    return 1;
  }
  
  public void e() {}
}

/* Location:
 * Qualified Name:     aqs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */