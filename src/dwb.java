import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class dwb
{
  private final Context a;
  private int b;
  private String c;
  private ihb d;
  private bfw e;
  private boolean f;
  private boolean g;
  private int h = 0;
  private String i;
  private int j;
  
  public dwb(Context paramContext)
  {
    a = paramContext;
  }
  
  public Intent a()
  {
    Intent localIntent = new Intent(a, RealTimeChatService.class);
    localIntent.putExtra("op", 30);
    localIntent.putExtra("account_id", b);
    localIntent.putExtra("conversation_name", c);
    localIntent.putExtra("audience", d);
    localIntent.putExtra("conversation_lookup", e);
    localIntent.putExtra("force_group", g);
    localIntent.putExtra("transport_type", h);
    if (f) {
      localIntent.putExtra("conversation_hangout", true);
    }
    localIntent.putExtra("invite_token_url", i);
    localIntent.putExtra("opened_from_impression", j);
    return localIntent;
  }
  
  public dwb a(int paramInt)
  {
    b = paramInt;
    return this;
  }
  
  public dwb a(bfw parambfw)
  {
    e = parambfw;
    return this;
  }
  
  public dwb a(ihb paramihb)
  {
    d = paramihb;
    return this;
  }
  
  public dwb a(String paramString)
  {
    i = paramString;
    return this;
  }
  
  public dwb a(boolean paramBoolean)
  {
    f = paramBoolean;
    return this;
  }
  
  public dwb b(int paramInt)
  {
    h = paramInt;
    return this;
  }
  
  public dwb b(boolean paramBoolean)
  {
    g = paramBoolean;
    return this;
  }
  
  public dwb c(int paramInt)
  {
    j = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     dwb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */