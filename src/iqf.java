import com.google.api.client.http.HttpMediaType;
import com.google.api.client.http.HttpResponse;
import com.google.api.client.http.HttpResponseException;
import com.google.api.client.http.HttpResponseException.Builder;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonObjectParser;
import java.io.IOException;

public final class iqf
  extends HttpResponseException
{
  private static final long serialVersionUID = 4020689092957439244L;
  final transient iqa a;
  
  private iqf(HttpResponseException.Builder paramBuilder, iqa paramiqa)
  {
    super(paramBuilder);
    a = paramiqa;
  }
  
  public static iqf a(JsonFactory paramJsonFactory, HttpResponse paramHttpResponse)
  {
    JsonFactory localJsonFactory1 = null;
    HttpResponseException.Builder localBuilder = new HttpResponseException.Builder(paramHttpResponse.getStatusCode(), paramHttpResponse.getStatusMessage(), paramHttpResponse.getHeaders());
    fii.a(paramJsonFactory);
    String str = paramHttpResponse.getContentType();
    for (;;)
    {
      try
      {
        if ((!paramHttpResponse.isSuccessStatusCode()) && (str != null) && (paramHttpResponse.getContent() != null) && (HttpMediaType.equalsIgnoreParameters("application/json; charset=UTF-8", str))) {
          paramJsonFactory = (iqa)new JsonObjectParser(paramJsonFactory).parseAndClose(paramHttpResponse.getContent(), paramHttpResponse.getContentCharset(), iqa.class);
        }
      }
      catch (IOException localIOException1)
      {
        paramJsonFactory = null;
      }
      try
      {
        str = paramJsonFactory.toPrettyString();
        localJsonFactory1 = paramJsonFactory;
        paramJsonFactory = str;
        paramHttpResponse = HttpResponseException.computeMessageBuffer(paramHttpResponse);
        if (!aen.c(paramJsonFactory))
        {
          paramHttpResponse.append(isr.a).append(paramJsonFactory);
          localBuilder.setContent(paramJsonFactory);
        }
        localBuilder.setMessage(paramHttpResponse.toString());
        return new iqf(localBuilder, localJsonFactory1);
      }
      catch (IOException localIOException2)
      {
        JsonFactory localJsonFactory2;
        for (;;) {}
      }
      paramJsonFactory = paramHttpResponse.parseAsString();
      continue;
      localIOException1.printStackTrace();
      localJsonFactory2 = paramJsonFactory;
      paramJsonFactory = null;
    }
  }
}

/* Location:
 * Qualified Name:     iqf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */