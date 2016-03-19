import java.io.ByteArrayOutputStream;

final class agb
{
  private static byte a = 61;
  
  public static final byte[] a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i];
      if (j == a)
      {
        i += 1;
        int k;
        try
        {
          j = Character.digit((char)paramArrayOfByte[i], 16);
          i += 1;
          k = Character.digit((char)paramArrayOfByte[i], 16);
          if ((j == -1) || (k == -1)) {
            throw new aga("Invalid quoted-printable encoding");
          }
        }
        catch (ArrayIndexOutOfBoundsException paramArrayOfByte)
        {
          throw new aga("Invalid quoted-printable encoding");
        }
        j = (char)((j << 4) + k);
        localByteArrayOutputStream.write(j);
      }
      for (;;)
      {
        i += 1;
        break;
        localByteArrayOutputStream.write(j);
      }
    }
    return localByteArrayOutputStream.toByteArray();
  }
}

/* Location:
 * Qualified Name:     agb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */