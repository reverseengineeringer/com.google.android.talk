import android.util.SparseArray;
import java.util.ArrayList;

public final class adp
{
  private SparseArray<Object> a = null;
  
  protected int a(int paramInt)
  {
    Integer localInteger = (Integer)a.get(paramInt);
    if (localInteger == null) {
      return 0;
    }
    return localInteger.intValue();
  }
  
  protected void a(int paramInt1, int paramInt2)
  {
    int i;
    switch (paramInt2)
    {
    case 135: 
    case 136: 
    case 137: 
    case 138: 
    case 139: 
    case 142: 
    case 147: 
    case 150: 
    case 151: 
    case 152: 
    case 154: 
    case 157: 
    case 158: 
    case 159: 
    case 160: 
    case 161: 
    case 164: 
    case 166: 
    case 168: 
    case 170: 
    case 172: 
    case 173: 
    case 174: 
    case 175: 
    case 176: 
    case 178: 
    case 179: 
    case 181: 
    case 182: 
    case 183: 
    case 184: 
    case 185: 
    case 189: 
    case 190: 
    default: 
      throw new RuntimeException("Invalid header field!");
    case 134: 
    case 144: 
    case 145: 
    case 148: 
    case 162: 
    case 167: 
    case 169: 
    case 171: 
    case 177: 
    case 187: 
    case 188: 
      i = paramInt1;
      if (128 != paramInt1)
      {
        i = paramInt1;
        if (129 != paramInt1) {
          throw new adb("Invalid Octet value!");
        }
      }
      break;
    case 155: 
      i = paramInt1;
      if (128 != paramInt1)
      {
        i = paramInt1;
        if (129 != paramInt1) {
          throw new adb("Invalid Octet value!");
        }
      }
      break;
    case 191: 
      i = paramInt1;
      if (128 != paramInt1)
      {
        i = paramInt1;
        if (129 != paramInt1) {
          throw new adb("Invalid Octet value!");
        }
      }
      break;
    case 143: 
      if (paramInt1 >= 128)
      {
        i = paramInt1;
        if (paramInt1 <= 130) {
          break;
        }
      }
      else
      {
        throw new adb("Invalid Octet value!");
      }
      break;
    case 149: 
      if (paramInt1 >= 128)
      {
        i = paramInt1;
        if (paramInt1 <= 135) {
          break;
        }
      }
      else
      {
        throw new adb("Invalid Octet value!");
      }
      break;
    case 156: 
      if (paramInt1 >= 128)
      {
        i = paramInt1;
        if (paramInt1 <= 131) {
          break;
        }
      }
      else
      {
        throw new adb("Invalid Octet value!");
      }
      break;
    case 163: 
      if (paramInt1 >= 128)
      {
        i = paramInt1;
        if (paramInt1 <= 132) {
          break;
        }
      }
      else
      {
        throw new adb("Invalid Octet value!");
      }
      break;
    case 180: 
      i = paramInt1;
      if (128 != paramInt1) {
        throw new adb("Invalid Octet value!");
      }
      break;
    case 186: 
      if (paramInt1 >= 128)
      {
        i = paramInt1;
        if (paramInt1 <= 135) {
          break;
        }
      }
      else
      {
        throw new adb("Invalid Octet value!");
      }
      break;
    case 153: 
      if ((paramInt1 > 194) && (paramInt1 < 224)) {
        i = 192;
      }
      break;
    }
    do
    {
      for (;;)
      {
        a.put(paramInt2, Integer.valueOf(i));
        return;
        if ((paramInt1 > 227) && (paramInt1 <= 255))
        {
          i = 224;
        }
        else if ((paramInt1 >= 128) && ((paramInt1 <= 128) || (paramInt1 >= 192)))
        {
          i = paramInt1;
          if (paramInt1 <= 255) {}
        }
        else
        {
          i = 224;
          continue;
          if ((paramInt1 > 193) && (paramInt1 < 224))
          {
            i = 192;
          }
          else if ((paramInt1 > 228) && (paramInt1 <= 255))
          {
            i = 224;
          }
          else if ((paramInt1 >= 128) && ((paramInt1 <= 128) || (paramInt1 >= 192)))
          {
            i = paramInt1;
            if (paramInt1 <= 255) {}
          }
          else
          {
            i = 224;
            continue;
            if ((paramInt1 > 196) && (paramInt1 < 224))
            {
              i = 192;
            }
            else if (((paramInt1 <= 235) || (paramInt1 > 255)) && (paramInt1 >= 128) && ((paramInt1 <= 136) || (paramInt1 >= 192)))
            {
              i = paramInt1;
              if (paramInt1 <= 255) {}
            }
            else
            {
              i = 224;
              continue;
              if (paramInt1 >= 16)
              {
                i = paramInt1;
                if (paramInt1 <= 19) {}
              }
              else
              {
                i = 18;
              }
            }
          }
        }
      }
      if (paramInt1 < 128) {
        break;
      }
      i = paramInt1;
    } while (paramInt1 <= 151);
    throw new adb("Invalid Octet value!");
  }
  
  protected void a(long paramLong, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new RuntimeException("Invalid header field!");
    }
    a.put(paramInt, Long.valueOf(paramLong));
  }
  
  protected void a(adf paramadf, int paramInt)
  {
    if (paramadf == null) {
      throw new NullPointerException();
    }
    switch (paramInt)
    {
    default: 
      throw new RuntimeException("Invalid header field!");
    }
    a.put(paramInt, paramadf);
  }
  
  protected void a(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte == null) {
      throw new NullPointerException();
    }
    switch (paramInt)
    {
    default: 
      throw new RuntimeException("Invalid header field!");
    }
    a.put(paramInt, paramArrayOfByte);
  }
  
  protected void a(adf[] paramArrayOfadf)
  {
    if (paramArrayOfadf == null) {
      throw new NullPointerException();
    }
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramArrayOfadf.length)
    {
      localArrayList.add(paramArrayOfadf[i]);
      i += 1;
    }
    a.put(151, localArrayList);
  }
  
  protected void b(adf paramadf, int paramInt)
  {
    if (paramadf == null) {
      throw new NullPointerException();
    }
    switch (paramInt)
    {
    default: 
      throw new RuntimeException("Invalid header field!");
    }
    ArrayList localArrayList2 = (ArrayList)a.get(paramInt);
    ArrayList localArrayList1 = localArrayList2;
    if (localArrayList2 == null) {
      localArrayList1 = new ArrayList();
    }
    localArrayList1.add(paramadf);
    a.put(paramInt, localArrayList1);
  }
  
  protected byte[] b(int paramInt)
  {
    return (byte[])a.get(paramInt);
  }
  
  protected adf c(int paramInt)
  {
    return (adf)a.get(paramInt);
  }
  
  protected adf[] d(int paramInt)
  {
    ArrayList localArrayList = (ArrayList)a.get(paramInt);
    if (localArrayList == null) {
      return null;
    }
    return (adf[])localArrayList.toArray(new adf[localArrayList.size()]);
  }
  
  protected long e(int paramInt)
  {
    Long localLong = (Long)a.get(paramInt);
    if (localLong == null) {
      return -1L;
    }
    return localLong.longValue();
  }
}

/* Location:
 * Qualified Name:     adp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */