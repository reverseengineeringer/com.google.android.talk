import android.content.Context;
import android.os.SystemClock;
import com.google.api.client.http.AbstractInputStreamContent;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpResponseException;
import java.io.EOFException;
import java.io.IOException;

public abstract class dpf
  extends doo
{
  private static final long serialVersionUID = 1L;
  
  private dqf a(Context paramContext, int paramInt1, cvn paramcvn, int paramInt2)
  {
    Object localObject;
    if (ezi.a("Babel_RequestWriter", 3))
    {
      localObject = String.valueOf(getClass().getSimpleName());
      ezi.b("Babel_RequestWriter", String.valueOf(localObject).length() + 41 + "sendRequestProto " + (String)localObject + " for account " + paramInt1, new Object[0]);
    }
    paramContext = b(paramContext);
    k();
    paramContext.put("alt", "proto");
    if (doo.e)
    {
      localObject = String.valueOf(paramContext.toString());
      if (((String)localObject).length() == 0) {
        break label420;
      }
      "sendRequestProto to ".concat((String)localObject);
    }
    for (;;)
    {
      long l;
      String str;
      try
      {
        localObject = dth.a();
        if (paramcvn == null) {
          ezi.c("Babel_RequestWriter", "no auth data.", new Object[0]);
        }
        paramcvn = ((dth)localObject).a(paramContext, this, paramInt1, paramcvn, h(), paramInt2);
        if (paramcvn == null) {
          break;
        }
        paramInt1 = c.b;
        l = e;
        if (paramInt1 == 1) {
          break label663;
        }
        localObject = String.valueOf(this);
        str = c.a;
        if (c == null) {
          break label657;
        }
        paramContext = c.c;
        ezi.e("Babel", String.valueOf(localObject).length() + 67 + String.valueOf(str).length() + String.valueOf(paramContext).length() + "ServerRequest sent " + (String)localObject + " got responseStatus " + paramInt1 + " desc " + str + " debug_url " + paramContext, new Object[0]);
        switch (paramInt1)
        {
        default: 
          if (c == null) {
            break label866;
          }
          paramContext = c.c;
          ezi.e("Babel_RequestWriter", String.valueOf(paramContext).length() + 71 + "got unknown ResponseStatus in response header " + paramInt1 + "; debugUrl is " + paramContext, new Object[0]);
          throw new dvn(108, l, "Resonse error: ERROR_UNEXPECTED");
        }
      }
      catch (HttpResponseException paramcvn)
      {
        paramContext = String.valueOf(paramContext);
        localObject = String.valueOf(paramcvn.getMessage());
        ezi.d("Babel_RequestWriter", String.valueOf(paramContext).length() + 32 + String.valueOf(localObject).length() + "Error making http request: url " + paramContext + " " + (String)localObject, new Object[0]);
        if ((paramcvn.getStatusCode() < 400) || (paramcvn.getStatusCode() >= 500)) {
          continue;
        }
        throw new dvn(104, paramcvn);
        throw new dvn(105, paramcvn);
      }
      catch (EOFException paramcvn)
      {
        paramContext = String.valueOf(paramContext);
        ezi.d("Babel_RequestWriter", String.valueOf(paramContext).length() + 50 + "EOFException making http request (retryable): url " + paramContext, new Object[0]);
        throw new dvn(103, paramcvn);
      }
      catch (dvn paramContext)
      {
        throw paramContext;
      }
      catch (IOException paramcvn)
      {
        label420:
        paramContext = String.valueOf(paramContext);
        ezi.c("Babel_RequestWriter", String.valueOf(paramContext).length() + 31 + "Error making http request: url " + paramContext, paramcvn);
        throw new dvn(102, paramcvn);
      }
      new String("sendRequestProto to ");
      continue;
      label657:
      paramContext = "(null)";
      continue;
      label663:
      if (doo.e)
      {
        localObject = String.valueOf(this);
        str = c.a;
        if (c != null) {}
        for (paramContext = c.c;; paramContext = "(null)")
        {
          new StringBuilder(String.valueOf(localObject).length() + 67 + String.valueOf(str).length() + String.valueOf(paramContext).length()).append("ServerRequest sent ").append((String)localObject).append(" got responseStatus ").append(paramInt1).append(" desc ").append(str).append(" debug_url ").append(paramContext);
          break;
        }
        throw new dvn(107, l, "Response error: ERROR_BUSY");
        throw new dvn(108, l, "Response error: ERROR_UNEXPECTED");
        throw new dvn(111, l, "Response error: ERROR_INVALID_REQUEST");
        throw new dvn(109, l, "Response error: ERROR_RETRY_LIMIT");
        throw new dvn(112, l, "Response error: ERROR_QUOTA_EXCEEDED");
        throw new dvn(113, l, "Response error: ERROR_RESPONSE_NOT_FOUND");
        label866:
        paramContext = "(null)";
      }
    }
    return paramcvn;
    if (ezi.a("Babel_RequestWriter", 3)) {
      ezi.b("Babel", "received null response", new Object[0]);
    }
    return null;
  }
  
  public dqf a(Context paramContext, cwk paramcwk)
  {
    Object localObject1;
    if (doo.e)
    {
      localObject1 = String.valueOf(paramcwk.toString());
      if (((String)localObject1).length() == 0) {
        break label100;
      }
      "[SEND] ".concat((String)localObject1);
    }
    int j;
    for (;;)
    {
      j = c;
      if (!((eot)ilh.a(paramContext, eot.class)).a(j)) {
        break;
      }
      ezi.e("Babel_RequestWriter", 49 + "[SEND] skipping for sms only account: " + j, new Object[0]);
      throw new dvn(138, "Cannot send request for SMS only account");
      label100:
      new String("[SEND] ");
    }
    cvn localcvn = cvm.a(doo.f);
    boolean bool = j();
    int i = 0;
    if (i < 2)
    {
      try
      {
        localObject1 = a(g, d);
        if (localObject1 == null) {
          break label240;
        }
        throw ((Throwable)localObject1);
      }
      catch (dvn localdvn1)
      {
        if (!a(paramContext, i, localdvn1)) {
          break label321;
        }
      }
      if (!a(localdvn1)) {
        break label326;
      }
      bool = true;
    }
    label240:
    label321:
    label326:
    for (;;)
    {
      if ((this instanceof dpo))
      {
        localObject2 = (dpo)this;
        aen.a(j, SystemClock.elapsedRealtime(), 10, new csn().a(301).b(j).a(c));
      }
      i += 1;
      break;
      if (bool)
      {
        dth.a();
        localcvn.d(dvd.e(j).a());
      }
      if (a(paramContext, i)) {}
      for (Object localObject2 = null;; localObject2 = localcvn)
      {
        localObject2 = a(paramContext, j, (cvn)localObject2, e);
        dvn localdvn2 = b(g, d);
        if (localdvn2 == null) {
          break;
        }
        throw localdvn2;
      }
      return (dqf)localObject2;
      throw ((Throwable)localObject2);
      return null;
    }
  }
  
  public boolean a(Context paramContext, int paramInt)
  {
    return false;
  }
  
  public int l()
  {
    return 3;
  }
  
  public AbstractInputStreamContent m()
  {
    return null;
  }
  
  public int n()
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     dpf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */