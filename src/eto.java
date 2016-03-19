import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.telecom.ConnectionRequest;
import android.telecom.DisconnectCause;
import android.telecom.RemoteConnection;
import android.text.TextUtils;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;
import java.util.Collections;
import java.util.List;

public final class eto
{
  esv a;
  
  eto(esv paramesv)
  {
    a = paramesv;
  }
  
  public void a()
  {
    esv localesv;
    if (a != null)
    {
      localesv = a;
      if (aal.a(a, "babel_remote_connection_allowed", true)) {
        break label62;
      }
      ezi.c("Babel_telephony", "TeleOutgoingCallRequest.startCellularCall, remote connection disallowed by gservices", new Object[0]);
      b.setDisconnected(new DisconnectCause(10));
    }
    for (;;)
    {
      localesv.c();
      a = null;
      return;
      label62:
      Object localObject = b.d();
      localObject = ((TeleConnectionService)localObject).createRemoteOutgoingConnection(aal.m((Context)localObject), b.e());
      if (localObject == null)
      {
        ezi.e("Babel_telephony", "TeleOutgoingCallRequest.startCellularCall, unable to create remote connection", new Object[0]);
        b.setDisconnected(new DisconnectCause(10));
      }
      else
      {
        ezi.c("Babel_telephony", "TeleOutgoingCallRequest.startCellularCall, starting remote cellular call", new Object[0]);
        b.a(new etc(a, (RemoteConnection)localObject, null, null, b.i(), false));
      }
    }
  }
  
  public void a(bfd parambfd, String paramString)
  {
    esv localesv;
    Object localObject1;
    cyx localcyx;
    List localList;
    cfc localcfc;
    if (a != null)
    {
      localesv = a;
      b.b(parambfd.a());
      b.a(parambfd.g());
      localObject3 = b.d();
      localObject2 = b.f().f();
      localObject1 = localObject2;
      if (ezm.c(b.f().e())) {
        localObject1 = ezm.d((String)localObject2);
      }
      localObject2 = String.valueOf(aal.s((String)localObject1));
      if (((String)localObject2).length() == 0) {
        break label328;
      }
      localObject2 = "TeleOutgoingCallRequest.startWifiCall, outgoing phone number: ".concat((String)localObject2);
      ezi.c("Babel_telephony", (String)localObject2, new Object[0]);
      localcyx = aal.a((String)localObject1, aal.p(), false, null, (String)localObject1, 0);
      localList = Collections.singletonList(localcyx);
      localcfc = cfc.a();
      if ((!localcfc.s()) || (!eua.a((TeleConnectionService)localObject3))) {
        break label342;
      }
      eua.a((TeleConnectionService)localObject3, b);
      parambfd = String.valueOf(b);
      ezi.c("Babel_telephony", String.valueOf(parambfd).length() + 67 + "TeleOutgoingCallRequest.startWifiCall, inviting to existing hangout" + parambfd, new Object[0]);
      localcfc.b(localList);
      eug.a((TeleConnectionService)localObject3, b);
    }
    for (;;)
    {
      parambfd = new eua(a, null, null, false);
      b.a(parambfd);
      parambfd.a(localcfc.r());
      b.setDialing();
      if (b.f().n()) {
        b.setAddress(b.f().i().getAddress(), 1);
      }
      localesv.c();
      a = null;
      return;
      label328:
      localObject2 = new String("TeleOutgoingCallRequest.startWifiCall, outgoing phone number: ");
      break;
      label342:
      if (!cfc.a().m()) {
        break label370;
      }
      ezi.c("Babel_telephony", "TeleOutgoingCallRequest.startWifiCall, hangout in progress, cancelling", new Object[0]);
      localesv.b();
    }
    label370:
    Object localObject2 = String.valueOf(b);
    ezi.c("Babel_telephony", String.valueOf(localObject2).length() + 61 + "TeleOutgoingCallRequest.startWifiCall, creating a new hangout" + (String)localObject2, new Object[0]);
    Object localObject3 = new lbz();
    localObject2 = aal.h(b.d());
    if (localObject2 != null) {
      d = ((lca)localObject2);
    }
    if (ezm.j((String)localObject1))
    {
      localObject2 = (LocationManager)a.getSystemService("location");
      if (localObject2 == null) {
        break label759;
      }
      Object localObject4 = new Criteria();
      ((Criteria)localObject4).setAccuracy(1);
      localObject4 = ((LocationManager)localObject2).getBestProvider((Criteria)localObject4, true);
      if (TextUtils.isEmpty((CharSequence)localObject4)) {
        break label759;
      }
      localObject4 = ((LocationManager)localObject2).getLastKnownLocation((String)localObject4);
      if (localObject4 == null) {
        break label759;
      }
      localObject2 = new lcb();
      a = Integer.valueOf((int)Math.round(((Location)localObject4).getLatitude() * 1000000.0D));
      b = Integer.valueOf((int)Math.round(((Location)localObject4).getLongitude() * 1000000.0D));
      c = Double.valueOf(((Location)localObject4).getAccuracy());
    }
    for (;;)
    {
      if (localObject2 != null) {
        b = ((lcb)localObject2);
      }
      if (b.v())
      {
        ezi.c("Babel_telephony", "TeleOutgoingCallRequest.startWifiCall, setting timestamp for emergency LTE call", new Object[0]);
        eut.a(a).b(System.currentTimeMillis());
      }
      localcfc.a(new cgu(parambfd.a(), 1).a(2).i((String)localObject1).e(paramString).a(), false, localList, false, localcyx, 85, 1, false, c, (lbz)localObject3, b.i());
      localcfc.u();
      if (b.s() != null) {
        localcfc.r().f(b.s().a());
      }
      if (b.u()) {
        break;
      }
      localcfc.r().f("tycho_network_auto");
      break;
      label759:
      localObject2 = null;
    }
  }
  
  public void b()
  {
    if (a != null)
    {
      a.b();
      a = null;
    }
  }
  
  void c()
  {
    a = null;
  }
}

/* Location:
 * Qualified Name:     eto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */