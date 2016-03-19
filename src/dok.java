import android.os.Bundle;
import com.google.api.client.http.HttpContent;
import com.google.api.client.http.HttpMediaType;
import com.google.api.client.http.MultipartContent;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;

public final class dok
  extends dol
{
  private static final boolean a = false;
  private final MultipartContent b;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public dok(bfd parambfd, int paramInt, dpo paramdpo, String paramString)
  {
    super(parambfd, paramInt, paramdpo, efh.b, paramString);
    b = new MultipartContent().setContentParts(Arrays.asList(new HttpContent[] { new dnd(u), paramdpo.m() }));
  }
  
  public String b()
  {
    return b.getMediaType().build();
  }
  
  public byte[] c()
  {
    if (a)
    {
      localObject = String.valueOf(j());
      String str = String.valueOf(u);
      new StringBuilder(String.valueOf(localObject).length() + 33 + String.valueOf(str).length()).append("sending request to url ").append((String)localObject).append(" request: ").append(str);
    }
    Object localObject = new ByteArrayOutputStream(1024);
    try
    {
      b.writeTo((OutputStream)localObject);
      return ((ByteArrayOutputStream)localObject).toByteArray();
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException("Cannot create a byte array stream", localIOException);
    }
  }
  
  public Bundle d()
  {
    Bundle localBundle = super.d();
    localBundle.putString("uploadType", "multipart");
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     dok
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */