import java.math.RoundingMode;
import java.util.Arrays;

final class kys
  extends kmn
{
  final char[] o;
  final int p;
  final int q;
  final int r;
  final int s;
  private final String t;
  private final byte[] u;
  private final boolean[] v;
  
  kys(String paramString, char[] paramArrayOfChar)
  {
    t = ((String)fii.a(paramString));
    o = ((char[])fii.a(paramArrayOfChar));
    int i;
    boolean bool;
    for (;;)
    {
      try
      {
        q = kzv.a(paramArrayOfChar.length, RoundingMode.UNNECESSARY);
        i = Math.min(8, Integer.lowestOneBit(q));
      }
      catch (ArithmeticException paramString)
      {
        char c;
        i = paramArrayOfChar.length;
        throw new IllegalArgumentException(35 + "Illegal alphabet length " + i, paramString);
      }
      try
      {
        r = (8 / i);
        s = (q / i);
        p = (paramArrayOfChar.length - 1);
        paramString = new byte[''];
        Arrays.fill(paramString, (byte)-1);
        i = 0;
        if (i >= paramArrayOfChar.length) {
          break label269;
        }
        c = paramArrayOfChar[i];
        fii.a(kmn.c.b(c), "Non-ASCII character: %s", new Object[] { Character.valueOf(c) });
        if (paramString[c] != -1) {
          break label263;
        }
        bool = true;
      }
      catch (ArithmeticException localArithmeticException)
      {
        paramString = String.valueOf(new String(paramArrayOfChar));
        if (paramString.length() == 0) {
          break label250;
        }
        for (paramString = "Illegal alphabet ".concat(paramString);; paramString = new String("Illegal alphabet ")) {
          throw new IllegalArgumentException(paramString, localArithmeticException);
        }
        bool = false;
        continue;
        u = paramString;
        paramString = new boolean[r];
        i = j;
        while (i < s)
        {
          paramString[kzv.a(i << 3, q, RoundingMode.CEILING)] = 1;
          i += 1;
        }
        v = paramString;
      }
      fii.a(bool, "Duplicate character: %s", new Object[] { Character.valueOf(c) });
      paramString[c] = ((byte)i);
      i += 1;
    }
    label250:
    label263:
    label269:
    return;
  }
  
  char a(int paramInt)
  {
    return o[paramInt];
  }
  
  public boolean b(char paramChar)
  {
    return (kmn.c.b(paramChar)) && (u[paramChar] != -1);
  }
  
  boolean b(int paramInt)
  {
    return v[(paramInt % r)];
  }
  
  int c(char paramChar)
  {
    if ((paramChar > '') || (u[paramChar] == -1))
    {
      Object localObject;
      if (kmn.k.b(paramChar))
      {
        localObject = String.valueOf(Integer.toHexString(paramChar));
        if (((String)localObject).length() != 0) {
          localObject = "0x".concat((String)localObject);
        }
      }
      for (;;)
      {
        localObject = String.valueOf(localObject);
        throw new kyv(String.valueOf(localObject).length() + 24 + "Unrecognized character: " + (String)localObject);
        localObject = new String("0x");
        continue;
        localObject = Character.valueOf(paramChar);
      }
    }
    return u[paramChar];
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof kys))
    {
      paramObject = (kys)paramObject;
      return Arrays.equals(o, o);
    }
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(o);
  }
  
  public String toString()
  {
    return t;
  }
}

/* Location:
 * Qualified Name:     kys
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */