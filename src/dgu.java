import android.app.AlertDialog.Builder;
import android.content.SharedPreferences;

final class dgu
  extends dgz
{
  final SharedPreferences a;
  
  public dgu(dfq paramdfq, SharedPreferences paramSharedPreferences)
  {
    super("Change API endpoint URLs");
    a = paramSharedPreferences;
  }
  
  public void a()
  {
    efh[] arrayOfefh = efh.values();
    CharSequence[] arrayOfCharSequence = new CharSequence[arrayOfefh.length];
    int i = 0;
    while (i < arrayOfefh.length)
    {
      arrayOfCharSequence[i] = arrayOfefh[i].toString();
      i += 1;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(b.a);
    localBuilder.setTitle("Choose API to change");
    localBuilder.setItems(arrayOfCharSequence, new dgv(this, arrayOfefh));
    localBuilder.show();
  }
}

/* Location:
 * Qualified Name:     dgu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */