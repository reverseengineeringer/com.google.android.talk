import android.net.Uri;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class dsh
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final String g;
  private final long h;
  private final boolean i;
  
  public dsh(Uri paramUri, long paramLong, boolean paramBoolean)
  {
    if (paramUri != null) {}
    for (paramUri = paramUri.toString();; paramUri = null)
    {
      g = paramUri;
      h = paramLong;
      i = paramBoolean;
      return;
    }
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    if (g != null) {}
    for (parambfz = Uri.parse(g);; parambfz = null)
    {
      RealTimeChatService.a(parambfz, h, i);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dsh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */