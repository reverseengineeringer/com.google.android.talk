import android.content.Intent;
import com.google.android.apps.hangouts.phone.BabelHomeActivity;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class ddy
  extends eap
{
  public ddy(BabelHomeActivity paramBabelHomeActivity, ebi paramebi, String paramString, bfb parambfb, int paramInt1, int paramInt2) {}
  
  public void a(int paramInt, bfd parambfd, dwd paramdwd, eau parameau)
  {
    if (paramInt != a.a()) {
      return;
    }
    RealTimeChatService.b(this);
    if (paramdwd == null)
    {
      parambfd = b;
      ezi.e("Babel_HomeActivity", String.valueOf(parambfd).length() + 64 + "creating conversation with " + parambfd + " resulting in null ConversationResult", new Object[0]);
      return;
    }
    parambfd = new axj(a, 0);
    d = true;
    f = c;
    k = d;
    paramdwd = new Intent();
    paramdwd.putExtra("conversation_id", a);
    paramdwd.putExtra("android.intent.extra.TEXT", c.a);
    f.a(parambfd, paramdwd, e);
  }
}

/* Location:
 * Qualified Name:     ddy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */