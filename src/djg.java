import android.content.Intent;
import com.google.android.apps.hangouts.phone.ShareIntentActivity;

public final class djg
  implements cao
{
  public djg(ShareIntentActivity paramShareIntentActivity) {}
  
  public void a(Intent paramIntent)
  {
    hbs.a("Should not get called");
  }
  
  public void a(axj paramaxj)
  {
    Intent localIntent1 = aal.a(a.j.g(), a, b);
    localIntent1.putExtra("conversation_parameters", paramaxj);
    Intent localIntent2 = a.getIntent();
    localIntent2.putExtra("conversation_id", a);
    ewz.a("ShareIntentActivity.openConversation", localIntent2);
    localIntent1.putExtra("share_intent", localIntent2);
    localIntent1.setFlags(8388608);
    localIntent1.addFlags(1);
    a.startActivityForResult(localIntent1, 0);
    a.overridePendingTransition(aal.ch, aal.ci);
  }
  
  public void a(epa paramepa)
  {
    hbs.a("Should not get called");
  }
  
  public void a(epa paramepa1, epa paramepa2)
  {
    hbs.a("Should not get called");
  }
  
  public void a(String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    hbs.a("Should not get called");
  }
  
  public boolean a(String paramString)
  {
    return false;
  }
  
  public void j()
  {
    hbs.a("Should not get called");
  }
  
  public void u_()
  {
    hbs.a("Should not get called");
  }
}

/* Location:
 * Qualified Name:     djg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */