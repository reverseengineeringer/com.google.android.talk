import java.security.MessageDigest;

public final class aix<T>
{
  public static final aiz<Object> a = new aiy();
  private final T b;
  private final aiz<T> c;
  private final String d;
  private volatile byte[] e;
  
  public aix(String paramString, T paramT, aiz<T> paramaiz)
  {
    d = aal.e(paramString);
    b = paramT;
    c = ((aiz)aal.a(paramaiz, "Argument must not be null"));
  }
  
  public static <T> aix<T> a(String paramString, T paramT)
  {
    return new aix(paramString, paramT, a);
  }
  
  public static <T> aix<T> a(String paramString, T paramT, aiz<T> paramaiz)
  {
    return new aix(paramString, paramT, paramaiz);
  }
  
  public T a()
  {
    return (T)b;
  }
  
  public void a(T paramT, MessageDigest paramMessageDigest)
  {
    aiz localaiz = c;
    if (e == null) {
      e = d.getBytes(aiw.a);
    }
    localaiz.a(e, paramT, paramMessageDigest);
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof aix))
    {
      paramObject = (aix)paramObject;
      return d.equals(d);
    }
    return false;
  }
  
  public int hashCode()
  {
    return d.hashCode();
  }
  
  public String toString()
  {
    String str1 = String.valueOf("Option{key='");
    String str2 = d;
    return String.valueOf(str1).length() + 2 + String.valueOf(str2).length() + str1 + str2 + "'}";
  }
}

/* Location:
 * Qualified Name:     aix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */