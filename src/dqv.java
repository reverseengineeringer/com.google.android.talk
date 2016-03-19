import android.net.Uri;
import android.text.TextUtils;
import java.util.concurrent.TimeUnit;

public class dqv
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private String g = null;
  private String h = null;
  private long i = System.currentTimeMillis() + TimeUnit.MINUTES.toMillis(10L);
  
  private dqv(iys paramiys)
  {
    super(apiHeader);
    paramiys = a.b;
    Object localObject;
    int k;
    int j;
    if ((paramiys != null) && (paramiys.length > 0))
    {
      paramiys = paramiys[0];
      if ((paramiys != null) && (aal.a(d.a, 0) == 3))
      {
        localObject = b;
        if ((localObject != null) && (a != null))
        {
          h = a;
          paramiys = d.d;
          if (aal.a(a, 0) == 3)
          {
            paramiys = c;
            if (paramiys != null)
            {
              paramiys = b;
              if ((paramiys != null) && (paramiys.length > 0))
              {
                k = paramiys.length;
                j = 0;
              }
            }
          }
        }
      }
    }
    for (;;)
    {
      if (j < k)
      {
        localObject = paramiys[j];
        if ((localObject != null) && (b != null)) {
          g = b;
        }
      }
      else
      {
        try
        {
          paramiys = Uri.parse(g).getQueryParameter("expire");
          if (paramiys != null) {
            i = (Long.parseLong(paramiys) * 1000L);
          }
          return;
        }
        catch (Exception paramiys)
        {
          paramiys = String.valueOf(paramiys.getClass().getCanonicalName());
          localObject = g;
          ezi.d("Babel", String.valueOf(paramiys).length() + 42 + String.valueOf(localObject).length() + paramiys + " exception while parsing audio url. url = " + (String)localObject, new Object[0]);
          return;
        }
      }
      j += 1;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (iys)lyi.b(new iys(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(apiHeader)) {
      return new dqs(apiHeader);
    }
    return new dqv(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    if (dqf.a)
    {
      paramdyy = h;
      String str = g;
      long l = i;
      new StringBuilder(String.valueOf(paramdyy).length() + 121 + String.valueOf(str).length()).append("GetAudioDataResponse.processResponse: retrieved audio with id ").append(paramdyy).append(" with stream url of ").append(str).append(" and expiration of ").append(l);
    }
    if ((!TextUtils.isEmpty(h)) && (!TextUtils.isEmpty(g)))
    {
      parambfz.a(h, g, i);
      bft.d(parambfz, parambfz.Z(h));
    }
  }
}

/* Location:
 * Qualified Name:     dqv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */