import android.content.Context;
import android.telecom.DisconnectCause;
import android.telecom.RemoteConnection;
import android.text.TextUtils;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;

final class eud
  extends hku
{
  eud(eua parameua)
  {
    super((byte)0);
  }
  
  public void a(cgw paramcgw)
  {
    if (paramcgw != null) {}
    for (int j = paramcgw.O();; j = 1)
    {
      paramcgw = String.valueOf(aal.i(j));
      Object localObject1 = String.valueOf(a.c);
      ezi.c("Babel_telephony", String.valueOf(paramcgw).length() + 41 + String.valueOf(localObject1).length() + "TeleWifiCall.onHangoutEnded, endCause: " + paramcgw + ", " + (String)localObject1, new Object[0]);
      paramcgw = a;
      Object localObject2;
      if (!aal.a(a, "babel_wifi_call_fallback_to_cellular_allowed", true))
      {
        paramcgw = String.valueOf(c);
        ezi.c("Babel_telephony", String.valueOf(paramcgw).length() + 73 + "TeleWifiCall.shouldFallbackToCellular, fallback to cellular not allowed, " + paramcgw, new Object[0]);
        i = 0;
        if (i == 0) {
          break label893;
        }
        paramcgw = a;
        localObject1 = String.valueOf(c);
        ezi.c("Babel_telephony", String.valueOf(localObject1).length() + 40 + "TeleWifiCall.attemptFallbackToCellular, " + (String)localObject1, new Object[0]);
        localObject1 = c;
        localObject2 = ((erg)localObject1).d();
        ((erg)localObject1).f().a(1);
        localObject2 = ((TeleConnectionService)localObject2).createRemoteOutgoingConnection(aal.m((Context)localObject2), ((erg)localObject1).e());
        if (localObject2 != null) {
          break label851;
        }
        paramcgw = String.valueOf(c);
        ezi.c("Babel_telephony", String.valueOf(paramcgw).length() + 76 + "TeleWifiCall.attemptFallbackToCellular, unable to create remote connection, " + paramcgw, new Object[0]);
        ((erg)localObject1).f().a(2);
      }
      for (int i = 0;; i = 1)
      {
        if (i == 0) {
          break label893;
        }
        a.a(null);
        return;
        if (!aal.a(a, "babel_remote_connection_allowed", true))
        {
          paramcgw = String.valueOf(c);
          ezi.c("Babel_telephony", String.valueOf(paramcgw).length() + 70 + "TeleWifiCall.shouldFallbackToCellular, remote connection not allowed, " + paramcgw, new Object[0]);
          i = 0;
          break;
        }
        if (c == null)
        {
          ezi.c("Babel_telephony", "TeleWifiCall.shouldFallbackToCellular, connection is null", new Object[0]);
          i = 0;
          break;
        }
        if (c.getState() != 3)
        {
          i = c.getState();
          paramcgw = String.valueOf(c);
          ezi.c("Babel_telephony", String.valueOf(paramcgw).length() + 62 + "TeleWifiCall.shouldFallbackToCellular, state is: " + i + ", " + paramcgw, new Object[0]);
          i = 0;
          break;
        }
        if (c.p() != null)
        {
          paramcgw = String.valueOf(c);
          ezi.c("Babel_telephony", String.valueOf(paramcgw).length() + 67 + "TeleWifiCall.shouldFallbackToCellular, already has a hangout room, " + paramcgw, new Object[0]);
          i = 0;
          break;
        }
        if (d == null)
        {
          paramcgw = String.valueOf(c);
          ezi.c("Babel_telephony", String.valueOf(paramcgw).length() + 62 + "TeleWifiCall.shouldFallbackToCellular, hangout state is null, " + paramcgw, new Object[0]);
          i = 0;
          break;
        }
        if (j == 1004)
        {
          paramcgw = String.valueOf(c);
          ezi.c("Babel_telephony", String.valueOf(paramcgw).length() + 57 + "TeleWifiCall.shouldFallbackToCellular, local user ended, " + paramcgw, new Object[0]);
          i = 0;
          break;
        }
        if (e != 0)
        {
          i = e;
          paramcgw = String.valueOf(c);
          ezi.c("Babel_telephony", String.valueOf(paramcgw).length() + 69 + "TeleWifiCall.shouldFallbackToCellular, PSTN error code: " + i + ", " + paramcgw, new Object[0]);
          i = 0;
          break;
        }
        if (!d.C())
        {
          paramcgw = String.valueOf(c);
          ezi.c("Babel_telephony", String.valueOf(paramcgw).length() + 69 + "TeleWifiCall.shouldFallbackToCellular, not waiting for remote party, " + paramcgw, new Object[0]);
          i = 0;
          break;
        }
        paramcgw = String.valueOf(c);
        ezi.c("Babel_telephony", String.valueOf(paramcgw).length() + 55 + "TeleWifiCall.shouldFallbackToCellular, returning true, " + paramcgw, new Object[0]);
        i = 1;
        break;
        label851:
        ((erg)localObject1).b(new etc(a, (RemoteConnection)localObject2, null, null, c.i(), ((erg)localObject1).g()));
        ((erg)localObject1).x();
      }
      label893:
      if ((a.e == 8) || ((j == 1011) && (a.e != 0)))
      {
        localObject1 = a;
        localObject2 = a;
        i = a.e;
        String str = String.valueOf(aal.i(j));
        switch (i)
        {
        default: 
          paramcgw = 39 + "PstnStateErrorType.UNKNOWN: " + i;
          paramcgw = String.valueOf(paramcgw);
          str = String.valueOf(str).length() + 1 + String.valueOf(paramcgw).length() + str + " " + paramcgw;
          paramcgw = a;
          switch (i)
          {
          case 9: 
          default: 
            paramcgw = null;
            label1142:
            if (i != 8) {}
            break;
          }
          break;
        }
        for (paramcgw = new DisconnectCause(7, paramcgw, null, str, 17);; paramcgw = new DisconnectCause(1, paramcgw, null, str, 21))
        {
          ((eua)localObject1).a(paramcgw);
          return;
          paramcgw = "PstnStateErrorType.ERROR_MEDIA_TIMEOUT";
          break;
          paramcgw = "PstnStateErrorType.ERROR_MEDIA_IO_EXCEPTION";
          break;
          paramcgw = "PstnStateErrorType.ERROR_UNEXPECTED_CLOSE_ENDPOINT";
          break;
          paramcgw = "PstnStateErrorType.ERROR_JINGLE_TERMINATE";
          break;
          paramcgw = "PstnStateErrorType.ERROR_DEBUG_COMMAND";
          break;
          paramcgw = "PstnStateErrorType.ERROR_SERVER_SHUTDOWN";
          break;
          paramcgw = "PstnStateErrorType.ERROR_INSUFFICIENT_FUNDS";
          break;
          paramcgw = "PstnStateErrorType.ERROR_BUSY";
          break;
          paramcgw = "PstnStateErrorType.ERROR_TPAPI";
          break;
          paramcgw = "PstnStateErrorType.ERROR_CONNECTION_FAILED";
          break;
          paramcgw = "PstnStateErrorType.ERROR_CANNOT_CALL_YOURSELF";
          break;
          paramcgw = "PstnStateErrorType.ERROR_USER_ALREADY_IN_CALL ";
          break;
          paramcgw = "PstnStateErrorType.ERROR_FAILOVER_FAILED ";
          break;
          paramcgw = "PstnStateErrorType.ERROR_INCOMING_CALL_ANSWERED_ELSEWHERE";
          break;
          paramcgw = "PstnStateErrorType.ERROR_INCOMING_CALL_WENT_TO_VOICEMAIL";
          break;
          paramcgw = "PstnStateErrorType.ERROR_CONNECTION_TIMEOUT";
          break;
          paramcgw = paramcgw.getString(aal.qX);
          break label1142;
          paramcgw = paramcgw.getString(aal.qZ);
          break label1142;
          paramcgw = paramcgw.getString(aal.qY);
          break label1142;
        }
      }
      a.a(a.d(j));
      return;
    }
  }
  
  public void a(hil paramhil)
  {
    paramhil = String.valueOf(a.c);
    ezi.c("Babel_telephony", String.valueOf(paramhil).length() + 53 + "TeleWifiCall.onFirstEndpointWithEarlyMediaConnected, " + paramhil, new Object[0]);
    if (a.c != null)
    {
      a.c.setRingbackRequested(false);
      a.c.x();
    }
  }
  
  public void a(hip paramhip)
  {
    if (a.c != null)
    {
      String str1 = paramhip.v();
      paramhip = paramhip.a();
      String str2 = String.valueOf(aal.s(str1));
      String str3 = String.valueOf(a.c);
      ezi.c("Babel_telephony", String.valueOf(str2).length() + 63 + String.valueOf(paramhip).length() + String.valueOf(str3).length() + "TeleWifiCall.onMucConnected, handoffNumber: " + str2 + ", participantId: " + paramhip + ", " + str3, new Object[0]);
      a.c.a(str1);
      a.c.e(paramhip);
      a.c.c(a.d.e().g());
      a.c.d(a.d.q().g());
      if ((a.c != null) && (TextUtils.isEmpty(a.c.m()))) {
        a.q();
      }
    }
  }
  
  public void a(hkw paramhkw)
  {
    if ((a.g == null) && (a.d != null) && (a.d.q() != null))
    {
      a.g = a.d.q().h();
      a.d.q().k().a(a.c.h().c());
      if (a.b != null) {
        a.d.q().k().a(2, a.b);
      }
    }
    paramhkw = String.valueOf("TeleWifiCall.onCallJoin, ");
    String str = String.valueOf(a.c);
    ezi.c("Babel_telephony", String.valueOf(paramhkw).length() + 0 + String.valueOf(str).length() + paramhkw + str, new Object[0]);
    if ((!a.f) && (a.c != null) && (a.c.getState() == 3)) {
      a.c.setActive();
    }
  }
  
  public void a(hkx paramhkx)
  {
    boolean bool = paramhkx.g();
    ezi.c("Babel_telephony", 51 + "TeleWifiCall.onParticipantAdded, isLocalUser: " + bool, new Object[0]);
    if ((!paramhkx.g()) && (a.c != null)) {
      a.c.x();
    }
  }
  
  public void a(hky paramhky)
  {
    if ((a.d == null) || (a.c == null)) {}
    int i;
    do
    {
      return;
      i = a.d.l().g();
      paramhky = paramhky.b();
    } while ((paramhky == null) || (b == null) || (!a.equals(Integer.valueOf(0))));
    if ((dvp.H.b(i)) || (dvp.I.b(i)))
    {
      eua localeua = a;
      i = eua.a(paramhky, true);
      localeua.c(i);
      eru.a(a.a, a.c, i);
      return;
    }
    eua.a(paramhky, false);
  }
  
  public void a(juk paramjuk)
  {
    if (d.length == 0) {}
    int i;
    int j;
    do
    {
      return;
      paramjuk = d[0];
      i = aal.a(a, 0);
      j = aal.a(k, 0);
      String str3;
      String str4;
      String str5;
      String str6;
      String str7;
      if ((j == 1) && (i == 1))
      {
        str1 = String.valueOf("TeleWifiCall.onMediaStats, Voice receiver stats\nmediaStats bytes_rcvd: ");
        str2 = String.valueOf(i);
        str3 = String.valueOf(j);
        str4 = String.valueOf(b);
        str5 = String.valueOf(e);
        str6 = String.valueOf(w);
        str7 = String.valueOf(y);
        String str8 = String.valueOf(m);
        String str9 = String.valueOf(Z);
        String str10 = String.valueOf(aa);
        ezi.c("Babel_telephony", String.valueOf(str1).length() + 215 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + String.valueOf(str9).length() + String.valueOf(str10).length() + str1 + str2 + "\nmediaStats packets_rcvd:" + str3 + "\nmediaStats fraction_lost:" + str4 + "\nmediaStats jitter_ms:" + str5 + "\nmediaStats jitter_buffer_ms:" + str6 + "\nmediaStats delay_estimate_ms: " + str7 + "\nmediaStats audio_level:" + str8 + "\nmediaStats expand_rate: " + str9 + "\nmediaStats speech_expand_rate: " + str10 + "\n", new Object[0]);
      }
      if ((j == 0) && (i == 1))
      {
        str1 = String.valueOf("TeleWifiCall.onMediaStats, Voice sender stats\nmediaStats bytes_sent: ");
        str2 = String.valueOf(g);
        str3 = String.valueOf(h);
        str4 = String.valueOf(b);
        str5 = String.valueOf(f);
        str6 = String.valueOf(e);
        str7 = String.valueOf(m);
        ezi.c("Babel_telephony", String.valueOf(str1).length() + 122 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + str1 + str2 + "\nmediaStats packets_sent: " + str3 + "\nmediaStats fraction_lost: " + str4 + "\nmediaStats rtt_ms: " + str5 + "\nmediaStats jitter_ms: " + str6 + "\nmediaStats audio_level: " + str7 + "\n", new Object[0]);
      }
    } while ((j != 2) || (i != 2));
    String str1 = String.valueOf("TeleWifiCall.onMediaStats, Voice connection stats\nmediaStats available_receive_bitrate: ");
    String str2 = String.valueOf(A);
    paramjuk = String.valueOf(z);
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 37 + String.valueOf(str2).length() + String.valueOf(paramjuk).length() + str1 + str2 + "\nmediaStats available_send_bitrate: " + paramjuk + "\n", new Object[0]);
  }
  
  public void a(kju paramkju)
  {
    if (a.h != null) {
      n = new String[] { a.h.a() };
    }
  }
  
  public void b()
  {
    String str = String.valueOf(a.c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 40 + "TeleWifiCall.onOutgoingRingtoneStopped, " + str, new Object[0]);
    if (a.c != null)
    {
      a.c.setRingbackRequested(false);
      a.c.x();
    }
  }
  
  public void b(boolean paramBoolean)
  {
    String str = String.valueOf(a.c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 58 + "TeleWifiCall.onOutgoingInviteEnded, terminateCall: " + paramBoolean + ", " + str, new Object[0]);
    if ((!paramBoolean) && (a.c != null) && (a.c.getState() == 3))
    {
      a.c.setActive();
      a.c.x();
    }
  }
  
  public boolean c(int paramInt)
  {
    String str = String.valueOf(a.c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 68 + "TeleWifiCall.maybeDisplayPstnEndpointExitError, error: " + paramInt + ", " + str, new Object[0]);
    a.e = paramInt;
    return true;
  }
  
  public void i()
  {
    String str = String.valueOf(a.c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 40 + "TeleWifiCall.onOutgoingRingtoneStarted, " + str, new Object[0]);
    if (a.c != null)
    {
      a.c.setRingbackRequested(true);
      a.c.x();
    }
  }
}

/* Location:
 * Qualified Name:     eud
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */