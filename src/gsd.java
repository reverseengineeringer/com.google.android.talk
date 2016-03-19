import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.internal.AmsEntityUpdateParcelable;
import com.google.android.gms.wearable.internal.AncsNotificationParcelable;
import com.google.android.gms.wearable.internal.CapabilityInfoParcelable;
import com.google.android.gms.wearable.internal.ChannelEventParcelable;
import com.google.android.gms.wearable.internal.MessageEventParcelable;
import com.google.android.gms.wearable.internal.NodeParcelable;
import java.util.List;

final class gsd
  extends gtq
{
  boolean a = false;
  
  gsd(gsc paramgsc)
  {
    a = (paramgsc instanceof gsn);
  }
  
  public void a(DataHolder paramDataHolder)
  {
    if (Log.isLoggable("WearableLS", 3)) {
      new StringBuilder("onDataItemChanged: ").append(b.a).append(": ").append(paramDataHolder);
    }
    gsc.a(b);
    synchronized (b.c)
    {
      if (b.d)
      {
        paramDataHolder.f();
        return;
      }
      b.b.post(new gse(this, paramDataHolder));
      return;
    }
  }
  
  public void a(AmsEntityUpdateParcelable paramAmsEntityUpdateParcelable)
  {
    if (Log.isLoggable("WearableLS", 3)) {
      new StringBuilder("onEntityUpdate: ").append(paramAmsEntityUpdateParcelable);
    }
    if (!a) {
      return;
    }
    gsc.a(b);
    gsn localgsn = (gsn)b;
    synchronized (b.c)
    {
      if (b.d) {
        return;
      }
    }
    b.b.post(new gsl(this, localgsn, paramAmsEntityUpdateParcelable));
  }
  
  public void a(AncsNotificationParcelable paramAncsNotificationParcelable)
  {
    if (Log.isLoggable("WearableLS", 3)) {
      new StringBuilder("onNotificationReceived: ").append(paramAncsNotificationParcelable);
    }
    if (!a) {
      return;
    }
    gsc.a(b);
    gsn localgsn = (gsn)b;
    synchronized (b.c)
    {
      if (b.d) {
        return;
      }
    }
    b.b.post(new gsk(this, localgsn, paramAncsNotificationParcelable));
  }
  
  public void a(CapabilityInfoParcelable paramCapabilityInfoParcelable)
  {
    if (Log.isLoggable("WearableLS", 3)) {
      new StringBuilder("onConnectedCapabilityChanged: ").append(paramCapabilityInfoParcelable);
    }
    gsc.a(b);
    synchronized (b.c)
    {
      if (b.d) {
        return;
      }
      b.b.post(new gsj(this, paramCapabilityInfoParcelable));
      return;
    }
  }
  
  public void a(ChannelEventParcelable paramChannelEventParcelable)
  {
    if (Log.isLoggable("WearableLS", 3)) {
      new StringBuilder("onChannelEvent: ").append(paramChannelEventParcelable);
    }
    gsc.a(b);
    synchronized (b.c)
    {
      if (b.d) {
        return;
      }
      b.b.post(new gsm(this, paramChannelEventParcelable));
      return;
    }
  }
  
  public void a(MessageEventParcelable paramMessageEventParcelable)
  {
    if (Log.isLoggable("WearableLS", 3)) {
      new StringBuilder("onMessageReceived: ").append(paramMessageEventParcelable);
    }
    gsc.a(b);
    synchronized (b.c)
    {
      if (b.d) {
        return;
      }
      b.b.post(new gsf(this, paramMessageEventParcelable));
      return;
    }
  }
  
  public void a(NodeParcelable paramNodeParcelable)
  {
    if (Log.isLoggable("WearableLS", 3)) {
      new StringBuilder("onPeerConnected: ").append(b.a).append(": ").append(paramNodeParcelable);
    }
    gsc.a(b);
    synchronized (b.c)
    {
      if (b.d) {
        return;
      }
      b.b.post(new gsg(this, paramNodeParcelable));
      return;
    }
  }
  
  public void a(List<NodeParcelable> paramList)
  {
    if (Log.isLoggable("WearableLS", 3)) {
      new StringBuilder("onConnectedNodes: ").append(b.a).append(": ").append(paramList);
    }
    gsc.a(b);
    synchronized (b.c)
    {
      if (b.d) {
        return;
      }
      b.b.post(new gsi(this, paramList));
      return;
    }
  }
  
  public void b(NodeParcelable paramNodeParcelable)
  {
    if (Log.isLoggable("WearableLS", 3)) {
      new StringBuilder("onPeerDisconnected: ").append(b.a).append(": ").append(paramNodeParcelable);
    }
    gsc.a(b);
    synchronized (b.c)
    {
      if (b.d) {
        return;
      }
      b.b.post(new gsh(this, paramNodeParcelable));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     gsd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */