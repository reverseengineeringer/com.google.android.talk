import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public class drj
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private String g;
  private String h;
  private final ArrayList<drk> i = new ArrayList();
  
  private drj(iym paramiym)
  {
    super(apiHeader);
    paramiym = a.a;
    if (paramiym != null)
    {
      g = a;
      Object localObject1 = e;
      Object localObject2;
      jau localjau;
      if (localObject1 != null)
      {
        localObject2 = g;
        if (localObject2 != null)
        {
          localObject2 = b;
          if (localObject2.length > 0)
          {
            localjau = localObject2[0];
            localObject2 = new drk();
            a = a;
            b = b;
            localjau = c;
            if (localjau != null) {
              break label444;
            }
            d = drk.a(null);
            e = drk.a(null);
            c = 1;
            i.add(localObject2);
          }
        }
        localObject2 = h;
        if (localObject2 != null)
        {
          localObject2 = b;
          if (localObject2.length > 0)
          {
            localjau = localObject2[0];
            localObject2 = new drk();
            a = a;
            localjau = c;
            if (localjau != null) {
              break label473;
            }
            d = drk.a(null);
            e = drk.a(null);
            label240:
            c = 2;
            i.add(localObject2);
          }
        }
        localObject1 = i;
        if (localObject1 != null)
        {
          localObject1 = b;
          if (!TextUtils.isEmpty((CharSequence)localObject1))
          {
            localObject2 = new drk();
            a = ((String)localObject1);
            c = 3;
            i.add(localObject2);
          }
        }
      }
      paramiym = d;
      if (paramiym != null)
      {
        paramiym = j;
        if (paramiym != null)
        {
          localObject1 = e;
          if (localObject1 != null)
          {
            paramiym = a;
            label350:
            localObject1 = Uri.parse(paramiym);
            paramiym = new Uri.Builder().scheme(((Uri)localObject1).getScheme());
            paramiym.authority(((Uri)localObject1).getHost());
            localObject1 = ((Uri)localObject1).getPathSegments();
            if (((List)localObject1).size() != 6) {
              break label510;
            }
          }
          for (;;)
          {
            if (k >= ((List)localObject1).size()) {
              break label515;
            }
            if ((k != 4) || (j == 0)) {
              paramiym.appendPath((String)((List)localObject1).get(k));
            }
            k += 1;
            continue;
            label444:
            d = drk.a(a);
            e = drk.a(b);
            break;
            label473:
            d = drk.a(a);
            e = drk.a(b);
            break label240;
            paramiym = f;
            break label350;
            label510:
            j = 0;
          }
          label515:
          h = paramiym.build().toString();
        }
      }
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (iym)lyi.b(new iym(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(apiHeader)) {
      return new dqs(apiHeader);
    }
    return new drj(paramArrayOfByte);
  }
  
  public Uri k()
  {
    if (h != null) {
      return Uri.parse(h);
    }
    return null;
  }
  
  public String l()
  {
    return g;
  }
  
  public ArrayList<drk> m()
  {
    return i;
  }
}

/* Location:
 * Qualified Name:     drj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */