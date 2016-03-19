import android.os.Handler;
import android.os.Message;
import com.google.android.apps.hangouts.phone.ViewVCardActivity;
import java.util.Iterator;
import java.util.List;

public final class afp
{
  public Handler a;
  
  public afp(ViewVCardActivity paramViewVCardActivity, Handler paramHandler)
  {
    a = paramHandler;
  }
  
  public void a()
  {
    ViewVCardActivity.a("onStart");
  }
  
  public void a(aeu paramaeu)
  {
    Object localObject = String.valueOf(paramaeu.b());
    if (((String)localObject).length() != 0)
    {
      localObject = "onEntryCreated, display name is ".concat((String)localObject);
      ViewVCardActivity.a((String)localObject);
      localObject = a;
      if (localObject == null) {
        break label114;
      }
      Iterator localIterator = ((List)localObject).iterator();
      label42:
      if (!localIterator.hasNext()) {
        break label119;
      }
      localObject = String.valueOf(((afh)localIterator.next()).toString());
      if (((String)localObject).length() == 0) {
        break label101;
      }
    }
    label101:
    for (localObject = "onEntryCreated, ".concat((String)localObject);; localObject = new String("onEntryCreated, "))
    {
      ViewVCardActivity.a((String)localObject);
      break label42;
      localObject = new String("onEntryCreated, display name is ");
      break;
    }
    label114:
    ViewVCardActivity.a("onEntryCreated, entry.getPhoneList() is null");
    label119:
    if (a != null) {
      a.obtainMessage(1003, paramaeu).sendToTarget();
    }
  }
  
  public void b()
  {
    ViewVCardActivity.a("onEnd");
    if (a != null) {
      a.sendEmptyMessage(1001);
    }
  }
}

/* Location:
 * Qualified Name:     afp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */