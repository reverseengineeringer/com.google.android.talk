import android.accounts.AuthenticatorException;
import android.os.Bundle;
import java.io.EOFException;
import java.nio.ByteBuffer;

public abstract class dom<RQ extends lyi, RS extends lyi>
  extends iii<RQ, RS>
{
  private static final boolean a;
  public static final String c;
  private dqf b;
  public final ihp d;
  public final eff e;
  
  static
  {
    Object localObject = ezi.l;
    a = false;
    localObject = "oauth2:https://www.googleapis.com/auth/chat https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/plus.peopleapi.readwrite https://www.googleapis.com/auth/hangouts https://www.googleapis.com/auth/identity.plus.page.impersonation  https://www.googleapis.com/auth/chat.native";
    try
    {
      Class.forName("com.google.android.apps.hangouts.defaultbuild.EsProvider");
      c = (String)localObject;
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        String str = "oauth2:https://www.googleapis.com/auth/chat https://www.googleapis.com/auth/plus.me https://www.googleapis.com/auth/plus.peopleapi.readwrite https://www.googleapis.com/auth/hangouts https://www.googleapis.com/auth/identity.plus.page.impersonation ";
      }
    }
  }
  
  public dom(ihw paramihw, eff parameff, String paramString, efh paramefh, RQ paramRQ, RS paramRS)
  {
    super(aal.oJ, paramihw, paramString, paramRQ, paramRS, paramefh.toString(), c);
    e = parameff;
    d = h.f();
  }
  
  public static void a(String paramString)
  {
    if (paramString == null)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {}
      for (paramString = "cannot use null conversation id:".concat(paramString);; paramString = new String("cannot use null conversation id:")) {
        throw new IllegalArgumentException(paramString);
      }
    }
    if ((paramString != null) && (bfz.a(paramString)))
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {}
      for (paramString = "cannot use client generated conversation id:".concat(paramString);; paramString = new String("cannot use client generated conversation id:")) {
        throw new IllegalArgumentException(paramString);
      }
    }
  }
  
  public abstract dqf a(RS paramRS);
  
  public final kdo a(dmm paramdmm)
  {
    kdo localkdo2 = don.a(paramdmm.a(), paramdmm.b(), paramdmm.c(), paramdmm.d(), (fak)ilh.a(g, fak.class));
    kdo localkdo1 = localkdo2;
    if (paramdmm.f() == true) {
      localkdo1 = don.a(localkdo2, paramdmm.e());
    }
    return localkdo1;
  }
  
  public void a()
  {
    boolean bool;
    if (!"SMS".equals(h.b()))
    {
      bool = true;
      str = String.valueOf(j());
      if (str.length() == 0) {
        break label50;
      }
    }
    label50:
    for (String str = "Cannot send request for SMS only account: ".concat(str);; str = new String("Cannot send request for SMS only account: "))
    {
      aen.b(bool, str);
      return;
      bool = false;
      break;
    }
  }
  
  void a(Exception paramException)
  {
    if ((paramException instanceof dvn)) {
      throw ((dvn)paramException);
    }
    if ((paramException instanceof EOFException)) {
      throw new dvn(103, paramException);
    }
    if (c(paramException)) {
      throw new dvn(104, paramException);
    }
    Object localObject = paramException;
    if (localObject != null) {
      if (!(localObject instanceof AuthenticatorException)) {}
    }
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        break label92;
      }
      throw new dvn(100, paramException);
      localObject = ((Throwable)localObject).getCause();
      break;
    }
    label92:
    throw new dvn(102, paramException);
  }
  
  public final void a(ByteBuffer paramByteBuffer, String paramString)
  {
    super.a(paramByteBuffer, paramString);
    throw dvn.a(k, m, l);
  }
  
  public void b(RQ paramRQ)
  {
    if (a)
    {
      paramRQ = String.valueOf(paramRQ);
      new StringBuilder(String.valueOf(paramRQ).length() + 17).append("Sending request: ").append(paramRQ);
    }
  }
  
  protected final void c(RS paramRS)
  {
    dqf localdqf = a(paramRS);
    if ((localdqf == null) || (localdqf.a() == null)) {
      throw new dvn(106, "Response error: NULL_RESPONSE/RESPONSE_INVALID");
    }
    int i = ab;
    String str1;
    if (i != 1)
    {
      paramRS = String.valueOf(e);
      str1 = aa;
      String str2 = ac;
      ezi.e("Babel_ServerOperation", String.valueOf(paramRS).length() + 61 + String.valueOf(str1).length() + String.valueOf(str2).length() + "Request sent " + paramRS + " got responseStatus " + i + " desc " + str1 + " debug_url " + str2, new Object[0]);
    }
    switch (i)
    {
    default: 
      if (c == null) {
        break;
      }
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 7: 
    case 8: 
      for (paramRS = c.c;; paramRS = "(null)")
      {
        ezi.e("Babel_ServerOperation", String.valueOf(paramRS).length() + 71 + "got unknown ResponseStatus in response header " + i + "; debugUrl is " + paramRS, new Object[0]);
        throw new dvn(108, "Resonse error: ERROR_UNEXPECTED");
        if (!a) {
          break;
        }
        str1 = String.valueOf(e);
        paramRS = String.valueOf(paramRS);
        new StringBuilder(String.valueOf(str1).length() + 41 + String.valueOf(paramRS).length()).append("client request sent ").append(str1).append(" got client response ").append(paramRS);
        break;
        throw new dvn(107, "Response error: ERROR_BUSY");
        throw new dvn(108, "Response error: ERROR_UNEXPECTED");
        throw new dvn(111, "Response error: ERROR_INVALID_REQUEST");
        throw new dvn(109, "Response error: ERROR_RETRY_LIMIT");
        throw new dvn(112, "Response error: ERROR_QUOTA_EXCEEDED");
        throw new dvn(113, "Response error: ERROR_RESPONSE_NOT_FOUND");
      }
    }
    localdqf.a(e);
    if (d != null)
    {
      localdqf.a(d.f() * 1000L);
      localdqf.b(d.h() * 1000L);
    }
    b = localdqf;
  }
  
  public Bundle d()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("alt", "proto");
    return localBundle;
  }
  
  public dqf e()
  {
    return b;
  }
  
  public void f()
  {
    g();
    if (m()) {
      a(m);
    }
  }
}

/* Location:
 * Qualified Name:     dom
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */