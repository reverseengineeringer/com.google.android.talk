import android.content.Context;
import android.widget.TextView;

final class eeg
  extends TextView
{
  eeg(eef parameef, Context paramContext)
  {
    super(paramContext);
    setText("Map from wakelock id to how long that wakelock has been held. Click a row to see the details of the intent holding the wakelock.");
    setPadding(20, 20, 20, 20);
  }
}

/* Location:
 * Qualified Name:     eeg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */