import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class drn
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final List<dro> g = new ArrayList();
  
  private drn(iyw paramiyw)
  {
    super(apiHeader);
    if ((a != null) && (a.b != null))
    {
      jdu[] arrayOfjdu = a.b;
      int k = arrayOfjdu.length;
      int i = 0;
      while (i < k)
      {
        Object localObject1 = arrayOfjdu[i];
        if (localObject1 != null)
        {
          dro localdro = new dro();
          a = i;
          b = f;
          if (b == null) {}
          for (paramiyw = null;; paramiyw = b.h)
          {
            e = new ArrayList();
            if (p == null) {
              break;
            }
            localObject1 = p;
            int m = localObject1.length;
            int j = 0;
            while (j < m)
            {
              Object localObject2 = localObject1[j];
              if ((localObject2 != null) && (c != null))
              {
                drp localdrp = new drp();
                a = h;
                b = c.a;
                if (b != null) {
                  b = b.replace("s0-d/photo.jpg", "");
                }
                if (a.equals(paramiyw)) {
                  c = localdrp;
                }
                e.add(localdrp);
              }
              j += 1;
            }
          }
          g.add(localdro);
        }
        i += 1;
      }
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (iyw)lyi.b(new iyw(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(apiHeader)) {
      return new dqs(apiHeader);
    }
    return new drn(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    if (g.size() == 0)
    {
      ezi.e("Babel", "Missing sticker response data.", new Object[0]);
      if (!aal.a(aal.oJ, "babel_stickers_retry_on_fail", true)) {
        bff.b(aal.oJ, parambfz.g(), System.currentTimeMillis());
      }
      return;
    }
    if (dqf.a)
    {
      int i = g.size();
      new StringBuilder(24).append("Albums found:").append(i);
      paramdyy = g.iterator();
      while (paramdyy.hasNext())
      {
        dro localdro = (dro)paramdyy.next();
        String str = b;
        i = e.size();
        new StringBuilder(String.valueOf(str).length() + 19).append("Album:").append(str).append(": ").append(i);
      }
    }
    parambfz.c(g);
    bff.b(aal.oJ, parambfz.g(), System.currentTimeMillis());
  }
}

/* Location:
 * Qualified Name:     drn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */