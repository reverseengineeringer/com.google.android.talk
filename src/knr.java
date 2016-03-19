import com.google.android.apps.hangouts.hangout.StressMode;
import java.io.Serializable;

public final class knr<A, B>
  implements Serializable
{
  private static final long serialVersionUID = 747826592375603043L;
  public final A a;
  public final B b;
  
  private knr(A paramA, B paramB)
  {
    a = paramA;
    b = paramB;
  }
  
  public static <A, B> knr<A, B> a(A paramA, B paramB)
  {
    return new knr(paramA, paramB);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof knr))
    {
      paramObject = (knr)paramObject;
      bool1 = bool2;
      if (StressMode.a(a, a))
      {
        bool1 = bool2;
        if (StressMode.a(b, b)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label36;
      }
    }
    for (;;)
    {
      return i * 31 + j;
      i = a.hashCode();
      break;
      label36:
      j = b.hashCode();
    }
  }
  
  public String toString()
  {
    String str1 = String.valueOf(a);
    String str2 = String.valueOf(b);
    return String.valueOf(str1).length() + 4 + String.valueOf(str2).length() + "(" + str1 + ", " + str2 + ")";
  }
}

/* Location:
 * Qualified Name:     knr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */