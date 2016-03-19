import android.app.Activity;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.nfc.NfcAdapter;
import android.nfc.NfcAdapter.CreateNdefMessageCallback;
import android.nfc.NfcEvent;
import android.os.Bundle;
import android.os.Handler;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

public final class cid
  extends av
  implements NfcAdapter.CreateNdefMessageCallback
{
  private NfcAdapter a;
  private Handler b;
  private cgs c;
  
  void a()
  {
    ??? = cfc.a().r();
    if (??? == null) {
      aal.k("HangoutState is null. Will not send NdefMessage");
    }
    synchronized (b)
    {
      Object localObject2;
      do
      {
        do
        {
          b.notify();
          return;
          localObject2 = ((cgw)???).q();
        } while (localObject2 == null);
        localObject2 = ((hcs)localObject2).m();
      } while (localObject2 == null);
      c = ((cgw)???).e().b(((hip)localObject2).a());
    }
  }
  
  public NdefMessage createNdefMessage(NfcEvent arg1)
  {
    aal.k("createNdefMessage");
    synchronized (b)
    {
      b.post(new cie(this));
      try
      {
        b.wait();
        if (c == null)
        {
          aal.k("Could not fetch HangoutRequest. Will not send NdefMessage.");
          return null;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        aal.k("InterruptedException while creating NdefMessage.");
        return null;
      }
    }
    try
    {
      ??? = c;
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      new ObjectOutputStream(localByteArrayOutputStream).writeObject(???);
      ??? = localByteArrayOutputStream.toByteArray();
      return new NdefMessage(new NdefRecord[] { NdefRecord.createExternal("com.google.android.apps.hangouts", "hangoutrequest", ???) });
    }
    catch (IOException ???)
    {
      ??? = String.valueOf(???);
      aal.k(String.valueOf(???).length() + 34 + "Cannot serialize hangout request: " + ???);
    }
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ezi.a("Babel_calls", 2);
    b = new Handler();
  }
  
  public void onResume()
  {
    super.onResume();
    a = NfcAdapter.getDefaultAdapter(getActivity());
    if (a == null) {
      return;
    }
    a.setNdefPushMessageCallback(this, getActivity(), new Activity[0]);
  }
}

/* Location:
 * Qualified Name:     cid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */