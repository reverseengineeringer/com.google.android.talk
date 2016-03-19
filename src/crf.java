import android.content.Context;
import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;

public final class crf
  extends fcu
{
  public crf(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private crf(Context paramContext, byte paramByte)
  {
    super(paramContext, null);
  }
  
  private static String a(String paramString1, String paramString2)
  {
    return paramString2.substring(paramString1.length());
  }
  
  public static boolean b(String paramString)
  {
    boolean bool1 = true;
    try
    {
      String str = new URL(paramString).getHost().toLowerCase(Locale.getDefault());
      if ((str.equals("www.youtube.com")) || (str.equals("youtube.com")) || (str.equals("m.youtube.com")) || (str.equals("youtube.googleapis.com")) || (str.equals("youtu.be")))
      {
        if (TextUtils.isEmpty(e(paramString))) {
          break label114;
        }
        return true;
      }
      if ((str.equals("gaming.youtube.com")) || (str.equals("music.youtube.com")))
      {
        boolean bool2 = TextUtils.isEmpty(d(paramString));
        if (!bool2) {
          break label112;
        }
        return false;
      }
    }
    catch (MalformedURLException paramString)
    {
      bool1 = false;
    }
    label112:
    return bool1;
    label114:
    return false;
  }
  
  private static String d(String paramString)
  {
    int i = 0;
    try
    {
      Object localObject1 = new URL(paramString);
      Object localObject2 = ((URL)localObject1).getPath();
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        return null;
      }
      if (((String)localObject2).equals("/watch"))
      {
        localObject1 = ((URL)localObject1).getQuery();
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          return null;
        }
        localObject1 = ((String)localObject1).split("&");
        int j = localObject1.length;
        while (i < j)
        {
          localObject2 = localObject1[i].split("=");
          if ((localObject2.length == 2) && (localObject2[0].equals("v")))
          {
            paramString = localObject2[1];
            return paramString;
          }
          i += 1;
          continue;
          paramString = "Malformed url found trying to discover if youtube link for ".concat(paramString);
        }
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() == 0) {}
    }
    for (;;)
    {
      ezi.d("Babel", paramString, localMalformedURLException);
      return null;
      paramString = new String("Malformed url found trying to discover if youtube link for ");
    }
  }
  
  private static String e(String paramString)
  {
    int i = 0;
    for (;;)
    {
      String[] arrayOfString;
      try
      {
        Object localObject1 = new URL(paramString);
        String str = ((URL)localObject1).getPath();
        if (TextUtils.isEmpty(str)) {
          return null;
        }
        if ((str.equals("/watch")) || (str.equals("/apiplayer")))
        {
          Object localObject2 = ((URL)localObject1).getQuery();
          if (TextUtils.isEmpty((CharSequence)localObject2)) {
            return null;
          }
          localObject2 = ((String)localObject2).split("&");
          int j = localObject2.length;
          if (i < j)
          {
            arrayOfString = localObject2[i].split("=");
            if (arrayOfString.length != 2) {
              break label257;
            }
            if ((str.equals("/watch")) && (arrayOfString[0].equals("v"))) {
              break label252;
            }
            if ((!str.equals("/apiplayer")) || (!arrayOfString[0].equals("video_id"))) {
              break label257;
            }
            break label252;
          }
        }
        if (((URL)localObject1).getHost().toLowerCase(Locale.getDefault()).equals("youtu.be")) {
          return a("/", str);
        }
        if (str.startsWith("/embed/")) {
          return a("/embed/", str);
        }
        if (str.startsWith("/v/"))
        {
          localObject1 = a("/v/", str);
          return (String)localObject1;
        }
      }
      catch (MalformedURLException localMalformedURLException)
      {
        paramString = String.valueOf(paramString);
        if (paramString.length() != 0)
        {
          paramString = "Malformed url found trying to discover if youtube link for ".concat(paramString);
          ezi.d("Babel", paramString, localMalformedURLException);
          return null;
        }
        paramString = new String("Malformed url found trying to discover if youtube link for ");
        continue;
      }
      label252:
      return arrayOfString[1];
      label257:
      i += 1;
    }
  }
  
  public void a(int paramInt, boolean paramBoolean, String paramString)
  {
    e(paramString);
    setOnClickListener(new crg(this, paramString));
    bfd localbfd = dvd.e(paramInt);
    String str = e(paramString);
    if (TextUtils.isEmpty(str)) {
      ezi.e("Babel", "Found no videoId when trying to get the thumbnail for the yotube video", new Object[0]);
    }
    for (;;)
    {
      super.a(localbfd, paramBoolean, paramString, 480, 360, 0);
      return;
      paramString = new StringBuilder(paramString.substring(0, paramString.indexOf(':')));
      paramString.append("://img.youtube.com/vi/");
      paramString.append(str);
      paramString.append("/0.jpg");
      paramString = paramString.toString();
    }
  }
  
  public void a(String paramString) {}
  
  public void b()
  {
    super.b();
  }
}

/* Location:
 * Qualified Name:     crf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */