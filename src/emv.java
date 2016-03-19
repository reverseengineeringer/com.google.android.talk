import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public final class emv
{
  public static final String[] a = { "_id", "mid", "chset", "ct", "text" };
  public static final int b;
  public static final int c;
  public static final int d;
  public static final int e;
  public static final int f;
  private static int o = 0;
  public long g;
  public long h;
  public String i;
  public String j;
  public int k;
  public int l;
  public int m;
  public long n;
  
  static
  {
    o = 1;
    b = 0;
    int i1 = o;
    o = i1 + 1;
    c = i1;
    i1 = o;
    o = i1 + 1;
    d = i1;
    i1 = o;
    o = i1 + 1;
    e = i1;
    i1 = o;
    o = i1 + 1;
    f = i1;
  }
  
  public static emv a(Cursor paramCursor, boolean paramBoolean)
  {
    Object localObject1 = null;
    InputStream localInputStream = null;
    int i1 = 1;
    emv localemv = new emv();
    g = paramCursor.getLong(b);
    h = paramCursor.getLong(c);
    i = paramCursor.getString(e);
    j = paramCursor.getString(f);
    k = paramCursor.getInt(d);
    l = 0;
    m = 0;
    n = 0L;
    Object localObject3;
    Object localObject2;
    if (localemv.b()) {
      if (paramBoolean)
      {
        if (!aal.b(i)) {
          break label472;
        }
        localObject3 = aal.oJ.getContentResolver();
        localObject2 = localemv.d();
        paramCursor = localInputStream;
      }
    }
    for (;;)
    {
      try
      {
        localInputStream = ((ContentResolver)localObject3).openInputStream((Uri)localObject2);
        paramCursor = localInputStream;
        localObject1 = localInputStream;
        localObject3 = new BitmapFactory.Options();
        paramCursor = localInputStream;
        localObject1 = localInputStream;
        inJustDecodeBounds = true;
        paramCursor = localInputStream;
        localObject1 = localInputStream;
        BitmapFactory.decodeStream(localInputStream, null, (BitmapFactory.Options)localObject3);
        paramCursor = localInputStream;
        localObject1 = localInputStream;
        i = outMimeType;
        paramCursor = localInputStream;
        localObject1 = localInputStream;
        l = outWidth;
        paramCursor = localInputStream;
        localObject1 = localInputStream;
        m = outHeight;
        paramCursor = localInputStream;
        localObject1 = localInputStream;
        if (TextUtils.isEmpty(i))
        {
          paramCursor = localInputStream;
          localObject1 = localInputStream;
          String str = ((Uri)localObject2).getPath();
          paramCursor = localInputStream;
          localObject1 = localInputStream;
          MimeTypeMap localMimeTypeMap = MimeTypeMap.getSingleton();
          paramCursor = localInputStream;
          localObject1 = localInputStream;
          localObject3 = MimeTypeMap.getFileExtensionFromUrl(str);
          localObject2 = localObject3;
          paramCursor = localInputStream;
          localObject1 = localInputStream;
          if (TextUtils.isEmpty((CharSequence)localObject3))
          {
            paramCursor = localInputStream;
            localObject1 = localInputStream;
            i1 = str.lastIndexOf('.');
            localObject2 = localObject3;
            if (i1 >= 0)
            {
              paramCursor = localInputStream;
              localObject1 = localInputStream;
              localObject2 = str.substring(i1 + 1);
            }
          }
          paramCursor = localInputStream;
          localObject1 = localInputStream;
          i = localMimeTypeMap.getMimeTypeFromExtension((String)localObject2);
        }
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        localObject1 = paramCursor;
        ezi.d("Babel_SMS", "DatabaseMessages.MmsPart.loadImage: file not found", localFileNotFoundException);
        if (paramCursor == null) {
          continue;
        }
        try
        {
          paramCursor.close();
        }
        catch (IOException paramCursor)
        {
          Log.e("Babel_SMS", "IOException caught while closing stream", paramCursor);
        }
        continue;
      }
      finally
      {
        if (localObject1 == null) {
          break label457;
        }
      }
      try
      {
        localInputStream.close();
        n = enn.a(localemv.d());
        return localemv;
      }
      catch (IOException paramCursor)
      {
        Log.e("Babel_SMS", "IOException caught while closing stream", paramCursor);
        continue;
      }
      try
      {
        ((InputStream)localObject1).close();
        label457:
        throw paramCursor;
      }
      catch (IOException localIOException)
      {
        for (;;)
        {
          Log.e("Babel_SMS", "IOException caught while closing stream", localIOException);
        }
      }
      label472:
      if ((!aal.d(i)) || (!enn.a())) {
        continue;
      }
      paramCursor = aal.oJ;
      Uri localUri = localemv.d();
      MediaMetadataRetriever localMediaMetadataRetriever = new MediaMetadataRetriever();
      try
      {
        localMediaMetadataRetriever.setDataSource(paramCursor, localUri);
        if (i1 == 0) {
          continue;
        }
        paramCursor = localMediaMetadataRetriever.getFrameAtTime(-1L);
        i = localMediaMetadataRetriever.extractMetadata(12);
        l = paramCursor.getWidth();
        m = paramCursor.getHeight();
        localMediaMetadataRetriever.release();
      }
      catch (IllegalArgumentException paramCursor)
      {
        for (;;)
        {
          ezi.d("Babel_SMS", "DatabaseMessages.MmsPart.loadVideo: failed to load video", paramCursor);
          i1 = 0;
        }
        localemv.e();
        return localemv;
      }
      catch (SecurityException paramCursor)
      {
        for (;;) {}
      }
    }
  }
  
  private void e()
  {
    Object localObject1 = null;
    Object localObject3 = null;
    Object localObject4 = null;
    int i1 = 0;
    if (("text/plain".equals(i)) || ("application/smil".equals(i)) || ("text/html".equals(i))) {
      i1 = 1;
    }
    if (i1 != 0)
    {
      localObject1 = localObject4;
      if (!TextUtils.isEmpty(j)) {
        localObject1 = aal.b(j, k);
      }
    }
    Object localObject5;
    for (;;)
    {
      if ((localObject1 != null) && (localObject1.length > 0))
      {
        n = localObject1.length;
        j = aal.a((byte[])localObject1, k);
      }
      return;
      localObject4 = aal.oJ.getContentResolver();
      localObject5 = d();
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      for (;;)
      {
        try
        {
          localObject4 = ((ContentResolver)localObject4).openInputStream((Uri)localObject5);
          localObject1 = localObject4;
          localObject3 = localObject4;
          localObject5 = new byte['Ā'];
          localObject1 = localObject4;
          localObject3 = localObject4;
          i1 = ((InputStream)localObject4).read((byte[])localObject5);
          if (i1 >= 0)
          {
            localObject1 = localObject4;
            localObject3 = localObject4;
            localByteArrayOutputStream.write((byte[])localObject5, 0, i1);
            localObject1 = localObject4;
            localObject3 = localObject4;
            i1 = ((InputStream)localObject4).read((byte[])localObject5);
            continue;
          }
        }
        catch (IOException localIOException4)
        {
          localObject3 = localIOException1;
          localObject5 = String.valueOf(localIOException4);
          localObject3 = localIOException1;
          ezi.d("Babel_SMS", String.valueOf(localObject5).length() + 57 + "DatabaseMessages.MmsPart: loading text from file failed: " + (String)localObject5, localIOException4);
          if (localIOException1 == null) {
            continue;
          }
          try
          {
            localIOException1.close();
          }
          catch (IOException localIOException2)
          {
            localObject3 = String.valueOf(localIOException2);
            ezi.d("Babel_SMS", String.valueOf(localObject3).length() + 45 + "DatabaseMessages.MmsPart: close file failed: " + (String)localObject3, localIOException2);
          }
          continue;
        }
        finally
        {
          if (localObject3 == null) {
            break label381;
          }
        }
        try
        {
          ((InputStream)localObject4).close();
          localObject1 = localByteArrayOutputStream.toByteArray();
        }
        catch (IOException localIOException1)
        {
          localObject3 = String.valueOf(localIOException1);
          ezi.d("Babel_SMS", String.valueOf(localObject3).length() + 45 + "DatabaseMessages.MmsPart: close file failed: " + (String)localObject3, localIOException1);
        }
      }
    }
    try
    {
      ((InputStream)localObject3).close();
      label381:
      throw ((Throwable)localObject2);
    }
    catch (IOException localIOException3)
    {
      for (;;)
      {
        String str = String.valueOf(localIOException3);
        ezi.d("Babel_SMS", String.valueOf(str).length() + 45 + "DatabaseMessages.MmsPart: close file failed: " + str, localIOException3);
      }
    }
  }
  
  public boolean a()
  {
    return ("text/plain".equals(i)) || ("text/html".equals(i)) || ("application/vnd.wap.xhtml+xml".equals(i));
  }
  
  public boolean b()
  {
    return (aal.b(i)) || (aal.d(i)) || (aal.c(i)) || (aen.a(i));
  }
  
  public boolean c()
  {
    return aal.b(i);
  }
  
  public Uri d()
  {
    long l1 = g;
    return Uri.parse(39 + "content://mms/part/" + l1);
  }
}

/* Location:
 * Qualified Name:     emv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */