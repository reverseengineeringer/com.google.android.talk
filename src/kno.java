import java.util.Arrays;

public final class kno
{
  private final String a;
  private knp b = new knp();
  private knp c = b;
  private boolean d = false;
  
  public kno(String paramString)
  {
    a = ((String)fii.a(paramString));
  }
  
  private knp a()
  {
    knp localknp = new knp();
    c.c = localknp;
    c = localknp;
    return localknp;
  }
  
  private kno b(String paramString, Object paramObject)
  {
    knp localknp = a();
    b = paramObject;
    a = ((String)fii.a(paramString));
    return this;
  }
  
  public kno a(Object paramObject)
  {
    ab = paramObject;
    return this;
  }
  
  public kno a(String paramString, int paramInt)
  {
    return b(paramString, String.valueOf(paramInt));
  }
  
  public kno a(String paramString, Object paramObject)
  {
    return b(paramString, paramObject);
  }
  
  public kno a(String paramString, boolean paramBoolean)
  {
    return b(paramString, String.valueOf(paramBoolean));
  }
  
  public String toString()
  {
    boolean bool = d;
    StringBuilder localStringBuilder = new StringBuilder(32).append(a).append('{');
    knp localknp = b.c;
    Object localObject1 = "";
    if (localknp != null)
    {
      Object localObject3 = b;
      Object localObject2;
      if (bool)
      {
        localObject2 = localObject1;
        if (localObject3 == null) {}
      }
      else
      {
        localStringBuilder.append((String)localObject1);
        localObject2 = ", ";
        if (a != null) {
          localStringBuilder.append(a).append('=');
        }
        if ((localObject3 == null) || (!localObject3.getClass().isArray())) {
          break label151;
        }
        localObject1 = Arrays.deepToString(new Object[] { localObject3 });
        localStringBuilder.append(((String)localObject1).substring(1, ((String)localObject1).length() - 1));
      }
      for (;;)
      {
        localknp = c;
        localObject1 = localObject2;
        break;
        label151:
        localStringBuilder.append(localObject3);
      }
    }
    return '}';
  }
}

/* Location:
 * Qualified Name:     kno
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */