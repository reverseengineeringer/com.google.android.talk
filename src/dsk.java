import android.net.Uri;
import android.text.TextUtils;

public final class dsk
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final String g;
  private final long h;
  private final long i;
  private final long j;
  
  public dsk(Uri paramUri, long paramLong1, long paramLong2, long paramLong3)
  {
    if (paramUri != null) {}
    for (paramUri = paramUri.toString();; paramUri = null)
    {
      g = paramUri;
      h = paramLong1;
      i = paramLong2;
      j = paramLong3;
      return;
    }
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    eca localeca = (eca)b;
    String str1 = localeca.e();
    String str2 = localeca.b();
    long l1;
    long l2;
    if (g != null)
    {
      paramdyy = Uri.parse(g);
      l1 = h;
      l2 = i;
      if (((eca)b).n() == null) {
        break label171;
      }
    }
    label171:
    for (boolean bool = true;; bool = false)
    {
      bft.a(parambfz, str1, str2, paramdyy, l1, l2, bool, ((eca)b).o(), j);
      bff.a(aal.oJ, parambfz.g().g(), "sent_mms_count_since_last_upload");
      paramdyy = localeca.f();
      if ((paramdyy.length == 1) && (!TextUtils.isEmpty(paramdyy[0]))) {
        ((bcm)ilh.a(aal.oJ, bcm.class)).a(cto.a(parambfz.g().g(), paramdyy[0]));
      }
      return;
      paramdyy = null;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     dsk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */