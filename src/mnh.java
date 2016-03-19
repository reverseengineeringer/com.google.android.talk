import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;

public final class mnh
  extends mng
{
  private final File d;
  private final String e;
  private final String f;
  
  public mnh(File paramFile)
  {
    this(paramFile, "application/octet-stream", (byte)0);
  }
  
  private mnh(File paramFile, String paramString)
  {
    this(paramFile, paramString, null);
  }
  
  private mnh(File paramFile, String paramString, byte paramByte)
  {
    this(paramFile, paramString);
  }
  
  private mnh(File paramFile, String paramString1, String paramString2)
  {
    super(paramString1);
    if (paramFile == null) {
      throw new IllegalArgumentException("File may not be null");
    }
    d = paramFile;
    e = paramFile.getName();
    f = null;
  }
  
  public void a(OutputStream paramOutputStream)
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("Output stream may not be null");
    }
    FileInputStream localFileInputStream = new FileInputStream(d);
    try
    {
      byte[] arrayOfByte = new byte['က'];
      for (;;)
      {
        int i = localFileInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        paramOutputStream.write(arrayOfByte, 0, i);
      }
    }
    finally
    {
      localFileInputStream.close();
    }
    localFileInputStream.close();
  }
  
  public String b()
  {
    return f;
  }
  
  public String c()
  {
    return "binary";
  }
  
  public long d()
  {
    return d.length();
  }
  
  public String e()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     mnh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */