import android.app.IntentService;
import android.content.Intent;

public abstract class eeb
  extends IntentService
{
  public eeb(String paramString)
  {
    super(paramString);
  }
  
  public abstract void a(Intent paramIntent, knq<Intent> paramknq);
  
  protected final void onHandleIntent(Intent paramIntent)
  {
    ((eec)ilh.a(getApplicationContext(), eec.class)).a(this, paramIntent);
  }
}

/* Location:
 * Qualified Name:     eeb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */