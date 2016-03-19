import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Arrays;

public class dpm
  extends dor
{
  private static final long serialVersionUID = 1L;
  public final czb a;
  public final int b;
  public final int[] j;
  
  public dpm(String paramString)
  {
    super(paramString);
    b = 1;
    a = null;
    j = new int[0];
  }
  
  public dpm(String paramString, int paramInt, int[] paramArrayOfInt)
  {
    super(paramString);
    b = paramInt;
    a = null;
    j = paramArrayOfInt;
  }
  
  public String a()
  {
    return "event_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    if (ezi.a("Babel_RequestWriter", 3)) {
      ezi.b("Babel_RequestWriter", "replyToInviteRequest build protobuf", new Object[0]);
    }
    kdm localkdm = new kdm();
    requestHeader = don.a(paramString, paramInt1, paramInt2, h);
    c = Integer.valueOf(b);
    a = don.a(c);
    d = Arrays.copyOf(j, j.length);
    return localkdm;
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    super.a(parambfd, paramdvn);
    if (!d) {
      RealTimeChatService.b(parambfd.g(), c);
    }
  }
  
  public String f()
  {
    return "conversations/replytoinvite";
  }
  
  public int l()
  {
    return 4;
  }
}

/* Location:
 * Qualified Name:     dpm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */