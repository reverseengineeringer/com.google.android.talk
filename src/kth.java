import java.util.Arrays;
import java.util.Set;

public abstract class kth<E>
  extends krz<E>
  implements Set<E>
{
  private static int a(int paramInt)
  {
    int j;
    if (paramInt < 751619276)
    {
      int i = Integer.highestOneBit(paramInt - 1) << 1;
      for (;;)
      {
        j = i;
        if (i * 0.7D >= paramInt) {
          break;
        }
        i <<= 1;
      }
    }
    if (paramInt < 1073741824) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool, "collection too large");
      j = 1073741824;
      return j;
    }
  }
  
  public static <E> kth<E> a(int paramInt, Object... paramVarArgs)
  {
    int j = paramInt;
    int n;
    Object[] arrayOfObject;
    int i1;
    int k;
    int i;
    label50:
    Object localObject1;
    int m;
    label81:
    Object localObject2;
    switch (j)
    {
    default: 
      n = a(j);
      arrayOfObject = new Object[n];
      i1 = n - 1;
      k = 0;
      paramInt = 0;
      i = 0;
      if (k < j)
      {
        localObject1 = kxi.a(paramVarArgs[k], k);
        int i2 = localObject1.hashCode();
        m = krt.a(i2);
        int i3 = m & i1;
        localObject2 = arrayOfObject[i3];
        if (localObject2 == null)
        {
          m = paramInt + 1;
          paramVarArgs[paramInt] = localObject1;
          arrayOfObject[i3] = localObject1;
          i += i2;
          paramInt = m;
        }
      }
      break;
    }
    for (;;)
    {
      k += 1;
      break label50;
      return kxt.a;
      return b(paramVarArgs[0]);
      if (!localObject2.equals(localObject1))
      {
        m += 1;
        break label81;
        Arrays.fill(paramVarArgs, paramInt, j, null);
        if (paramInt == 1) {
          return new kyb(paramVarArgs[0], i);
        }
        if (n != a(paramInt))
        {
          j = paramInt;
          break;
        }
        localObject1 = paramVarArgs;
        if (paramInt < paramVarArgs.length) {
          localObject1 = kxi.a(paramVarArgs, paramInt);
        }
        return new kxt((Object[])localObject1, i, arrayOfObject, i1);
      }
    }
  }
  
  public static <E> kth<E> a(E[] paramArrayOfE)
  {
    switch (paramArrayOfE.length)
    {
    default: 
      return a(paramArrayOfE.length, (Object[])paramArrayOfE.clone());
    case 0: 
      return kxt.a;
    }
    return b(paramArrayOfE[0]);
  }
  
  public static <E> kth<E> b(E paramE)
  {
    return new kyb(paramE);
  }
  
  boolean Z_()
  {
    return false;
  }
  
  public abstract kyp<E> a();
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (((paramObject instanceof kth)) && (Z_()) && (((kth)paramObject).Z_()) && (hashCode() != paramObject.hashCode())) {
      return false;
    }
    return aen.a(this, paramObject);
  }
  
  public int hashCode()
  {
    return aen.a(this);
  }
  
  Object writeReplace()
  {
    return new ktl(toArray());
  }
}

/* Location:
 * Qualified Name:     kth
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */