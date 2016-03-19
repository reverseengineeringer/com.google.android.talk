import android.app.PendingIntent;
import android.app.RemoteInput.Builder;
import android.os.Bundle;
import android.os.Parcelable;
import java.lang.ref.WeakReference;

public final class eal
  implements eam
{
  public final WeakReference<a> a;
  public int b;
  public final String[] c;
  public final ee d;
  public final PendingIntent e;
  public final PendingIntent f;
  public final String[] g;
  public final long h;
  
  public eal() {}
  
  public eal(String[] paramArrayOfString1, ee paramee, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, String[] paramArrayOfString2, long paramLong)
  {
    c = paramArrayOfString1;
    d = paramee;
    f = paramPendingIntent2;
    e = paramPendingIntent1;
    g = paramArrayOfString2;
    h = paramLong;
  }
  
  public static Bundle a(eal parameal)
  {
    if (parameal == null) {
      return null;
    }
    Bundle localBundle1 = new Bundle();
    Object localObject = parameal.a();
    Parcelable[] arrayOfParcelable = new Parcelable[c.length];
    int i = 0;
    while (i < arrayOfParcelable.length)
    {
      Bundle localBundle2 = new Bundle();
      localBundle2.putString("text", c[i]);
      localBundle2.putString("author", (String)localObject);
      arrayOfParcelable[i] = localBundle2;
      i += 1;
    }
    localBundle1.putParcelableArray("messages", arrayOfParcelable);
    localObject = d;
    localBundle1.putParcelable("remote_input", new RemoteInput.Builder(((ee)localObject).a()).setLabel(((ee)localObject).b()).setChoices(((ee)localObject).c()).setAllowFreeFormInput(((ee)localObject).d()).addExtras(((ee)localObject).e()).build());
    localBundle1.putParcelable("on_reply", e);
    localBundle1.putParcelable("on_read", f);
    localBundle1.putStringArray("participants", g);
    localBundle1.putLong("timestamp", h);
    return localBundle1;
  }
  
  private String a()
  {
    if (g.length == 1) {
      return g[0];
    }
    return null;
  }
  
  public void a(int paramInt, bfd parambfd, eau parameau) {}
  
  public boolean a(a parama)
  {
    return (parama != null) && (a.get() == parama);
  }
}

/* Location:
 * Qualified Name:     eal
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */