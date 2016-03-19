import android.text.TextUtils;
import android.util.SparseBooleanArray;
import java.util.concurrent.TimeUnit;

public class dnf
  extends dqf
{
  private static final boolean g;
  private static final SparseBooleanArray j;
  private static final long serialVersionUID = 1L;
  private String h = null;
  private String i = null;
  
  static
  {
    Object localObject = ezi.l;
    g = false;
    localObject = new SparseBooleanArray();
    j = (SparseBooleanArray)localObject;
    ((SparseBooleanArray)localObject).put(18, true);
    j.put(22, true);
    j.put(36, true);
  }
  
  private dnf(iyk paramiyk)
  {
    super(apiHeader);
    paramiyk = a.a;
    int m;
    int k;
    if (paramiyk != null)
    {
      h = h;
      paramiyk = r;
      if (paramiyk != null)
      {
        paramiyk = c;
        m = paramiyk.length;
        k = 0;
      }
    }
    for (;;)
    {
      if (k < m)
      {
        Object localObject = paramiyk[k];
        String str = d;
        int n = aal.a(a, 0);
        if ((!TextUtils.isEmpty(str)) && (aal.a(Boolean.valueOf(j.get(n, false)), false))) {
          i = str;
        }
      }
      else
      {
        return;
      }
      k += 1;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (iyk)lyi.b(new iyk(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(apiHeader)) {
      return new dqs(apiHeader);
    }
    return new dnf(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    if (g)
    {
      paramdyy = h;
      String str = i;
      new StringBuilder(String.valueOf(paramdyy).length() + 83 + String.valueOf(str).length()).append("OzGetPhotoResponse.processResponse: retrieved video with id ").append(paramdyy).append(" and has stream url of ").append(str);
    }
    if ((!TextUtils.isEmpty(h)) && (!TextUtils.isEmpty(i)))
    {
      long l1 = TimeUnit.DAYS.toMillis(20L);
      long l2 = System.currentTimeMillis();
      parambfz.a(h, i, l1 + l2);
      bft.c(parambfz);
    }
  }
}

/* Location:
 * Qualified Name:     dnf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */