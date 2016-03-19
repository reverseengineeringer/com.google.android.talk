import android.net.Uri;
import android.os.Bundle;
import android.telecom.ConnectionRequest;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.text.TextUtils.SimpleStringSplitter;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;
import java.util.Iterator;
import java.util.Locale;

public final class esw
{
  private final TeleConnectionService a;
  private final ConnectionRequest b;
  private final boolean c;
  private est d;
  private String e;
  private int f;
  private boolean g;
  
  public esw(TeleConnectionService paramTeleConnectionService, ConnectionRequest paramConnectionRequest, est paramest, boolean paramBoolean)
  {
    a = paramTeleConnectionService;
    b = paramConnectionRequest;
    d = paramest;
    c = paramBoolean;
  }
  
  private static boolean a(char paramChar)
  {
    return (paramChar >= '2') && (paramChar <= '9');
  }
  
  private static boolean a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2)) {}
    boolean bool;
    label79:
    label91:
    do
    {
      return true;
      if (TextUtils.isEmpty(paramString1)) {
        return false;
      }
      int i;
      if (paramString2.charAt(0) != '!')
      {
        bool = true;
        if (!bool) {
          break label79;
        }
        i = 0;
      }
      for (;;)
      {
        if (i >= paramString2.length()) {
          break label91;
        }
        if ((paramString2.charAt(i) == paramString1.charAt(0)) && (paramString2.charAt(i + 1) == paramString1.charAt(1)))
        {
          return bool;
          bool = false;
          break;
          i = 1;
          continue;
        }
        i += 2;
      }
    } while (!bool);
    return false;
  }
  
  private boolean a(boolean paramBoolean)
  {
    if ((paramBoolean) && (!aal.a(a, "babel_telephony_allow_proxy_number_routing", true)))
    {
      ezi.c("Babel_telephony", "TelePhoneNumber.shouldUseProxyNumber, disabled by gservices.", new Object[0]);
      return false;
    }
    if (aal.a(a, "babel_telephony_force_proxy_number_fetch", false))
    {
      ezi.c("Babel_telephony", "TelePhoneNumber.shouldUseProxyNumber, forcing proxy number fetch.", new Object[0]);
      return true;
    }
    if (f != 1) {
      return false;
    }
    if (c) {
      return false;
    }
    if (d.b(a)) {
      return false;
    }
    if (d.a() == 1) {
      return false;
    }
    if (m())
    {
      ezi.c("Babel_telephony", "TelePhoneNumber.shouldUseProxyNumber, GoogleVoice request", new Object[0]);
      return false;
    }
    if (eut.a(a).f() == -1)
    {
      ezi.c("Babel_telephony", "TelePhoneNumber.shouldUseProxyNumber, no Tycho account.", new Object[0]);
      return false;
    }
    if (ezm.j(c()))
    {
      ezi.c("Babel_telephony", "TelePhoneNumber.shouldUseProxyNumber, emergency number", new Object[0]);
      return false;
    }
    if (PhoneNumberUtils.formatNumberToE164(c(), ezm.j()) == null)
    {
      String str = String.valueOf(aal.s(c()));
      if (str.length() != 0) {}
      for (str = "TelePhoneNumber.shouldUseProxyNumber, can't convert to e164 format, ".concat(str);; str = new String("TelePhoneNumber.shouldUseProxyNumber, can't convert to e164 format, "))
      {
        ezi.c("Babel_telephony", str, new Object[0]);
        return false;
      }
    }
    if ((d.e() == 3) && (d.c() != 3))
    {
      ezi.c("Babel_telephony", "TelePhoneNumber.shouldUseProxyNumber, can't tell if we're international.", new Object[0]);
      return false;
    }
    if (d.a() == 3)
    {
      ezi.c("Babel_telephony", "TelePhoneNumber.shouldUseProxyNumber, can't tell if we're roaming.", new Object[0]);
      return false;
    }
    ezi.c("Babel_telephony", "TelePhoneNumber.shouldUseProxyNumber, true", new Object[0]);
    return true;
  }
  
  private String b(String paramString)
  {
    String str1 = d.b();
    Object localObject1;
    if (!TextUtils.isEmpty(str1))
    {
      localObject1 = String.valueOf("babel_telephony_remapped_phone_numbers");
      str1 = String.valueOf(String.format(Locale.US, "_carrier_%s", new Object[] { str1 }));
      if (str1.length() != 0) {
        localObject1 = ((String)localObject1).concat(str1);
      }
    }
    for (str1 = aal.a(a, (String)localObject1, null);; str1 = null)
    {
      Object localObject2 = aal.a(a, "babel_telephony_remapped_phone_numbers", ers.e);
      if (TextUtils.isEmpty(str1))
      {
        localObject1 = localObject2;
        label88:
        localObject2 = paramString;
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          if (!paramString.startsWith("*")) {
            break label455;
          }
        }
      }
      label168:
      label210:
      label232:
      label259:
      label434:
      label437:
      label439:
      label442:
      label444:
      label449:
      label453:
      label455:
      for (str1 = paramString.substring(1);; str1 = paramString)
      {
        String str2 = d.d();
        localObject2 = new TextUtils.SimpleStringSplitter(',');
        TextUtils.SimpleStringSplitter localSimpleStringSplitter1 = new TextUtils.SimpleStringSplitter('=');
        TextUtils.SimpleStringSplitter localSimpleStringSplitter2 = new TextUtils.SimpleStringSplitter('/');
        ((TextUtils.SimpleStringSplitter)localObject2).setString((String)localObject1);
        Iterator localIterator = ((TextUtils.SimpleStringSplitter)localObject2).iterator();
        for (;;)
        {
          localObject2 = paramString;
          if (localIterator.hasNext())
          {
            localSimpleStringSplitter1.setString((String)localIterator.next());
            if (!localSimpleStringSplitter1.hasNext()) {
              break label434;
            }
            localObject1 = localSimpleStringSplitter1.next();
            if (!str1.equals(localObject1)) {
              break label437;
            }
            if (!localSimpleStringSplitter1.hasNext()) {
              break label439;
            }
            localObject1 = localSimpleStringSplitter1.next();
            if (TextUtils.isEmpty((CharSequence)localObject1)) {
              break label442;
            }
            localSimpleStringSplitter2.setString((String)localObject1);
            if (!localSimpleStringSplitter2.hasNext()) {
              break label444;
            }
            localObject1 = localSimpleStringSplitter2.next();
            if (!localSimpleStringSplitter2.hasNext()) {
              break label449;
            }
          }
          for (localObject2 = localSimpleStringSplitter2.next();; localObject2 = null)
          {
            if (!a(str2, (String)localObject2)) {
              break label453;
            }
            paramString = String.valueOf(aal.s(paramString));
            str1 = String.valueOf(aal.s((String)localObject1));
            ezi.c("Babel_telephony", String.valueOf(paramString).length() + 54 + String.valueOf(str1).length() + "TelePhoneNumber.maybeRemapPhoneNumber, remapped: " + paramString + " to: " + str1, new Object[0]);
            g = true;
            localObject2 = localObject1;
            return (String)localObject2;
            localObject1 = new String((String)localObject1);
            break;
            localObject1 = str1;
            if (TextUtils.isEmpty((CharSequence)localObject2)) {
              break label88;
            }
            localObject1 = String.valueOf(str1).length() + 1 + String.valueOf(localObject2).length() + str1 + ',' + (String)localObject2;
            break label88;
            localObject1 = null;
            break label210;
            break label168;
            localObject1 = null;
            break label232;
            break label168;
            localObject1 = null;
            break label259;
          }
        }
      }
    }
  }
  
  private static boolean c(String paramString)
  {
    if (paramString != null)
    {
      int i;
      if ((paramString.length() == 10) && (a(paramString.charAt(0))) && (a(paramString.charAt(3)))) {
        i = 1;
      }
      while (i < 10)
      {
        if (!PhoneNumberUtils.isISODigit(paramString.charAt(i))) {
          return false;
        }
        i += 1;
      }
      return true;
    }
    ezi.d("Babel_telephony", "TeleUtils.isNorthAmericanNumberFormat, got null dialStr", new Object[0]);
    return false;
  }
  
  int a()
  {
    return f;
  }
  
  void a(int paramInt)
  {
    f = paramInt;
  }
  
  void a(est paramest)
  {
    d = paramest;
  }
  
  void a(String paramString)
  {
    e = paramString;
  }
  
  boolean a(Uri paramUri)
  {
    if ((e == null) && (paramUri == null)) {
      return true;
    }
    if ((!TextUtils.isEmpty(e)) && (paramUri != null) && ("tel".equals(paramUri.getScheme()))) {
      return aal.c(e, paramUri.getSchemeSpecificPart());
    }
    return false;
  }
  
  est b()
  {
    return d;
  }
  
  public String c()
  {
    boolean bool;
    if (f != 0)
    {
      bool = true;
      hbs.a("Expected condition to be true", bool);
      if ((k()) || (f != 2) || (!m())) {
        break label96;
      }
    }
    label96:
    for (Uri localUri1 = (Uri)b.getExtras().getParcelable("android.telecom.extra.GATEWAY_ORIGINAL_ADDRESS");; localUri1 = null)
    {
      Uri localUri2 = localUri1;
      if (localUri1 == null) {
        localUri2 = b.getAddress();
      }
      if ((localUri2 != null) && ("tel".equals(localUri2.getScheme())))
      {
        return localUri2.getSchemeSpecificPart();
        bool = false;
        break;
      }
      return null;
    }
  }
  
  public String d()
  {
    String str = c();
    if (str != null) {
      return ezm.g(str);
    }
    return null;
  }
  
  String e()
  {
    int k = 1;
    Object localObject1 = c();
    if (f == 2)
    {
      localObject2 = b.getAddress();
      if ((localObject2 != null) && ("voicemail".equals(((Uri)localObject2).getScheme())))
      {
        localObject2 = ((TelephonyManager)a.getSystemService("phone")).getVoiceMailNumber();
        if (!TextUtils.isEmpty((CharSequence)localObject2))
        {
          localObject1 = String.valueOf(aal.s((String)localObject2));
          if (((String)localObject1).length() != 0)
          {
            localObject1 = "TelePhoneNumber.maybeFixVoicemailUri, changing voicemail URI to number: ".concat((String)localObject1);
            ezi.c("Babel_telephony", (String)localObject1, new Object[0]);
          }
        }
      }
    }
    for (;;)
    {
      if (localObject2 != null) {
        break label138;
      }
      return null;
      localObject1 = new String("TelePhoneNumber.maybeFixVoicemailUri, changing voicemail URI to number: ");
      break;
      localObject2 = localObject1;
    }
    label138:
    if (e != null) {
      localObject2 = e;
    }
    localObject1 = localObject2;
    if (f == 2) {
      localObject1 = PhoneNumberUtils.extractNetworkPortion((String)localObject2);
    }
    Object localObject2 = localObject1;
    Object localObject3;
    if (!k())
    {
      localObject3 = localObject1;
      if (f == 2)
      {
        localObject3 = localObject1;
        if (((String)localObject1).length() == 7)
        {
          localObject2 = ezm.g();
          if ((localObject2 == null) || (((String)localObject2).length() < 10)) {
            break label774;
          }
          if (((String)localObject2).charAt(0) != '+') {
            break label873;
          }
        }
      }
    }
    label633:
    label676:
    label769:
    label774:
    label780:
    label794:
    label809:
    label873:
    for (int i = 1;; i = 0)
    {
      int j = i;
      if (((String)localObject2).charAt(i) == '1') {
        j = i + 1;
      }
      if (j != 0) {
        localObject2 = ((String)localObject2).substring(j);
      }
      for (;;)
      {
        if (c((String)localObject2))
        {
          localObject3 = ezm.i();
          i = k;
          if (!"US".equals(localObject3))
          {
            i = k;
            if (!"CA".equals(localObject3))
            {
              i = k;
              if (!"DO".equals(localObject3))
              {
                i = k;
                if (!"AG".equals(localObject3))
                {
                  i = k;
                  if (!"AI".equals(localObject3))
                  {
                    i = k;
                    if (!"AS".equals(localObject3))
                    {
                      i = k;
                      if (!"BB".equals(localObject3))
                      {
                        i = k;
                        if (!"BM".equals(localObject3))
                        {
                          i = k;
                          if (!"BS".equals(localObject3))
                          {
                            i = k;
                            if (!"DM".equals(localObject3))
                            {
                              i = k;
                              if (!"DM".equals(localObject3))
                              {
                                i = k;
                                if (!"GD".equals(localObject3))
                                {
                                  i = k;
                                  if (!"GU".equals(localObject3))
                                  {
                                    i = k;
                                    if (!"KN".equals(localObject3))
                                    {
                                      i = k;
                                      if (!"KY".equals(localObject3))
                                      {
                                        i = k;
                                        if (!"LC".equals(localObject3))
                                        {
                                          i = k;
                                          if (!"MP".equals(localObject3))
                                          {
                                            i = k;
                                            if (!"MS".equals(localObject3))
                                            {
                                              i = k;
                                              if (!"PR".equals(localObject3))
                                              {
                                                i = k;
                                                if (!"SX".equals(localObject3))
                                                {
                                                  i = k;
                                                  if (!"TC".equals(localObject3))
                                                  {
                                                    i = k;
                                                    if (!"TT".equals(localObject3))
                                                    {
                                                      i = k;
                                                      if (!"US".equals(localObject3))
                                                      {
                                                        i = k;
                                                        if (!"VC".equals(localObject3))
                                                        {
                                                          i = k;
                                                          if (!"VG".equals(localObject3))
                                                          {
                                                            if (!"VI".equals(localObject3)) {
                                                              break label769;
                                                            }
                                                            i = k;
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          if (i != 0)
          {
            localObject2 = ((String)localObject2).substring(0, 3);
            localObject3 = localObject1;
            if (!TextUtils.isEmpty((CharSequence)localObject2))
            {
              localObject2 = String.valueOf(localObject2);
              localObject3 = String.valueOf(localObject1);
              if (((String)localObject3).length() == 0) {
                break label780;
              }
              localObject2 = ((String)localObject2).concat((String)localObject3);
              if (ezm.g((String)localObject2) != null) {
                break label809;
              }
              localObject2 = String.valueOf(aal.s((String)localObject2));
              if (((String)localObject2).length() == 0) {
                break label794;
              }
            }
          }
        }
        for (localObject2 = "TelePhoneNumber.maybeAddAreaCodeToPhoneNumber, invalid number ".concat((String)localObject2);; localObject2 = new String("TelePhoneNumber.maybeAddAreaCodeToPhoneNumber, invalid number "))
        {
          ezi.c("Babel_telephony", (String)localObject2, new Object[0]);
          localObject3 = localObject1;
          localObject2 = b((String)localObject3);
          localObject1 = localObject2;
          if (q())
          {
            localObject3 = ezm.d((String)localObject2);
            localObject1 = localObject2;
            if (localObject3 != null) {
              localObject1 = localObject3;
            }
          }
          return (String)localObject1;
          i = 0;
          break;
          localObject2 = null;
          break label633;
          localObject2 = new String((String)localObject2);
          break label676;
        }
        localObject1 = String.valueOf(aal.s((String)localObject2));
        if (((String)localObject1).length() != 0) {}
        for (localObject1 = "TelePhoneNumber.maybeAddAreaCodeToPhoneNumber, added area code to: ".concat((String)localObject1);; localObject1 = new String("TelePhoneNumber.maybeAddAreaCodeToPhoneNumber, added area code to: "))
        {
          ezi.c("Babel_telephony", (String)localObject1, new Object[0]);
          localObject3 = localObject2;
          break;
        }
      }
    }
  }
  
  String f()
  {
    String str = e();
    if (str != null) {
      return ezm.g(str);
    }
    return null;
  }
  
  String g()
  {
    return PhoneNumberUtils.extractPostDialPortion(c());
  }
  
  ConnectionRequest h()
  {
    return b;
  }
  
  ConnectionRequest i()
  {
    Object localObject = e();
    if ((localObject != null) && (!((String)localObject).equals(c())))
    {
      localObject = Uri.fromParts("tel", (String)localObject, null);
      return new ConnectionRequest(b.getAccountHandle(), (Uri)localObject, b.getExtras());
    }
    return b;
  }
  
  TeleConnectionService j()
  {
    return a;
  }
  
  boolean k()
  {
    return c;
  }
  
  boolean l()
  {
    String str = e();
    return (str != null) && (ezm.g(str) != null);
  }
  
  boolean m()
  {
    Object localObject = b;
    if (localObject == null) {
      return false;
    }
    if (((ConnectionRequest)localObject).getExtras() == null)
    {
      ezi.c("Babel_telephony", "TeleUtils.isGoogleVoiceRequest, no extras", new Object[0]);
      return false;
    }
    String str = ((ConnectionRequest)localObject).getExtras().getString("android.telecom.extra.GATEWAY_PROVIDER_PACKAGE");
    localObject = String.valueOf(str);
    if (((String)localObject).length() != 0) {}
    for (localObject = "TeleUtils.isGoogleVoiceRequest, gatewayProviderPackage: ".concat((String)localObject);; localObject = new String("TeleUtils.isGoogleVoiceRequest, gatewayProviderPackage: "))
    {
      ezi.c("Babel_telephony", (String)localObject, new Object[0]);
      return TextUtils.equals("com.google.android.apps.googlevoice", str);
    }
  }
  
  boolean n()
  {
    Uri localUri = b.getAddress();
    if ((localUri != null) && ("voicemail".equals(localUri.getScheme()))) {
      return true;
    }
    return aal.c(((TelephonyManager)a.getSystemService("phone")).getVoiceMailNumber(), e());
  }
  
  boolean o()
  {
    return g;
  }
  
  boolean p()
  {
    return a(true);
  }
  
  boolean q()
  {
    if (c)
    {
      ezi.c("Babel_telephony", "TelePhoneNumber.shouldAnonymizeCall, do not anonymize incoming call", new Object[0]);
      return false;
    }
    if (!aal.a(a, "babel_telephony_allow_fallback_to_anonymous_calling", true))
    {
      ezi.c("Babel_telephony", "TelePhoneNumber.shouldAnonymizeCall, disabled by gservices", new Object[0]);
      return false;
    }
    String str2 = d.b();
    if (!TextUtils.isEmpty(str2))
    {
      String str1 = String.valueOf("babel_telephony_allow_fallback_to_anonymous_calling");
      String str3 = String.valueOf(String.format(Locale.US, "_carrier_%s", new Object[] { str2 }));
      if (str3.length() != 0)
      {
        str1 = str1.concat(str3);
        if (aal.a(a, str1, true)) {
          break label174;
        }
        str1 = String.valueOf(str2);
        if (str1.length() == 0) {
          break label160;
        }
      }
      label160:
      for (str1 = "TelePhoneNumber.shouldAnonymizeCall, disabled by gservices for carrier: ".concat(str1);; str1 = new String("TelePhoneNumber.shouldAnonymizeCall, disabled by gservices for carrier: "))
      {
        ezi.c("Babel_telephony", str1, new Object[0]);
        return false;
        str1 = new String(str1);
        break;
      }
    }
    label174:
    if (!a(false))
    {
      ezi.c("Babel_telephony", "TelePhoneNumber.shouldAnonymizeCall, doesn't need proxy number", new Object[0]);
      return false;
    }
    if (e != null)
    {
      ezi.c("Babel_telephony", "TelePhoneNumber.shouldAnonymizeCall, has proxy number", new Object[0]);
      return false;
    }
    if (d.c() == 2)
    {
      ezi.c("Babel_telephony", "TelePhoneNumber.shouldAnonymizeCall, on light profile", new Object[0]);
      return false;
    }
    ezi.c("Babel_telephony", "TelePhoneNumber.shouldAnonymizeCall, returning true", new Object[0]);
    return true;
  }
}

/* Location:
 * Qualified Name:     esw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */