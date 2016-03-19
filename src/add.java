public final class add
{
  private static byte[] a = new byte['ÿ'];
  
  static
  {
    int i = 0;
    while (i < 255)
    {
      a[i] = -1;
      i += 1;
    }
    i = 90;
    while (i >= 65)
    {
      a[i] = ((byte)(i - 65));
      i -= 1;
    }
    i = 122;
    while (i >= 97)
    {
      a[i] = ((byte)(i - 97 + 26));
      i -= 1;
    }
    i = 57;
    while (i >= 48)
    {
      a[i] = ((byte)(i - 48 + 52));
      i -= 1;
    }
    a[43] = 62;
    a[47] = 63;
  }
  
  public static byte[] a(byte[] paramArrayOfByte)
  {
    int n = 0;
    byte[] arrayOfByte1 = new byte[paramArrayOfByte.length];
    int i = 0;
    int j = 0;
    int k;
    if (i < paramArrayOfByte.length)
    {
      k = paramArrayOfByte[i];
      if ((k != 61) && (a[k] == -1)) {}
      for (m = 0;; m = 1)
      {
        k = j;
        if (m != 0)
        {
          arrayOfByte1[j] = paramArrayOfByte[i];
          k = j + 1;
        }
        i += 1;
        j = k;
        break;
      }
    }
    byte[] arrayOfByte2 = new byte[j];
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, j);
    if (arrayOfByte2.length == 0) {
      paramArrayOfByte = new byte[0];
    }
    do
    {
      return paramArrayOfByte;
      k = arrayOfByte2.length / 4;
      i = arrayOfByte2.length;
      while (arrayOfByte2[(i - 1)] == 61)
      {
        j = i - 1;
        i = j;
        if (j == 0) {
          return new byte[0];
        }
      }
      arrayOfByte1 = new byte[i - k];
      j = 0;
      i = n;
      paramArrayOfByte = arrayOfByte1;
    } while (i >= k);
    n = i << 2;
    int i2 = arrayOfByte2[(n + 2)];
    int i1 = arrayOfByte2[(n + 3)];
    int m = a[arrayOfByte2[n]];
    n = a[arrayOfByte2[(n + 1)]];
    if ((i2 != 61) && (i1 != 61))
    {
      i2 = a[i2];
      i1 = a[i1];
      arrayOfByte1[j] = ((byte)(m << 2 | n >> 4));
      arrayOfByte1[(j + 1)] = ((byte)((n & 0xF) << 4 | i2 >> 2 & 0xF));
      arrayOfByte1[(j + 2)] = ((byte)(i2 << 6 | i1));
    }
    for (;;)
    {
      j += 3;
      i += 1;
      break;
      if (i2 == 61)
      {
        arrayOfByte1[j] = ((byte)(n >> 4 | m << 2));
      }
      else if (i1 == 61)
      {
        i1 = a[i2];
        arrayOfByte1[j] = ((byte)(m << 2 | n >> 4));
        arrayOfByte1[(j + 1)] = ((byte)((n & 0xF) << 4 | i1 >> 2 & 0xF));
      }
    }
  }
}

/* Location:
 * Qualified Name:     add
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */