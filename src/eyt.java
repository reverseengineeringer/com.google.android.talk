import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.media.MediaPlayer;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.MediaStore.Audio.Media;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public final class eyt
{
  public static final Uri a = ezc.c(aal.hM);
  public static final Uri b = ezc.c(aal.hL);
  
  public static Uri a(int paramInt1, int paramInt2, String paramString, int paramInt3)
  {
    boolean bool3 = false;
    boolean bool2 = true;
    Context localContext = aal.oJ;
    String str = localContext.getString(paramInt2);
    if (Build.VERSION.SDK_INT < 21)
    {
      File localFile;
      if (Build.VERSION.SDK_INT < 21)
      {
        bool1 = true;
        hbs.a("Expected condition to be true", bool1);
        localFile = a(a(), paramInt1, paramString);
        Uri localUri = a(localContext, paramInt1, paramString);
        localObject = localUri;
        if (localUri == null)
        {
          if (localFile == null) {
            break label278;
          }
          hbs.a(paramString, ".ogg");
          hbs.a(paramInt3, 1, 2);
          hbs.b("Expected non-null", localFile);
          a(localContext, str, localFile, paramString, paramInt3);
          if (paramInt3 != 2) {
            break label266;
          }
          bool1 = true;
          label117:
          paramString = new ContentValues();
          paramString.put("_data", localFile.getAbsolutePath());
          paramString.put("title", str);
          paramString.put("mime_type", "audio/ogg");
          paramString.put("_size", Long.valueOf(localFile.length()));
          paramString.put("artist", Integer.valueOf(StressMode.q));
          if (bool1) {
            break label272;
          }
        }
      }
      for (;;)
      {
        paramString.put("is_ringtone", Boolean.valueOf(bool2));
        paramString.put("is_notification", Boolean.valueOf(bool1));
        paramString.put("is_alarm", Boolean.valueOf(bool1));
        paramString.put("is_music", Boolean.valueOf(false));
        localObject = MediaStore.Audio.Media.getContentUriForPath(localFile.getAbsolutePath());
        hbs.a(localObject, MediaStore.Audio.Media.EXTERNAL_CONTENT_URI);
        localObject = localContext.getContentResolver().insert((Uri)localObject, paramString);
        return (Uri)localObject;
        bool1 = false;
        break;
        label266:
        bool1 = false;
        break label117;
        label272:
        bool2 = false;
      }
      label278:
      return null;
    }
    if (Build.VERSION.SDK_INT >= 21) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      hbs.a("Expected condition to be true", bool1);
      if (a(localContext))
      {
        localObject = a(localContext, paramInt1, paramString);
        if (localObject != null)
        {
          a(localContext, ((Uri)localObject).toString(), str);
          a(localContext, str, new File(a(), a(paramInt1, paramString)), paramString, paramInt3);
        }
      }
      localObject = a(localContext, paramInt3);
      if (localObject != null) {
        break;
      }
      return null;
    }
    Object localObject = a((String)localObject, paramInt1, paramString);
    hbs.a(paramString, ".ogg");
    if (paramInt3 != 1)
    {
      bool1 = bool3;
      if (paramInt3 != 2) {}
    }
    else
    {
      bool1 = true;
    }
    hbs.a("Expected condition to be true", bool1);
    paramString = Uri.fromFile((File)localObject);
    localContext.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", paramString));
    return paramString;
  }
  
  private static Uri a(Context paramContext, int paramInt, String paramString)
  {
    if (!a(paramContext)) {}
    do
    {
      do
      {
        return null;
        localObject = new File(a(), a(paramInt, paramString));
      } while (!((File)localObject).exists());
      paramContext = MediaStore.Audio.Media.getContentUriForPath(((File)localObject).getAbsolutePath());
      hbs.a(paramContext, MediaStore.Audio.Media.EXTERNAL_CONTENT_URI);
      paramString = aal.oJ.getContentResolver();
      String str = String.valueOf("_data=\"");
      Object localObject = String.valueOf(((File)localObject).getAbsolutePath());
      str = String.valueOf(str).length() + 1 + String.valueOf(localObject).length() + str + (String)localObject + "\"";
      paramString = paramString.query(paramContext, new String[] { "_id" }, str, null, null);
    } while (paramString == null);
    if (paramString.getCount() == 0)
    {
      paramString.close();
      return null;
    }
    paramString.moveToFirst();
    paramInt = paramString.getInt(0);
    paramString.close();
    return Uri.withAppendedPath(paramContext, Integer.toString(paramInt));
  }
  
  public static Uri a(Uri paramUri, String... paramVarArgs)
  {
    Context localContext = aal.oJ;
    MediaPlayer localMediaPlayer = new MediaPlayer();
    try
    {
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        String str1 = paramVarArgs[i];
        if (str1 != null)
        {
          boolean bool = str1.isEmpty();
          if (bool) {
            return null;
          }
        }
        if (str1 != null)
        {
          Object localObject2 = RingtoneManager.getRingtone(localContext, Uri.parse(str1));
          Object localObject1 = str1;
          String str2;
          if (localObject2 != null)
          {
            localObject2 = ((Ringtone)localObject2).getTitle(localContext);
            localObject1 = localContext.getResources().getString(StressMode.ak);
            str2 = localContext.getResources().getString(StressMode.dw);
            if (!((String)localObject1).equals(localObject2)) {
              break label170;
            }
            localObject1 = ezc.b(aal.hM);
          }
          for (;;)
          {
            label170:
            try
            {
              localObject1 = Uri.parse((String)localObject1);
              if (!((Uri)localObject1).equals(paramUri))
              {
                localMediaPlayer.reset();
                localMediaPlayer.setDataSource(localContext, (Uri)localObject1);
              }
              return (Uri)localObject1;
            }
            catch (Exception localException) {}
            localObject1 = str1;
            if (str2.equals(localObject2)) {
              localObject1 = ezc.b(aal.hL);
            }
          }
        }
        i += 1;
      }
      return paramUri;
    }
    finally
    {
      localMediaPlayer.release();
    }
  }
  
  private static File a(int paramInt, String paramString1, String paramString2)
  {
    Object localObject2 = aal.oJ.getResources().openRawResource(paramInt);
    Object localObject1;
    try
    {
      localObject1 = new byte[((InputStream)localObject2).available()];
      ((InputStream)localObject2).read((byte[])localObject1);
      ((InputStream)localObject2).close();
      localObject2 = String.valueOf(File.separator);
      localObject2 = new FileOutputStream(String.valueOf(paramString1).length() + 0 + String.valueOf(localObject2).length() + String.valueOf(paramString2).length() + paramString1 + (String)localObject2 + paramString2);
      ((FileOutputStream)localObject2).write((byte[])localObject1);
      ((FileOutputStream)localObject2).close();
      localObject1 = new File(paramString1, paramString2);
      if (!((File)localObject1).exists())
      {
        ezi.e("Babel_RingtoneUtils", String.format(Locale.US, "Could not create ringtone file at %s/%s ", new Object[] { paramString1, paramString2 }), new Object[0]);
        return null;
      }
    }
    catch (IOException paramString1)
    {
      ezi.d("Babel_RingtoneUtils", "Could not create a file for the ringtone", paramString1);
      return null;
    }
    return (File)localObject1;
  }
  
  private static File a(String paramString1, int paramInt, String paramString2)
  {
    paramString2 = a(paramInt, paramString2);
    File localFile = new File(paramString1);
    localFile.mkdirs();
    if (!localFile.exists())
    {
      paramString1 = String.valueOf(paramString1);
      if (paramString1.length() != 0) {}
      for (paramString1 = "Could not create the directory ".concat(paramString1);; paramString1 = new String("Could not create the directory "))
      {
        ezi.e("Babel_RingtoneUtils", paramString1, new Object[0]);
        return null;
      }
    }
    return a(paramInt, paramString1, paramString2);
  }
  
  private static String a()
  {
    String str1 = String.valueOf(Environment.getExternalStorageDirectory().toString());
    String str2 = String.valueOf(File.separator);
    String str3 = String.valueOf(aal.oJ.getString(StressMode.jc));
    return String.valueOf(str1).length() + 0 + String.valueOf(str2).length() + String.valueOf(str3).length() + str1 + str2 + str3;
  }
  
  private static String a(int paramInt, String paramString)
  {
    String str = String.valueOf(aal.oJ.getResources().getResourceEntryName(paramInt));
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {
      return str.concat(paramString);
    }
    return new String(str);
  }
  
  private static String a(Context paramContext, int paramInt)
  {
    Object localObject = paramContext.getExternalMediaDirs();
    if (localObject != null)
    {
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        String str = localObject[i];
        if (str != null)
        {
          if (paramInt == 1)
          {
            localObject = String.valueOf(str.toString());
            str = String.valueOf(File.separator);
            paramContext = String.valueOf(paramContext.getString(StressMode.jc));
            return String.valueOf(localObject).length() + 0 + String.valueOf(str).length() + String.valueOf(paramContext).length() + (String)localObject + str + paramContext;
          }
          if (paramInt == 2)
          {
            localObject = String.valueOf(str.toString());
            str = String.valueOf(File.separator);
            paramContext = String.valueOf(paramContext.getString(StressMode.gF));
            return String.valueOf(localObject).length() + 0 + String.valueOf(str).length() + String.valueOf(paramContext).length() + (String)localObject + str + paramContext;
          }
        }
        i += 1;
      }
    }
    return null;
  }
  
  public static String a(Context paramContext, Uri paramUri)
  {
    Resources localResources = paramContext.getResources();
    if (a.equals(paramUri)) {
      return localResources.getString(StressMode.ak);
    }
    if (b.equals(paramUri)) {
      return localResources.getString(StressMode.dw);
    }
    Ringtone localRingtone = null;
    if (paramUri != null) {
      localRingtone = RingtoneManager.getRingtone(paramContext, paramUri);
    }
    if (localRingtone == null) {
      return localResources.getString(StressMode.jn);
    }
    return localRingtone.getTitle(paramContext);
  }
  
  private static void a(Context paramContext, String paramString1, File paramFile, String paramString2, int paramInt)
  {
    hbs.a(paramString2, ".ogg");
    hbs.a(paramInt, 1, 2);
    hbs.b("Expected non-null", paramFile);
    paramString2 = MediaStore.Audio.Media.getContentUriForPath(paramFile.getAbsolutePath());
    hbs.a(paramString2, MediaStore.Audio.Media.EXTERNAL_CONTENT_URI);
    paramContext = paramContext.getContentResolver();
    String str = String.valueOf("_data=\"");
    paramFile = String.valueOf(paramFile.getAbsolutePath());
    paramContext.delete(paramString2, String.valueOf(str).length() + 1 + String.valueOf(paramFile).length() + str + paramFile + "\"", null);
    paramFile = String.valueOf("title=\"");
    paramContext.delete(paramString2, String.valueOf(paramFile).length() + 1 + String.valueOf(paramString1).length() + paramFile + paramString1 + "\"", null);
  }
  
  private static void a(Context paramContext, String paramString1, String paramString2)
  {
    Object localObject1 = paramContext.getString(StressMode.ak);
    Object localObject2 = paramContext.getString(StressMode.dw);
    ArrayList localArrayList = new ArrayList();
    boolean bool1;
    if (((String)localObject1).equals(paramString2))
    {
      localArrayList.add("sms_notification_sound_key");
      localArrayList.add("gv_sms_sound_key");
      localArrayList.add("gv_voicemail_sound_key");
      localArrayList.add("chat_notification_sound_key");
      bool1 = true;
    }
    for (;;)
    {
      if (localArrayList.isEmpty())
      {
        return;
        if (((String)localObject2).equals(paramString2))
        {
          localArrayList.add("hangout_sound_key");
          bool1 = false;
        }
      }
      else
      {
        paramString2 = (hpz)ilh.a(paramContext, hpz.class);
        localObject1 = dvd.e();
        int j = localObject1.length;
        int i = 0;
        label143:
        int k;
        if (i < j)
        {
          k = localObject1[i];
          if (paramString2.c(k)) {
            try
            {
              localObject2 = paramString2.a(k);
              Iterator localIterator = localArrayList.iterator();
              while (localIterator.hasNext())
              {
                String str = (String)localIterator.next();
                if (paramString1.equals(paramString2.a(k).b(str)))
                {
                  paramString2.b(k).f(str).d();
                  continue;
                  i += 1;
                }
              }
            }
            catch (hqd localhqd)
            {
              ezi.c("Babel_RingtoneUtils", 49 + "ignore account which cannot be found: " + k, new Object[0]);
            }
          }
        }
        for (;;)
        {
          break label143;
          break;
          boolean bool2 = localhqd.a();
          if (bool2) {
            try
            {
              new bfz(paramContext, k).c(paramString1, bool1);
            }
            catch (bgz localbgz)
            {
              ezi.d("Babel_RingtoneUtils", "Don't need to clean db for logged out user", new Object[0]);
            }
          }
        }
      }
      bool1 = true;
    }
  }
  
  private static boolean a(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("android.permission.READ_EXTERNAL_STORAGE");
    localArrayList.add("android.permission.WRITE_EXTERNAL_STORAGE");
    return ((dcj)ilh.a(paramContext, dcj.class)).a(localArrayList);
  }
}

/* Location:
 * Qualified Name:     eyt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */