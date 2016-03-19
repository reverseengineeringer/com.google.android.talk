import android.graphics.Bitmap;
import android.os.Bundle;
import com.google.android.gms.feedback.FeedbackOptions;
import com.google.android.gms.feedback.FileTeleporter;
import com.google.android.gms.feedback.LogOptions;
import com.google.android.gms.feedback.ThemeSettings;
import java.util.ArrayList;

public class fyg
{
  private Bitmap a;
  private String b;
  private Bundle c = new Bundle();
  private String d;
  private String e;
  private ArrayList<FileTeleporter> f = new ArrayList();
  private boolean g;
  private ThemeSettings h;
  private LogOptions i;
  
  public FeedbackOptions a()
  {
    return FeedbackOptions.a(FeedbackOptions.a(FeedbackOptions.a(FeedbackOptions.a(FeedbackOptions.c(FeedbackOptions.a(FeedbackOptions.b(FeedbackOptions.a(FeedbackOptions.a(new FeedbackOptions(), a), b), d), c), e), f), g), h), i);
  }
  
  public fyg a(Bitmap paramBitmap)
  {
    a = paramBitmap;
    return this;
  }
  
  public fyg a(Bundle paramBundle)
  {
    if (paramBundle != null) {
      c.putAll(paramBundle);
    }
    return this;
  }
  
  public fyg a(String paramString)
  {
    b = paramString;
    return this;
  }
  
  public fyg a(String paramString1, String paramString2)
  {
    c.putString(paramString1, paramString2);
    return this;
  }
  
  public fyg a(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    f.add(new FileTeleporter(paramArrayOfByte, paramString2, paramString1));
    return this;
  }
  
  public fyg a(boolean paramBoolean)
  {
    g = true;
    return this;
  }
  
  public fyg b(String paramString)
  {
    d = paramString;
    return this;
  }
  
  public fyg c(String paramString)
  {
    e = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     fyg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */