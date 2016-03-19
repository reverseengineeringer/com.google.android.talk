final class kyu
  extends kyw
{
  kyu(String paramString1, String paramString2, Character paramCharacter)
  {
    this(new kys(paramString1, paramString2.toCharArray()), paramCharacter);
  }
  
  private kyu(kys paramkys, Character paramCharacter)
  {
    super(paramkys, paramCharacter);
    if (o.length == 64) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      return;
    }
  }
  
  int a(byte[] paramArrayOfByte, CharSequence paramCharSequence)
  {
    int j = 0;
    fii.a(paramArrayOfByte);
    paramCharSequence = a().a(paramCharSequence);
    if (!c.b(paramCharSequence.length()))
    {
      i = paramCharSequence.length();
      throw new kyv(32 + "Invalid input length " + i);
    }
    int i = 0;
    for (;;)
    {
      int k;
      int m;
      if (j < paramCharSequence.length())
      {
        kys localkys = c;
        k = j + 1;
        m = localkys.c(paramCharSequence.charAt(j));
        localkys = c;
        j = k + 1;
        int n = m << 18 | localkys.c(paramCharSequence.charAt(k)) << 12;
        k = i + 1;
        paramArrayOfByte[i] = ((byte)(n >>> 16));
        if (j >= paramCharSequence.length()) {
          break label285;
        }
        localkys = c;
        m = j + 1;
        n |= localkys.c(paramCharSequence.charAt(j)) << 6;
        i = k + 1;
        paramArrayOfByte[k] = ((byte)(n >>> 8));
        if (m < paramCharSequence.length())
        {
          localkys = c;
          j = m + 1;
          m = localkys.c(paramCharSequence.charAt(m));
          k = i + 1;
          paramArrayOfByte[i] = ((byte)(n | m));
          i = k;
        }
      }
      else
      {
        return i;
      }
      j = m;
      continue;
      label285:
      i = k;
    }
  }
}

/* Location:
 * Qualified Name:     kyu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */