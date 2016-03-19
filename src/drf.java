import android.text.TextUtils;

public class drf
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final String g;
  private final String h;
  
  private drf(khw paramkhw)
  {
    if (a != null)
    {
      khf localkhf = a;
      if (!TextUtils.isEmpty(a))
      {
        g = a;
        if (j != null) {
          h = j.a;
        }
      }
    }
    for (;;)
    {
      if (dqf.a)
      {
        paramkhw = String.valueOf(paramkhw);
        new StringBuilder(String.valueOf(paramkhw).length() + 28).append("GetHangoutInfoResponse from:").append(paramkhw);
      }
      return;
      hbs.a("Hangout has no associated conversation");
      h = null;
      continue;
      hbs.a("ServerResponse has Hangout but no hangoutId");
      g = null;
      h = null;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (khw)lyi.b(new khw(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new drf(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     drf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */