import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

public abstract class lvy<MessageType extends lvy<MessageType, BuilderType>, BuilderType extends lwa<MessageType, BuilderType>>
  extends lvf
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public lxf b = null;
  public int c = -1;
  
  public static Object a(Method paramMethod, Object paramObject, Object... paramVarArgs)
  {
    try
    {
      paramMethod = paramMethod.invoke(paramObject, paramVarArgs);
      return paramMethod;
    }
    catch (IllegalAccessException paramMethod)
    {
      throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", paramMethod);
    }
    catch (InvocationTargetException paramMethod)
    {
      paramMethod = paramMethod.getCause();
      if ((paramMethod instanceof RuntimeException)) {
        throw ((RuntimeException)paramMethod);
      }
      if ((paramMethod instanceof Error)) {
        throw ((Error)paramMethod);
      }
      throw new RuntimeException("Unexpected exception thrown by generated accessor method.", paramMethod);
    }
  }
  
  static <T extends lvy<T, ?>> T a(T paramT, lvp paramlvp, lvt paramlvt)
  {
    try
    {
      paramT = (lvy)paramT.a(lwe.b, paramlvp, paramlvt);
      return paramT;
    }
    catch (RuntimeException paramT)
    {
      if ((paramT.getCause() instanceof lwk)) {
        throw ((lwk)paramT.getCause());
      }
      throw paramT;
    }
  }
  
  public static <E> lwj<E> a(List<E> paramList)
  {
    return new lwu(paramList);
  }
  
  private final void j()
  {
    if (b == null) {
      b = new lxf();
    }
  }
  
  public Object a(int paramInt)
  {
    return a(paramInt, null, null);
  }
  
  protected Object a(int paramInt, Object paramObject)
  {
    return a(paramInt, paramObject, null);
  }
  
  public abstract Object a(int paramInt, Object paramObject1, Object paramObject2);
  
  public void a(int paramInt1, int paramInt2)
  {
    j();
    b.a(paramInt1, paramInt2);
  }
  
  public final void a(lxf paramlxf)
  {
    b = lxf.a(b, paramlxf);
  }
  
  public boolean a(int paramInt, lvp paramlvp)
  {
    if ((paramInt & 0x7) == 4) {
      return false;
    }
    j();
    return b.a(paramInt, paramlvp);
  }
  
  public final lwt<MessageType> c()
  {
    return (lwt)a(lwe.h);
  }
  
  public final BuilderType d()
  {
    return (lwa)a(lwe.f);
  }
  
  public void e()
  {
    if (b == null)
    {
      b = lxf.a;
      return;
    }
    b.a();
  }
  
  public final boolean f()
  {
    return a(lwe.a, Boolean.TRUE) != null;
  }
  
  public final BuilderType g()
  {
    lwa locallwa = (lwa)a(lwe.f);
    locallwa.a(this);
    return locallwa;
  }
  
  public String toString()
  {
    String str = super.toString();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("# ").append(str);
    aal.a(this, localStringBuilder, 0);
    return localStringBuilder.toString();
  }
  
  protected Object writeReplace()
  {
    return new lwf(this);
  }
}

/* Location:
 * Qualified Name:     lvy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */