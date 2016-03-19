final class lxi
  extends lxh
{
  int a(CharSequence paramCharSequence, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int k = paramCharSequence.length();
    int j = 0;
    int m = paramInt1 + paramInt2;
    paramInt2 = j;
    while ((paramInt2 < k) && (paramInt2 + paramInt1 < m))
    {
      j = paramCharSequence.charAt(paramInt2);
      if (j >= 128) {
        break;
      }
      paramArrayOfByte[(paramInt1 + paramInt2)] = ((byte)j);
      paramInt2 += 1;
    }
    if (paramInt2 == k) {
      return paramInt1 + k;
    }
    paramInt1 += paramInt2;
    if (paramInt2 < k)
    {
      int i = paramCharSequence.charAt(paramInt2);
      if ((i < 128) && (paramInt1 < m))
      {
        j = paramInt1 + 1;
        paramArrayOfByte[paramInt1] = ((byte)i);
        paramInt1 = j;
      }
      for (;;)
      {
        paramInt2 += 1;
        break;
        if ((i < 2048) && (paramInt1 <= m - 2))
        {
          j = paramInt1 + 1;
          paramArrayOfByte[paramInt1] = ((byte)(i >>> 6 | 0x3C0));
          paramInt1 = j + 1;
          paramArrayOfByte[j] = ((byte)(i & 0x3F | 0x80));
        }
        else
        {
          int n;
          if (((i < 55296) || (57343 < i)) && (paramInt1 <= m - 3))
          {
            j = paramInt1 + 1;
            paramArrayOfByte[paramInt1] = ((byte)(i >>> 12 | 0x1E0));
            n = j + 1;
            paramArrayOfByte[j] = ((byte)(i >>> 6 & 0x3F | 0x80));
            paramInt1 = n + 1;
            paramArrayOfByte[n] = ((byte)(i & 0x3F | 0x80));
          }
          else
          {
            if (paramInt1 > m - 4) {
              break label446;
            }
            j = paramInt2;
            char c;
            if (paramInt2 + 1 != paramCharSequence.length())
            {
              paramInt2 += 1;
              c = paramCharSequence.charAt(paramInt2);
              if (!Character.isSurrogatePair(i, c)) {
                j = paramInt2;
              }
            }
            else
            {
              throw new lxj(j - 1, k);
            }
            j = Character.toCodePoint(i, c);
            n = paramInt1 + 1;
            paramArrayOfByte[paramInt1] = ((byte)(j >>> 18 | 0xF0));
            paramInt1 = n + 1;
            paramArrayOfByte[n] = ((byte)(j >>> 12 & 0x3F | 0x80));
            n = paramInt1 + 1;
            paramArrayOfByte[paramInt1] = ((byte)(j >>> 6 & 0x3F | 0x80));
            paramInt1 = n + 1;
            paramArrayOfByte[n] = ((byte)(j & 0x3F | 0x80));
          }
        }
      }
      label446:
      if ((55296 <= i) && (i <= 57343) && ((paramInt2 + 1 == paramCharSequence.length()) || (!Character.isSurrogatePair(i, paramCharSequence.charAt(paramInt2 + 1))))) {
        throw new lxj(paramInt2, k);
      }
      throw new ArrayIndexOutOfBoundsException(37 + "Failed writing " + i + " at index " + paramInt1);
    }
    return paramInt1;
  }
  
  int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    while ((i < paramInt2) && (paramArrayOfByte[i] >= 0)) {
      i += 1;
    }
    paramInt1 = i;
    if (i >= paramInt2)
    {
      paramInt1 = 0;
      return paramInt1;
      label38:
      paramInt1 = i;
    }
    label100:
    label102:
    label182:
    label184:
    do
    {
      int j;
      int k;
      do
      {
        do
        {
          if (paramInt1 >= paramInt2) {
            return 0;
          }
          i = paramInt1 + 1;
          j = paramArrayOfByte[paramInt1];
          if (j >= 0) {
            break label38;
          }
          if (j >= -32) {
            break label102;
          }
          paramInt1 = j;
          if (i >= paramInt2) {
            break;
          }
          if (j < -62) {
            break label100;
          }
          paramInt1 = i + 1;
        } while (paramArrayOfByte[i] <= -65);
        return -1;
        if (j >= -16) {
          break label184;
        }
        if (i >= paramInt2 - 1) {
          return lxg.a(paramArrayOfByte, i, paramInt2);
        }
        k = i + 1;
        paramInt1 = paramArrayOfByte[i];
        if ((paramInt1 > -65) || ((j == -32) && (paramInt1 < -96)) || ((j == -19) && (paramInt1 >= -96))) {
          break label182;
        }
        paramInt1 = k + 1;
      } while (paramArrayOfByte[k] <= -65);
      return -1;
      if (i >= paramInt2 - 2) {
        return lxg.a(paramArrayOfByte, i, paramInt2);
      }
      paramInt1 = i + 1;
      i = paramArrayOfByte[i];
      if ((i > -65) || ((j << 28) + (i + 112) >> 30 != 0)) {
        break label262;
      }
      i = paramInt1 + 1;
      if (paramArrayOfByte[paramInt1] > -65) {
        break label262;
      }
      paramInt1 = i + 1;
    } while (paramArrayOfByte[i] <= -65);
    label262:
    return -1;
  }
}

/* Location:
 * Qualified Name:     lxi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */