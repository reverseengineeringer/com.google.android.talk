import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class fa
{
  final String a;
  final HashMap<String, File> b = new HashMap();
  
  public fa(String paramString)
  {
    a = paramString;
  }
  
  public Uri a(File paramFile)
  {
    for (;;)
    {
      String str1;
      try
      {
        str1 = paramFile.getCanonicalPath();
        paramFile = null;
        Iterator localIterator = b.entrySet().iterator();
        if (localIterator.hasNext())
        {
          Map.Entry localEntry2 = (Map.Entry)localIterator.next();
          String str2 = ((File)localEntry2.getValue()).getPath();
          if (!str1.startsWith(str2)) {
            break label271;
          }
          Map.Entry localEntry1 = localEntry2;
          if (paramFile != null)
          {
            if (str2.length() <= ((File)paramFile.getValue()).getPath().length()) {
              break label271;
            }
            localEntry1 = localEntry2;
          }
          paramFile = localEntry1;
          continue;
        }
        if (paramFile != null) {
          break label157;
        }
      }
      catch (IOException localIOException)
      {
        throw new IllegalArgumentException("Failed to resolve canonical path for " + paramFile);
      }
      throw new IllegalArgumentException("Failed to find configured root that contains " + str1);
      label157:
      Object localObject = ((File)paramFile.getValue()).getPath();
      if (((String)localObject).endsWith("/")) {}
      for (localObject = str1.substring(((String)localObject).length());; localObject = str1.substring(((String)localObject).length() + 1))
      {
        paramFile = Uri.encode((String)paramFile.getKey()) + '/' + Uri.encode((String)localObject, "/");
        return new Uri.Builder().scheme("content").authority(a).encodedPath(paramFile).build();
      }
      label271:
      localObject = paramFile;
    }
  }
  
  public File a(Uri paramUri)
  {
    Object localObject2 = paramUri.getEncodedPath();
    int i = ((String)localObject2).indexOf('/', 1);
    Object localObject1 = Uri.decode(((String)localObject2).substring(1, i));
    localObject2 = Uri.decode(((String)localObject2).substring(i + 1));
    localObject1 = (File)b.get(localObject1);
    if (localObject1 == null) {
      throw new IllegalArgumentException("Unable to find configured root for " + paramUri);
    }
    paramUri = new File((File)localObject1, (String)localObject2);
    try
    {
      localObject2 = paramUri.getCanonicalFile();
      if (!((File)localObject2).getPath().startsWith(((File)localObject1).getPath())) {
        throw new SecurityException("Resolved path jumped beyond configured root");
      }
    }
    catch (IOException localIOException)
    {
      throw new IllegalArgumentException("Failed to resolve canonical path for " + paramUri);
    }
    return (File)localObject2;
  }
  
  public void a(String paramString, File paramFile)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Name must not be empty");
    }
    try
    {
      File localFile = paramFile.getCanonicalFile();
      b.put(paramString, localFile);
      return;
    }
    catch (IOException paramString)
    {
      throw new IllegalArgumentException("Failed to resolve canonical path for " + paramFile, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     fa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */