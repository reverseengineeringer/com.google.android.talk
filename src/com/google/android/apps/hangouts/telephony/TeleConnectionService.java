package com.google.android.apps.hangouts.telephony;

import aal;
import android.app.Notification.Builder;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.telecom.Connection;
import android.telecom.ConnectionRequest;
import android.telecom.ConnectionService;
import android.telecom.PhoneAccountHandle;
import android.telecom.RemoteConference;
import eqs;
import erg;
import erl;
import esb;
import esc;
import esg;
import est;
import esv;
import esw;
import eth;
import etj;
import eut;
import evc;
import ezi;
import ilh;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class TeleConnectionService
  extends ConnectionService
{
  private final evc a = new evc(this);
  private PowerManager.WakeLock b;
  
  private void b()
  {
    if (b != null) {
      b.release();
    }
  }
  
  public evc a()
  {
    return a;
  }
  
  protected void dump(FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    a.a(paramPrintWriter);
  }
  
  public void onConference(Connection paramConnection1, Connection paramConnection2)
  {
    String str1 = String.valueOf(paramConnection1);
    String str2 = String.valueOf(paramConnection2);
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 63 + String.valueOf(str2).length() + "TeleConnectionService.onConference, connection1: " + str1 + " connection2: " + str2, new Object[0]);
    if (((paramConnection1 instanceof erg)) && ((paramConnection2 instanceof erg)))
    {
      paramConnection1 = (erg)paramConnection1;
      if (paramConnection1.j() != null)
      {
        paramConnection2 = (erg)paramConnection2;
        paramConnection1.j().a(paramConnection2.j());
      }
    }
  }
  
  public void onCreate()
  {
    if (aal.a(this, "babel_make_foreground_service", false))
    {
      ezi.c("Babel_telephony", "TeleConnectionService.onCreate, making this a foreground service.", new Object[0]);
      startForeground(1, new Notification.Builder(this).setContentTitle(getText(aal.qO)).setContentText(getText(aal.qO)).setSmallIcon(aal.qp).setAutoCancel(false).setLocalOnly(true).setOngoing(true).build());
    }
  }
  
  public Connection onCreateIncomingConnection(PhoneAccountHandle paramPhoneAccountHandle, ConnectionRequest paramConnectionRequest)
  {
    int i = 1;
    paramPhoneAccountHandle = String.valueOf(paramConnectionRequest);
    ezi.c("Babel_telephony", String.valueOf(paramPhoneAccountHandle).length() + 59 + "TeleConnectionService.onCreateIncomingConnection, request: " + paramPhoneAccountHandle, new Object[0]);
    if ((aal.a(this, "babel_should_use_wake_lock", true)) && (b == null)) {
      b = ((PowerManager)getSystemService("power")).newWakeLock(1, "Babel_telephony");
    }
    if (b != null) {
      b.acquire();
    }
    try
    {
      int j = eut.a(this).b();
      esc localesc;
      if (j != -1)
      {
        paramPhoneAccountHandle = new erl(this, j);
        localesc = (esc)ilh.a(this, esc.class);
        if (esg.a(paramConnectionRequest.getExtras()) == null) {
          break label170;
        }
      }
      for (;;)
      {
        if (i == 0) {
          break label175;
        }
        paramPhoneAccountHandle = localesc.a(this, paramConnectionRequest, paramPhoneAccountHandle, b);
        return paramPhoneAccountHandle;
        paramPhoneAccountHandle = null;
        break;
        label170:
        i = 0;
      }
      label175:
      paramPhoneAccountHandle = new esb(this, this, paramConnectionRequest, paramPhoneAccountHandle).a();
      return paramPhoneAccountHandle;
    }
    finally
    {
      b();
    }
  }
  
  public Connection onCreateOutgoingConnection(PhoneAccountHandle paramPhoneAccountHandle, ConnectionRequest paramConnectionRequest)
  {
    paramPhoneAccountHandle = String.valueOf(paramConnectionRequest);
    ezi.c("Babel_telephony", String.valueOf(paramPhoneAccountHandle).length() + 59 + "TeleConnectionService.onCreateOutgoingConnection, request: " + paramPhoneAccountHandle, new Object[0]);
    paramPhoneAccountHandle = getApplicationContext();
    paramConnectionRequest = new erg(new esw(this, paramConnectionRequest, new est(this, etj.a(this)), false));
    new esv(paramPhoneAccountHandle, paramConnectionRequest).a();
    return paramConnectionRequest;
  }
  
  public void onRemoteConferenceAdded(RemoteConference paramRemoteConference)
  {
    String str = String.valueOf(paramRemoteConference);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 59 + "TeleConnectionService.onRemoteConferenceAdded, conference: " + str, new Object[0]);
    addConference(eth.a(paramRemoteConference, this));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.telephony.TeleConnectionService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */