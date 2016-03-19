import android.app.Notification;
import android.app.PendingIntent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;

public final class dl
  implements da
{
  private ArrayList<cu> a = new ArrayList();
  private int b = 1;
  private PendingIntent c;
  private ArrayList<Notification> d = new ArrayList();
  private Bitmap e;
  private int f;
  private int g = 8388613;
  private int h = -1;
  private int i = 0;
  private int j;
  private int k = 80;
  private int l;
  
  private void a(int paramInt, boolean paramBoolean)
  {
    b |= paramInt;
  }
  
  public cy a(cy paramcy)
  {
    Bundle localBundle = new Bundle();
    if (!a.isEmpty()) {
      localBundle.putParcelableArrayList("actions", ct.a.a((cu[])a.toArray(new cu[a.size()])));
    }
    if (b != 1) {
      localBundle.putInt("flags", b);
    }
    if (c != null) {
      localBundle.putParcelable("displayIntent", c);
    }
    if (!d.isEmpty()) {
      localBundle.putParcelableArray("pages", (Parcelable[])d.toArray(new Notification[d.size()]));
    }
    if (e != null) {
      localBundle.putParcelable("background", e);
    }
    if (f != 0) {
      localBundle.putInt("contentIcon", f);
    }
    if (g != 8388613) {
      localBundle.putInt("contentIconGravity", g);
    }
    if (h != -1) {
      localBundle.putInt("contentActionIndex", h);
    }
    if (i != 0) {
      localBundle.putInt("customSizePreset", i);
    }
    if (j != 0) {
      localBundle.putInt("customContentHeight", j);
    }
    if (k != 80) {
      localBundle.putInt("gravity", k);
    }
    if (l != 0) {
      localBundle.putInt("hintScreenTimeout", l);
    }
    paramcy.f().putBundle("android.wearable.EXTENSIONS", localBundle);
    return paramcy;
  }
  
  public dl a()
  {
    a(8, true);
    return this;
  }
  
  public dl a(Notification paramNotification)
  {
    d.add(paramNotification);
    return this;
  }
  
  public dl a(Bitmap paramBitmap)
  {
    e = paramBitmap;
    return this;
  }
  
  public dl a(cu paramcu)
  {
    a.add(paramcu);
    return this;
  }
  
  public dl b()
  {
    a(4, true);
    return this;
  }
  
  public dl c()
  {
    l = -1;
    return this;
  }
}

/* Location:
 * Qualified Name:     dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */