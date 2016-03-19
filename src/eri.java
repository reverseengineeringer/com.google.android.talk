import android.telecom.DisconnectCause;

final class eri
{
  esv a;
  
  eri(esv paramesv)
  {
    a = paramesv;
  }
  
  public void a()
  {
    ezi.c("Babel_telephony", "TeleOutgoingCallRequest.DisconnectCallListener.onDisconnect", new Object[0]);
    if (a != null)
    {
      esv localesv = a;
      if (!d)
      {
        b.setDisconnected(new DisconnectCause(2));
        localesv.c();
      }
    }
  }
  
  void b()
  {
    a = null;
  }
}

/* Location:
 * Qualified Name:     eri
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */