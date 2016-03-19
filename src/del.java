import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.Window;
import com.google.android.apps.hangouts.fragments.ConversationListFragment;

public class del
  extends cbr
  implements cao, ecj
{
  public final hpu n = new hqo(this, B).a(A);
  public ConversationListFragment o;
  
  public void a(Intent paramIntent)
  {
    throw new UnsupportedOperationException();
  }
  
  public void a(axj paramaxj)
  {
    Intent localIntent = aal.a(n.a(), a, b);
    localIntent.putExtra("conversation_parameters", paramaxj);
    localIntent.putExtra("opened_from_impression", 1634);
    startActivity(localIntent);
  }
  
  public void a(epa paramepa)
  {
    throw new UnsupportedOperationException();
  }
  
  public void a(epa paramepa1, epa paramepa2)
  {
    throw new UnsupportedOperationException();
  }
  
  public void a(String paramString, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean a(String paramString)
  {
    return cfc.a(dvd.e(n.a()), paramString);
  }
  
  public void j() {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.fj);
    o = ((ConversationListFragment)C_().a(aen.bm));
    o.a(this);
    if (Build.VERSION.SDK_INT >= 21)
    {
      int i = aal.dh;
      getWindow().setStatusBarColor(getResources().getColor(i));
    }
  }
  
  public void u_() {}
}

/* Location:
 * Qualified Name:     del
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */