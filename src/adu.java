import java.io.ByteArrayOutputStream;

public final class adu
{
  private static byte a = 61;
  
  public static final byte[] a(byte[] paramArrayOfByte)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int i = 0;
    for (;;)
    {
      if (i < paramArrayOfByte.length)
      {
        int j = paramArrayOfByte[i];
        if (j == a)
        {
          if (('\r' == (char)paramArrayOfByte[(i + 1)]) && ('\n' == (char)paramArrayOfByte[(i + 2)]))
          {
            i += 2;
          }
          else
          {
            i += 1;
            try
            {
              j = Character.digit((char)paramArrayOfByte[i], 16);
              i += 1;
              int k = Character.digit((char)paramArrayOfByte[i], 16);
              if ((j == -1) || (k == -1)) {
                break;
              }
              localByteArrayOutputStream.write((char)((j << 4) + k));
            }
            catch (ArrayIndexOutOfBoundsException paramArrayOfByte)
            {
              return null;
            }
          }
        }
        else {
          localByteArrayOutputStream.write(j);
        }
      }
      else
      {
        return localByteArrayOutputStream.toByteArray();
      }
      i += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     adu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */