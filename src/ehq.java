import android.content.Intent;
import java.util.Map;

public abstract class ehq
  extends eeb
{
  private final Map<String, ehr> a = new hq();
  
  public ehq(String paramString)
  {
    super(paramString);
    paramString = a();
    int i = 0;
    while (i < 7)
    {
      Object localObject = paramString[i];
      a.put(localObject.getClass().getName(), localObject);
      i += 1;
    }
  }
  
  public void a(Intent paramIntent, knq<Intent> paramknq)
  {
    paramknq = paramIntent.getStringExtra("ds_processor");
    ehr localehr = (ehr)a.get(paramknq);
    if (localehr != null)
    {
      localehr.a(this, paramIntent);
      return;
    }
    paramIntent = String.valueOf(getClass().getSimpleName());
    ezi.e("Babel", String.valueOf(paramknq).length() + 104 + String.valueOf(paramIntent).length() + paramknq + " was not present in " + paramIntent + "'s processorMap.  This could happen if the app was upgraded while an intent was out.", new Object[0]);
  }
  
  public abstract ehr[] a();
}

/* Location:
 * Qualified Name:     ehq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */