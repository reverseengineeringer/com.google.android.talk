import android.os.Environment;
import java.io.File;

final class dgc
  implements Runnable
{
  dgc(dgb paramdgb) {}
  
  public void run()
  {
    String str = String.valueOf(Environment.getExternalStorageDirectory());
    emj.a(new File(String.valueOf(str).length() + 16 + str + "/testapns.xml.gz"));
  }
}

/* Location:
 * Qualified Name:     dgc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */