import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;

public final class cy
{
  Notification A;
  public Notification B = new Notification();
  public ArrayList<String> C;
  public Context a;
  public CharSequence b;
  public CharSequence c;
  PendingIntent d;
  PendingIntent e;
  RemoteViews f;
  public Bitmap g;
  public CharSequence h;
  public int i;
  int j;
  boolean k = true;
  public boolean l;
  public dk m;
  public CharSequence n;
  int o;
  int p;
  boolean q;
  String r;
  boolean s;
  String t;
  public ArrayList<cu> u = new ArrayList();
  boolean v = false;
  String w;
  Bundle x;
  int y = 0;
  int z = 0;
  
  public cy(Context paramContext)
  {
    a = paramContext;
    B.when = System.currentTimeMillis();
    B.audioStreamType = -1;
    j = 0;
    C = new ArrayList();
  }
  
  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localNotification = B;
      flags |= paramInt;
      return;
    }
    Notification localNotification = B;
    flags &= (paramInt ^ 0xFFFFFFFF);
  }
  
  protected static CharSequence d(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {}
    while (paramCharSequence.length() <= 5120) {
      return paramCharSequence;
    }
    return paramCharSequence.subSequence(0, 5120);
  }
  
  public cy a()
  {
    k = true;
    return this;
  }
  
  public cy a(int paramInt)
  {
    B.icon = paramInt;
    return this;
  }
  
  public cy a(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    u.add(new cu(paramInt, paramCharSequence, paramPendingIntent));
    return this;
  }
  
  public cy a(long paramLong)
  {
    B.when = paramLong;
    return this;
  }
  
  public cy a(Notification paramNotification)
  {
    A = paramNotification;
    return this;
  }
  
  public cy a(PendingIntent paramPendingIntent)
  {
    d = paramPendingIntent;
    return this;
  }
  
  public cy a(Bitmap paramBitmap)
  {
    g = paramBitmap;
    return this;
  }
  
  public cy a(Uri paramUri)
  {
    B.sound = paramUri;
    B.audioStreamType = -1;
    return this;
  }
  
  public cy a(Bundle paramBundle)
  {
    if (x == null)
    {
      x = new Bundle(paramBundle);
      return this;
    }
    x.putAll(paramBundle);
    return this;
  }
  
  public cy a(cu paramcu)
  {
    u.add(paramcu);
    return this;
  }
  
  public cy a(da paramda)
  {
    paramda.a(this);
    return this;
  }
  
  public cy a(dk paramdk)
  {
    if (m != paramdk)
    {
      m = paramdk;
      if (m != null) {
        m.a(this);
      }
    }
    return this;
  }
  
  public cy a(CharSequence paramCharSequence)
  {
    b = d(paramCharSequence);
    return this;
  }
  
  public cy a(String paramString)
  {
    w = paramString;
    return this;
  }
  
  public cy a(boolean paramBoolean)
  {
    a(16, paramBoolean);
    return this;
  }
  
  public cy a(long[] paramArrayOfLong)
  {
    B.vibrate = paramArrayOfLong;
    return this;
  }
  
  public cy b()
  {
    l = true;
    return this;
  }
  
  public cy b(int paramInt)
  {
    i = paramInt;
    return this;
  }
  
  public cy b(PendingIntent paramPendingIntent)
  {
    B.deleteIntent = paramPendingIntent;
    return this;
  }
  
  public cy b(CharSequence paramCharSequence)
  {
    c = d(paramCharSequence);
    return this;
  }
  
  public cy b(String paramString)
  {
    r = paramString;
    return this;
  }
  
  public cy c()
  {
    a(2, true);
    return this;
  }
  
  public cy c(int paramInt)
  {
    B.defaults = paramInt;
    if ((paramInt & 0x4) != 0)
    {
      Notification localNotification = B;
      flags |= 0x1;
    }
    return this;
  }
  
  public cy c(PendingIntent paramPendingIntent)
  {
    e = paramPendingIntent;
    a(128, true);
    return this;
  }
  
  public cy c(CharSequence paramCharSequence)
  {
    B.tickerText = d(paramCharSequence);
    return this;
  }
  
  public cy c(String paramString)
  {
    t = paramString;
    return this;
  }
  
  public cy d()
  {
    a(8, true);
    return this;
  }
  
  public cy d(int paramInt)
  {
    j = paramInt;
    return this;
  }
  
  public cy e()
  {
    s = true;
    return this;
  }
  
  public cy e(int paramInt)
  {
    y = paramInt;
    return this;
  }
  
  public Bundle f()
  {
    if (x == null) {
      x = new Bundle();
    }
    return x;
  }
  
  public Notification g()
  {
    dc localdc = ct.a;
    new cz();
    return localdc.a(this);
  }
}

/* Location:
 * Qualified Name:     cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */