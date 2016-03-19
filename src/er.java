import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

final class er
  implements eq
{
  public PendingIntent a(Context paramContext, Intent[] paramArrayOfIntent, int paramInt1, int paramInt2)
  {
    paramArrayOfIntent = new Intent(paramArrayOfIntent[(paramArrayOfIntent.length - 1)]);
    paramArrayOfIntent.addFlags(268435456);
    return PendingIntent.getActivity(paramContext, paramInt1, paramArrayOfIntent, paramInt2);
  }
}

/* Location:
 * Qualified Name:     er
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */