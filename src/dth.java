import android.content.Context;
import com.google.android.apps.hangouts.requestwriter.RequestWriter;
import com.google.api.client.http.AbstractInputStreamContent;
import com.google.api.client.http.GenericUrl;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.HttpRequest;
import com.google.api.client.http.HttpRequestFactory;
import com.google.api.client.http.HttpRequestInitializer;
import com.google.api.client.http.HttpResponse;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.LongBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import org.apache.http.client.HttpResponseException;

public final class dth
{
  public static dth a;
  static String b = "none";
  
  private static HttpRequestInitializer a(int paramInt1, cvn paramcvn, int paramInt2)
  {
    Long localLong = null;
    Object localObject = dvd.e(paramInt1);
    String str = ((bfd)localObject).U();
    localObject = ((bfd)localObject).a();
    if (paramcvn == null) {}
    for (localObject = null;; localObject = paramcvn.a((String)localObject))
    {
      if (localObject != null) {
        localLong = paramcvn.c((String)localObject);
      }
      paramcvn = new iqi();
      paramcvn.c((String)localObject);
      return new dti(localLong, (String)localObject, paramcvn, str, paramInt2);
    }
  }
  
  private static <T extends doo> dqf a(byte[] paramArrayOfByte, T paramT, Method paramMethod)
  {
    Class localClass = paramT.getClass();
    try
    {
      paramMethod = (dqf)paramMethod.invoke(null, new Object[] { paramArrayOfByte });
      return paramMethod;
    }
    catch (IllegalAccessException paramArrayOfByte)
    {
      paramT = String.valueOf(localClass);
      throw new RuntimeException(String.valueOf(paramT).length() + 35 + "parseFrom method needs to be public" + paramT, paramArrayOfByte);
    }
    catch (InvocationTargetException paramMethod)
    {
      ezi.e("Babel_RequestWriter", "Protocol buffer parsing failure", new Object[0]);
      paramT = String.valueOf(paramT);
      ezi.e("Babel_RequestWriter", String.valueOf(paramT).length() + 9 + "Request: " + paramT, new Object[0]);
      paramArrayOfByte = String.valueOf(aal.a(paramArrayOfByte));
      if (paramArrayOfByte.length() != 0) {}
      for (paramArrayOfByte = "Response: ".concat(paramArrayOfByte);; paramArrayOfByte = new String("Response: "))
      {
        ezi.e("Babel_RequestWriter", paramArrayOfByte, new Object[0]);
        if (!aal.a(aal.oJ, "babel_debug_protobuf_parse_failure", false)) {
          break;
        }
        throw new RuntimeException("Protocol buffer parsing failure", paramMethod);
      }
      paramArrayOfByte = String.valueOf(localClass);
      ezi.d("Babel_RequestWriter", String.valueOf(paramArrayOfByte).length() + 28 + "Could not invoke parseFrom: " + paramArrayOfByte, paramMethod);
    }
    return null;
  }
  
  public static dth a()
  {
    if (a == null)
    {
      a = new dth();
      b = b();
    }
    return a;
  }
  
  private static byte[] a(int paramInt1, cvn paramcvn, boolean paramBoolean, GenericUrl paramGenericUrl, HttpContent paramHttpContent, int paramInt2, int paramInt3)
  {
    Context localContext = aal.oJ;
    hbr localhbr = (hbr)ilh.b(localContext, hbr.class);
    hq localhq;
    Object localObject;
    if (localhbr != null)
    {
      localhq = new hq();
      localhq.put("Accept-Encoding", "gzip");
      if (paramcvn != null)
      {
        localObject = dvd.e(paramInt1);
        String str1 = ((bfd)localObject).a();
        if (((bfd)localObject).y()) {
          localhq.put("X-Goog-PageId", ((bfd)localObject).U());
        }
        String str2 = paramcvn.a(str1);
        localObject = String.valueOf(str2);
        if (((String)localObject).length() != 0)
        {
          localObject = "Bearer ".concat((String)localObject);
          localhq.put("Authorization", localObject);
          str1 = "none";
          localObject = str1;
          if (str2 != null)
          {
            paramcvn = paramcvn.c(str2);
            localObject = str1;
            if (paramcvn != null) {
              localObject = paramcvn.toString();
            }
          }
          localhq.put("X-Auth-Time", localObject);
        }
      }
      else
      {
        localhq.put("X-Device-ID", b);
        localhq.put("X-Network-ID", exa.b());
        localhq.put("User-Agent", aal.i());
        if (!paramBoolean) {
          break label359;
        }
      }
    }
    label353:
    label359:
    for (paramcvn = lyi.a(a);; paramcvn = null) {
      for (;;)
      {
        try
        {
          if (dvp.d.b(paramInt1)) {
            break label353;
          }
          paramInt1 = 3;
          paramcvn = localhbr.a(localContext, paramGenericUrl.toString(), localhq, paramcvn, paramInt2, paramInt1);
          return paramcvn;
        }
        catch (HttpResponseException paramcvn)
        {
          throw dvn.a(paramcvn.getStatusCode(), paramcvn, null);
        }
        localObject = new String("Bearer ");
        break;
        paramcvn = new iqr().createRequestFactory(a(paramInt1, paramcvn, paramInt2));
        if (paramBoolean) {}
        for (paramcvn = paramcvn.buildPostRequest(paramGenericUrl, paramHttpContent);; paramcvn = paramcvn.buildGetRequest(paramGenericUrl))
        {
          paramcvn = paramcvn.execute();
          if (paramcvn.isSuccessStatusCode()) {
            break;
          }
          throw dvn.a(paramcvn.getStatusCode(), null, null);
        }
        return a(paramcvn);
        paramInt1 = paramInt3;
      }
    }
  }
  
  private static byte[] a(HttpResponse paramHttpResponse)
  {
    localHttpResponse = null;
    try
    {
      paramHttpResponse = paramHttpResponse.getContent();
      localHttpResponse = paramHttpResponse;
      BufferedInputStream localBufferedInputStream = new BufferedInputStream(paramHttpResponse);
      localHttpResponse = paramHttpResponse;
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      localHttpResponse = paramHttpResponse;
      try
      {
        int i = localBufferedInputStream.read();
        while (i != -1)
        {
          localHttpResponse = paramHttpResponse;
          localByteArrayOutputStream.write((byte)i);
          localHttpResponse = paramHttpResponse;
          i = localBufferedInputStream.read();
          continue;
          paramHttpResponse = finally;
        }
      }
      catch (IOException localIOException2)
      {
        localHttpResponse = paramHttpResponse;
        ezi.c("Babel_RequestWriter", "Error reading response stream", localIOException2);
        localHttpResponse = paramHttpResponse;
        throw new dvn(106, localIOException2);
      }
      try
      {
        localHttpResponse.close();
        throw paramHttpResponse;
        localHttpResponse = paramHttpResponse;
        byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
        if (paramHttpResponse != null) {}
        try
        {
          paramHttpResponse.close();
          return arrayOfByte;
        }
        catch (IOException paramHttpResponse)
        {
          return arrayOfByte;
        }
      }
      catch (IOException localIOException1)
      {
        for (;;) {}
      }
    }
    finally
    {
      if (localHttpResponse == null) {}
    }
  }
  
  private static String b()
  {
    try
    {
      long l = exa.a();
      Object localObject = MessageDigest.getInstance("md5");
      byte[] arrayOfByte = new byte[8];
      ByteBuffer.wrap(arrayOfByte).asLongBuffer().put(0, l);
      localObject = aal.a(((MessageDigest)localObject).digest(arrayOfByte));
      return (String)localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException) {}
    return "none";
  }
  
  public dqf a(GenericUrl paramGenericUrl, dpf paramdpf, int paramInt1, cvn paramcvn, boolean paramBoolean, int paramInt2)
  {
    int j = 0;
    if (paramInt1 == -1) {
      return null;
    }
    int k = paramdpf.n();
    if (k != 0) {}
    bfd localbfd;
    Object localObject;
    HttpContent localHttpContent;
    int m;
    for (int i = 1;; i = 0)
    {
      localbfd = dvd.e(paramInt1);
      localObject = aal.oJ;
      localHttpContent = paramdpf.b(((awm)ilh.a((Context)localObject, awm.class)).e(paramInt1), paramInt2, paramInt1);
      if (localHttpContent == null) {
        break label247;
      }
      m = aal.a((Context)localObject, "babel_server_request_timeout", 40000);
      if (i == 0) {
        break label226;
      }
      localObject = paramdpf.m();
      if (localObject != null) {
        break;
      }
      throw new dvn(122);
    }
    paramInt2 = j;
    if (k == 1) {
      paramInt2 = 1;
    }
    paramcvn = new iqk((AbstractInputStreamContent)localObject, new iqr(), a(paramInt1, paramcvn, m));
    if (paramInt2 != 0) {
      paramcvn.b();
    }
    paramcvn.a(localHttpContent);
    paramGenericUrl = a(paramcvn.a(paramGenericUrl));
    if (k == 1)
    {
      paramInt1 = 2132;
      aal.a(localbfd, paramInt1);
    }
    for (;;)
    {
      return a(paramGenericUrl, paramdpf, hgetgetClassb);
      paramInt1 = 2133;
      break;
      label226:
      paramGenericUrl = a(paramInt1, paramcvn, paramBoolean, paramGenericUrl, localHttpContent, m, paramdpf.l());
      continue;
      label247:
      paramGenericUrl = null;
    }
  }
}

/* Location:
 * Qualified Name:     dth
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */