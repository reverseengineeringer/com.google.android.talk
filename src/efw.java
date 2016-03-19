import java.io.Serializable;

public final class efw
  extends eft
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public String i;
  public String j;
  public String k;
  public final int l;
  public final int m;
  public int n;
  public String o;
  public String p;
  
  public efw(lyt paramlyt, lzp paramlzp)
  {
    super(paramlyt, null, f, c, a(j), "image/image_search");
    paramlyt = h;
    int i2;
    int i1;
    label74:
    lyt locallyt;
    int[] arrayOfInt;
    int i6;
    int i4;
    if (paramlyt != null)
    {
      l = aal.a(b, 0);
      m = aal.a(c, 0);
      lyt[] arrayOflyt = j;
      int i5 = arrayOflyt.length;
      paramlyt = null;
      i2 = 0;
      i1 = 0;
      paramlzp = paramlyt;
      if (i1 < i5)
      {
        locallyt = arrayOflyt[i1];
        arrayOfInt = a;
        i6 = arrayOfInt.length;
        i4 = 0;
        paramlzp = paramlyt;
      }
    }
    else
    {
      for (;;)
      {
        paramlyt = paramlzp;
        int i3 = i2;
        if (i4 < i6)
        {
          if (arrayOfInt[i4] == 337)
          {
            paramlyt = (mbb)locallyt.b(mbb.a);
            paramlzp = paramlyt;
            if (paramlyt != null) {
              i3 = 1;
            }
          }
        }
        else
        {
          paramlzp = paramlyt;
          if (i3 != 0) {
            break label190;
          }
          i1 += 1;
          i2 = i3;
          break label74;
          l = 0;
          m = 0;
          break;
        }
        i4 += 1;
      }
    }
    label190:
    if (paramlzp != null)
    {
      paramlyt = f;
      p = paramlyt;
      if (paramlzp == null) {
        break label239;
      }
    }
    label239:
    for (paramlyt = e;; paramlyt = null)
    {
      o = paramlyt;
      i = null;
      k = null;
      n = 1;
      return;
      paramlyt = null;
      break;
    }
  }
  
  public efw(lyt paramlyt, map parammap) {}
  
  public efw(int[] paramArrayOfInt, String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3, int paramInt3)
  {
    super(paramArrayOfInt, null, null, null, null, paramString2, null, paramString3);
    i = paramString1;
    j = null;
    k = null;
    l = paramInt1;
    m = paramInt2;
    n = paramInt3;
    p = null;
    o = null;
  }
  
  private static String a(lyt[] paramArrayOflyt)
  {
    int i3 = paramArrayOflyt.length;
    int i1 = 0;
    while (i1 < i3)
    {
      lyt locallyt = paramArrayOflyt[i1];
      int[] arrayOfInt = a;
      int i4 = arrayOfInt.length;
      int i2 = 0;
      while (i2 < i4)
      {
        if (arrayOfInt[i2] == 337)
        {
          mbb localmbb = (mbb)locallyt.b(mbb.a);
          if (localmbb != null) {
            return c;
          }
        }
        i2 += 1;
      }
      i1 += 1;
    }
    return null;
  }
  
  public String toString()
  {
    String str1 = b;
    String str2 = c;
    String str3 = i;
    String str4 = j;
    String str5 = f;
    int i1 = l;
    int i2 = m;
    String str6 = h;
    return String.valueOf(str1).length() + 106 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + "id: " + str1 + " canonicalId " + str2 + " photoId: " + str3 + " photoOwnerId: " + str4 + " imageUrl: " + str5 + " width: " + i1 + " height: " + i2 + " contentType: " + str6;
  }
}

/* Location:
 * Qualified Name:     efw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */