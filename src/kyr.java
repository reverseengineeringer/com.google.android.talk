public abstract class kyr
{
  public static final kyr a = new kyu("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", Character.valueOf('='));
  private static final kyr b = new kyu("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", Character.valueOf('='));
  private static final kyr c = new kyw("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", Character.valueOf('='));
  private static final kyr d = new kyw("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", Character.valueOf('='));
  private static final kyr e = new kyt("base16()", "0123456789ABCDEF");
  
  abstract int a(int paramInt);
  
  abstract int a(byte[] paramArrayOfByte, CharSequence paramCharSequence);
  
  abstract kmn a();
  
  public final byte[] a(CharSequence paramCharSequence)
  {
    try
    {
      Object localObject = a().a(paramCharSequence);
      paramCharSequence = new byte[a(((CharSequence)localObject).length())];
      int i = a(paramCharSequence, (CharSequence)localObject);
      if (i == paramCharSequence.length) {
        return paramCharSequence;
      }
      localObject = new byte[i];
      System.arraycopy(paramCharSequence, 0, localObject, 0, i);
      return (byte[])localObject;
    }
    catch (kyv paramCharSequence)
    {
      throw new IllegalArgumentException(paramCharSequence);
    }
  }
}

/* Location:
 * Qualified Name:     kyr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */