import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.Arrays;

class kyw
  extends kyr
{
  final kys c;
  final Character d;
  
  kyw(String paramString1, String paramString2, Character paramCharacter)
  {
    this(new kys(paramString1, paramString2.toCharArray()), paramCharacter);
  }
  
  kyw(kys paramkys, Character paramCharacter)
  {
    c = ((kys)fii.a(paramkys));
    if ((paramCharacter == null) || (!paramkys.b(paramCharacter.charValue()))) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool, "Padding character %s was already in alphabet", new Object[] { paramCharacter });
      d = paramCharacter;
      return;
    }
  }
  
  int a(int paramInt)
  {
    return (int)((c.q * paramInt + 7L) / 8L);
  }
  
  int a(byte[] paramArrayOfByte, CharSequence paramCharSequence)
  {
    fii.a(paramArrayOfByte);
    paramCharSequence = a().a(paramCharSequence);
    if (!c.b(paramCharSequence.length()))
    {
      i = paramCharSequence.length();
      throw new kyv(32 + "Invalid input length " + i);
    }
    int j = 0;
    int i = 0;
    long l1;
    int k;
    int m;
    if (i < paramCharSequence.length())
    {
      l1 = 0L;
      k = 0;
      m = 0;
      label90:
      if (m < c.r)
      {
        l1 <<= c.q;
        if (i + m >= paramCharSequence.length()) {
          break label262;
        }
        long l2 = c.c(paramCharSequence.charAt(k + i));
        k += 1;
        l1 |= l2;
      }
    }
    label262:
    for (;;)
    {
      m += 1;
      break label90;
      int n = c.s;
      int i1 = c.q;
      m = c.s - 1 << 3;
      while (m >= (n << 3) - k * i1)
      {
        paramArrayOfByte[j] = ((byte)(int)(l1 >>> m & 0xFF));
        m -= 8;
        j += 1;
      }
      i += c.r;
      break;
      return j;
    }
  }
  
  kmn a()
  {
    if (d == null) {
      return kmn.n;
    }
    return kmn.a(d.charValue());
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof kyw))
    {
      paramObject = (kyw)paramObject;
      bool1 = bool2;
      if (c.equals(c))
      {
        bool1 = bool2;
        if (StressMode.a(d, d)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return c.hashCode() ^ Arrays.hashCode(new Object[] { d });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("BaseEncoding.");
    localStringBuilder.append(c.toString());
    if (8 % c.q != 0)
    {
      if (d != null) {
        break label54;
      }
      localStringBuilder.append(".omitPadding()");
    }
    for (;;)
    {
      return localStringBuilder.toString();
      label54:
      localStringBuilder.append(".withPadChar('").append(d).append("')");
    }
  }
}

/* Location:
 * Qualified Name:     kyw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */