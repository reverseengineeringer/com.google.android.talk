import android.net.Uri;

final class enc
{
  final Uri a;
  boolean b = false;
  int c;
  private int d;
  
  public enc(Uri paramUri)
  {
    a = paramUri;
  }
  
  public int a()
  {
    switch (c)
    {
    }
    do
    {
      return 2;
      return 0;
      return 1;
    } while (d == 404);
    return 1;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    c = paramInt1;
    d = paramInt2;
    b = true;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DownloadResult:");
    localStringBuilder.append(" destinationUri=").append(a);
    localStringBuilder.append(" resultCode=").append(c);
    localStringBuilder.append(" httpStatusCode=").append(d);
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     enc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */