final class kyt
  extends kyw
{
  final char[] b = new char['Ȁ'];
  
  kyt(String paramString1, String paramString2)
  {
    this(new kys(paramString1, paramString2.toCharArray()));
  }
  
  private kyt(kys paramkys)
  {
    super(paramkys, null);
    if (o.length == 16) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      while (i < 256)
      {
        b[i] = paramkys.a(i >>> 4);
        b[(i | 0x100)] = paramkys.a(i & 0xF);
        i += 1;
      }
    }
  }
  
  int a(byte[] paramArrayOfByte, CharSequence paramCharSequence)
  {
    int j = 0;
    fii.a(paramArrayOfByte);
    if (paramCharSequence.length() % 2 == 1)
    {
      i = paramCharSequence.length();
      throw new kyv(32 + "Invalid input length " + i);
    }
    int i = 0;
    while (j < paramCharSequence.length())
    {
      int k = c.c(paramCharSequence.charAt(j));
      paramArrayOfByte[i] = ((byte)(c.c(paramCharSequence.charAt(j + 1)) | k << 4));
      j += 2;
      i += 1;
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kyt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */