import android.content.IntentFilter;

public final class mqp
  extends IntentFilter
{
  public mqp(boolean paramBoolean)
  {
    addAction("android.net.conn.CONNECTIVITY_CHANGE");
    if (paramBoolean) {
      addAction("android.net.wifi.RSSI_CHANGED");
    }
  }
}

/* Location:
 * Qualified Name:     mqp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */