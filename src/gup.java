import android.content.IntentFilter;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.internal.AmsEntityUpdateParcelable;
import com.google.android.gms.wearable.internal.AncsNotificationParcelable;
import com.google.android.gms.wearable.internal.CapabilityInfoParcelable;
import com.google.android.gms.wearable.internal.ChannelEventParcelable;
import com.google.android.gms.wearable.internal.MessageEventParcelable;
import com.google.android.gms.wearable.internal.NodeParcelable;
import java.util.List;

public final class gup<T>
  extends gtq
{
  private avb a;
  private avb b;
  private gri c;
  private grs d;
  private avb e;
  private avb f;
  private avb g;
  private avb h;
  private final IntentFilter[] i;
  private final String j;
  private final String k;
  
  public void a()
  {
    a = null;
    b = null;
    c = null;
    d = null;
    e = null;
    f = null;
    g = null;
    h = null;
  }
  
  public void a(DataHolder paramDataHolder)
  {
    if (c != null) {
      try
      {
        c.a(new grl(paramDataHolder));
        return;
      }
      finally
      {
        paramDataHolder.f();
      }
    }
    paramDataHolder.f();
  }
  
  public void a(AmsEntityUpdateParcelable paramAmsEntityUpdateParcelable) {}
  
  public void a(AncsNotificationParcelable paramAncsNotificationParcelable) {}
  
  public void a(CapabilityInfoParcelable paramCapabilityInfoParcelable) {}
  
  public void a(ChannelEventParcelable paramChannelEventParcelable)
  {
    if (g != null) {
      paramChannelEventParcelable.a();
    }
  }
  
  public void a(MessageEventParcelable paramMessageEventParcelable)
  {
    if (d != null) {
      d.a(paramMessageEventParcelable);
    }
  }
  
  public void a(NodeParcelable paramNodeParcelable) {}
  
  public void a(List<NodeParcelable> paramList) {}
  
  public void b(NodeParcelable paramNodeParcelable) {}
  
  public IntentFilter[] b()
  {
    return i;
  }
  
  public String c()
  {
    return j;
  }
  
  public String d()
  {
    return k;
  }
}

/* Location:
 * Qualified Name:     gup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */