import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.requestwriter.RequestWriter;

public final class dwm
  extends dyx
{
  private final long[] a;
  
  public dwm(bfd parambfd, long[] paramArrayOfLong)
  {
    super(parambfd);
    a = paramArrayOfLong;
  }
  
  public void p_()
  {
    bfz localbfz = new bfz(aal.oJ, b.a);
    localbfz.a();
    int i;
    Object localObject3;
    int j;
    Object localObject4;
    label359:
    label406:
    Object localObject2;
    for (;;)
    {
      int m;
      int n;
      int i1;
      try
      {
        long[] arrayOfLong = a;
        int i2 = arrayOfLong.length;
        m = 0;
        if (m < i2)
        {
          long l = arrayOfLong[m];
          Object localObject5 = localbfz.b(l);
          i = 0;
          n = 0;
          i1 = 1;
          localObject3 = null;
          String str = null;
          k = i1;
          j = n;
          if (localObject5 != null)
          {
            localObject3 = b;
            if (!aal.e(x)) {
              continue;
            }
            if (z == 1)
            {
              str = ebz.class.getName();
              break label406;
            }
          }
          else
          {
            if (i != 0)
            {
              localbfz.f(str, l);
              localObject4 = RequestWriter.k();
              ((Intent)localObject4).putExtra("cancel_class", (String)localObject3);
              localObject3 = a;
              localObject5 = String.valueOf(b.b.a());
              ((Intent)localObject4).putExtra("cancel_request", String.valueOf(localObject3).length() + 23 + String.valueOf(localObject5).length() + String.valueOf(str).length() + (String)localObject3 + "|" + l + "|" + (String)localObject5 + "|" + str);
              aal.oJ.startService((Intent)localObject4);
            }
            if (j != 0) {
              localbfz.C();
            }
            if (k != 0) {
              bft.a(localbfz, l);
            }
            if (str == null) {
              break label429;
            }
            bft.d(localbfz, str);
            break label429;
          }
          str = ecd.class.getName();
          break label406;
          i = b.a;
          if (dvp.f.b(i))
          {
            str = ebv.class.getName();
            if (f == emc.b) {
              break label438;
            }
            if (f != emc.c) {
              break label468;
            }
            break label438;
            if (f != emc.e) {
              break label473;
            }
            j = 1;
            break;
          }
          str = dpo.class.getName();
          continue;
        }
        else
        {
          localbfz.b();
          return;
        }
      }
      finally
      {
        localbfz.c();
      }
      i = 1;
      localObject4 = localObject1;
      localObject2 = localObject3;
      localObject3 = localObject4;
      k = i1;
      j = n;
      continue;
      label429:
      m += 1;
      continue;
      label438:
      i = 1;
    }
    label443:
    if ((i == 0) && (j == 0)) {}
    for (int k = 1;; k = 0)
    {
      localObject4 = localObject2;
      localObject2 = localObject3;
      localObject3 = localObject4;
      break;
      label468:
      i = 0;
      break label359;
      label473:
      j = 0;
      break label443;
    }
  }
}

/* Location:
 * Qualified Name:     dwm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */