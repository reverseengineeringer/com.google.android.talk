import android.app.PendingIntent;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.Toolbar;
import java.util.ArrayList;
import java.util.List;

public final class qo
  implements qi
{
  final Toolbar a;
  final Drawable b;
  final CharSequence c;
  public final List<String> d = new ArrayList();
  public String e;
  public ee f;
  public PendingIntent g;
  public PendingIntent h;
  public long i;
  
  public qo(String paramString)
  {
    e = paramString;
  }
  
  public Drawable a()
  {
    return b;
  }
  
  public qo a(long paramLong)
  {
    i = paramLong;
    return this;
  }
  
  public qo a(PendingIntent paramPendingIntent)
  {
    g = paramPendingIntent;
    return this;
  }
  
  public qo a(PendingIntent paramPendingIntent, ee paramee)
  {
    f = paramee;
    h = paramPendingIntent;
    return this;
  }
  
  public qo a(String paramString)
  {
    d.add(paramString);
    return this;
  }
  
  public void a(int paramInt)
  {
    if (paramInt == 0)
    {
      a.d(c);
      return;
    }
    a.d(paramInt);
  }
  
  public void a(Drawable paramDrawable, int paramInt)
  {
    a.b(paramDrawable);
    a(paramInt);
  }
  
  public Context b()
  {
    return a.getContext();
  }
  
  public boolean c()
  {
    return true;
  }
  
  public eal d()
  {
    String[] arrayOfString = (String[])d.toArray(new String[d.size()]);
    String str = e;
    ee localee = f;
    PendingIntent localPendingIntent1 = h;
    PendingIntent localPendingIntent2 = g;
    long l = i;
    return new eal(arrayOfString, localee, localPendingIntent1, localPendingIntent2, new String[] { str }, l);
  }
}

/* Location:
 * Qualified Name:     qo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */