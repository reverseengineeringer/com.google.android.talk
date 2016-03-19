import android.os.ConditionVariable;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import org.apache.http.client.HttpResponseException;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.util.EntityUtils;
import org.chromium.net.HttpUrlRequest;
import org.chromium.net.HttpUrlRequestListener;

final class cok
  implements HttpUrlRequestListener
{
  final ConditionVariable a = new ConditionVariable();
  byte[] b;
  IOException c;
  
  public void a(HttpUrlRequest paramHttpUrlRequest) {}
  
  public void b(HttpUrlRequest paramHttpUrlRequest)
  {
    b = paramHttpUrlRequest.f();
    c = paramHttpUrlRequest.d();
    int i = paramHttpUrlRequest.b();
    if (ezi.a("Babel_CronetHttpSender", 3)) {
      ezi.a("Babel_CronetHttpSender", String.format("Response headers for [%s]: %s", new Object[] { paramHttpUrlRequest.n(), paramHttpUrlRequest.m() }), new Object[0]);
    }
    Object localObject;
    BasicHttpEntity localBasicHttpEntity;
    if (i != 200)
    {
      localObject = new ByteArrayInputStream(b);
      localBasicHttpEntity = new BasicHttpEntity();
      localBasicHttpEntity.setContent((InputStream)localObject);
      localBasicHttpEntity.setContentLength(paramHttpUrlRequest.a());
      localBasicHttpEntity.setContentType(paramHttpUrlRequest.l());
    }
    try
    {
      localObject = String.valueOf(EntityUtils.toString(localBasicHttpEntity));
      if (((String)localObject).length() != 0) {}
      for (localObject = "Http error response ".concat((String)localObject);; localObject = new String("Http error response "))
      {
        ezi.e("Babel_CronetHttpSender", (String)localObject, new Object[0]);
        if ((c == null) && (i != 200)) {
          c = new HttpResponseException(i, paramHttpUrlRequest.c());
        }
        a.open();
        return;
      }
      localObject = "Http error but unable to parse the response body. Response Bytes: ".concat((String)localObject);
    }
    catch (IOException localIOException)
    {
      localObject = String.valueOf(Arrays.toString(b));
      if (((String)localObject).length() == 0) {}
    }
    for (;;)
    {
      ezi.d("Babel_CronetHttpSender", (String)localObject, localIOException);
      break;
      localObject = new String("Http error but unable to parse the response body. Response Bytes: ");
    }
  }
}

/* Location:
 * Qualified Name:     cok
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */