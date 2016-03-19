import com.google.api.client.http.GenericUrl;
import com.google.api.client.json.JsonFactory;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.security.Signature;
import java.util.Collection;
import java.util.Collections;

public final class iqi
  extends ipw
{
  private static iqh g = new iqh();
  private String h;
  private Collection<String> i;
  private PrivateKey j;
  private String k;
  private String l;
  
  public iqi()
  {
    this(new iqj());
  }
  
  private iqi(iqj paramiqj)
  {
    super(paramiqj);
    if (k == null)
    {
      if ((i == null) && (j == null) && (m == null)) {}
      for (boolean bool = true;; bool = false)
      {
        fii.a(bool);
        return;
      }
    }
    h = ((String)fii.a(i));
    i = Collections.unmodifiableCollection(j);
    j = k;
    k = l;
    l = m;
  }
  
  protected iqe a()
  {
    if (j == null) {
      return super.a();
    }
    Object localObject3 = new iqs();
    ((iqs)localObject3).b("RS256");
    ((iqs)localObject3).a("JWT");
    ((iqs)localObject3).c(k);
    Object localObject2 = new iqv();
    long l1 = b.a();
    ((iqv)localObject2).a(h);
    ((iqv)localObject2).a(f);
    ((iqv)localObject2).b(Long.valueOf(l1 / 1000L));
    ((iqv)localObject2).a(Long.valueOf(l1 / 1000L + 3600L));
    ((iqv)localObject2).b(l);
    Object localObject1 = new isc(knk.a(' '));
    Object localObject4 = i;
    ((iqv)localObject2).put("scope", a.a((Iterable)localObject4));
    try
    {
      localObject1 = j;
      localObject4 = e;
      localObject3 = String.valueOf(iqx.b(((JsonFactory)localObject4).toByteArray(localObject3)));
      localObject2 = String.valueOf(iqx.b(((JsonFactory)localObject4).toByteArray(localObject2)));
      localObject2 = String.valueOf(localObject3).length() + 1 + String.valueOf(localObject2).length() + (String)localObject3 + "." + (String)localObject2;
      localObject3 = isr.a((String)localObject2);
      localObject4 = Signature.getInstance("SHA256withRSA");
      ((Signature)localObject4).initSign((PrivateKey)localObject1);
      ((Signature)localObject4).update((byte[])localObject3);
      localObject1 = String.valueOf(iqx.b(((Signature)localObject4).sign()));
      localObject1 = String.valueOf(localObject2).length() + 1 + String.valueOf(localObject1).length() + (String)localObject2 + "." + (String)localObject1;
      localObject2 = new iqb(c, e, new GenericUrl(f), "urn:ietf:params:oauth:grant-type:jwt-bearer");
      ((iqb)localObject2).put("assertion", localObject1);
      localObject1 = ((iqb)localObject2).a();
      return (iqe)localObject1;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      localObject2 = new IOException();
      ((IOException)localObject2).initCause(localGeneralSecurityException);
      throw ((Throwable)localObject2);
    }
  }
  
  public iqi c(String paramString)
  {
    return (iqi)super.a(paramString);
  }
}

/* Location:
 * Qualified Name:     iqi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */