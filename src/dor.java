import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public abstract class dor
  extends dpf
{
  private static final long serialVersionUID = 1L;
  public final String c;
  public transient boolean d = false;
  
  public dor(String paramString)
  {
    c = paramString;
    if ((paramString != null) && (bfz.a(paramString)))
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {}
      for (paramString = "cannot use client generated conversation id:".concat(paramString);; paramString = new String("cannot use client generated conversation id:")) {
        throw new IllegalArgumentException(paramString);
      }
    }
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    if ((!TextUtils.isEmpty(c)) && (paramdvn.c() == 113))
    {
      paramdvn = String.valueOf(c);
      if (paramdvn.length() == 0) {
        break label66;
      }
    }
    label66:
    for (paramdvn = "ERROR_RESPONSE_NOT_FOUND for ".concat(paramdvn);; paramdvn = new String("ERROR_RESPONSE_NOT_FOUND for "))
    {
      ezi.d("Babel", paramdvn, new Object[0]);
      RealTimeChatService.f(parambfd, c);
      d = true;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */