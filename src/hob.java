import java.util.Arrays;

public final class hob
{
  private final int a;
  private final String b;
  private final hos c;
  
  hob(int paramInt, String paramString, hos paramhos)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("Start index must be >= 0.");
    }
    if ((paramString == null) || (paramhos == null)) {
      throw new NullPointerException();
    }
    a = paramInt;
    b = paramString;
    c = paramhos;
  }
  
  public int a()
  {
    return a + b.length();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof hob)) {
        return false;
      }
      paramObject = (hob)paramObject;
    } while ((b.equals(b)) && (a == a) && (c.equals(c)));
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(a), b, c });
  }
  
  public String toString()
  {
    int i = a;
    int j = a();
    String str = String.valueOf(String.valueOf(b));
    return str.length() + 43 + "PhoneNumberMatch [" + i + "," + j + ") " + str;
  }
}

/* Location:
 * Qualified Name:     hob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */