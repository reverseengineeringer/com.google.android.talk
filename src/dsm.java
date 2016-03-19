import android.net.Uri;
import android.text.TextUtils;

public final class dsm
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final String g;
  private final long h;
  
  public dsm(Uri paramUri, long paramLong)
  {
    if (paramUri != null) {}
    for (paramUri = paramUri.toString();; paramUri = null)
    {
      g = paramUri;
      h = paramLong;
      return;
    }
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    ece localece = (ece)b;
    String str1 = localece.e();
    String str2 = localece.b();
    if (g != null) {}
    for (paramdyy = Uri.parse(g);; paramdyy = null)
    {
      bft.a(parambfz, str1, str2, paramdyy, 0L, h, false, -1L, localece.h());
      bff.a(aal.oJ, parambfz.g().g(), "sent_sms_count_since_last_upload");
      paramdyy = localece.f();
      if (!TextUtils.isEmpty(paramdyy)) {
        ((bcm)ilh.a(aal.oJ, bcm.class)).a(cto.a(parambfz.g().g(), paramdyy));
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dsm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */