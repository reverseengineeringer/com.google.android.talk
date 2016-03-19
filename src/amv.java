import android.content.Context;
import java.io.File;

public class amv
{
  final int a = 262144000;
  final anb b;
  
  public amv(anb paramanb, int paramInt)
  {
    b = paramanb;
  }
  
  public amv(Context paramContext)
  {
    this(paramContext, "image_manager_disk_cache");
  }
  
  amv(Context paramContext, String paramString)
  {
    this(new anb(paramContext, paramString), 262144000);
  }
  
  public amu a()
  {
    File localFile = b.a();
    if (localFile == null) {}
    while ((!localFile.mkdirs()) && ((!localFile.exists()) || (!localFile.isDirectory()))) {
      return null;
    }
    return anc.a(localFile, a);
  }
}

/* Location:
 * Qualified Name:     amv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */