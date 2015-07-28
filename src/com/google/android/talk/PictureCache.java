package com.google.android.talk;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import com.google.android.common.http.GoogleHttpClient;
import com.google.android.gsf.Gservices;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class PictureCache
{
  private static int HEIGHT = 110;
  private static int WIDTH;
  private static ContentResolver sContentResolver;
  private static Context sContextForHttpClient;
  private static volatile boolean sDone;
  private static GoogleHttpClient sHttpClient;
  private static HashMap<Long, PictureCache> sInstances;
  private static Thread sQueryThread;
  private static ArrayList<WorkItem> sQueue = new ArrayList();
  private long mAccountId;
  private BitmapCache mCache = new BitmapCache();
  private String mContact;
  private ArrayList<String> mNoPictureList = new ArrayList();
  
  static
  {
    sDone = false;
    WIDTH = 142;
  }
  
  private PictureCache(String paramString, long paramLong)
  {
    mAccountId = paramLong;
    mContact = paramString;
  }
  
  public static boolean allowScraping(String paramString)
  {
    Uri localUri = Uri.parse(paramString);
    String str = localUri.getScheme();
    if ((!"http".equals(str)) && (!"https".equals(str))) {}
    while (((!"www.flickr.com".equalsIgnoreCase(localUri.getHost())) || (Gservices.getString(sContentResolver, "gtalk_flickr_photo_info_url") == null)) && ((!"picasaweb.google.com".equalsIgnoreCase(localUri.getHost())) || (Gservices.getString(sContentResolver, "gtalk_picasa_album_url") == null)) && ((!"www.youtube.com".equalsIgnoreCase(localUri.getHost())) || (Gservices.getString(sContentResolver, "gtalk_youtube_video_url") == null)) && (((!paramString.toLowerCase().endsWith(".jpg")) && (!paramString.toLowerCase().endsWith(".gif"))) || (!"true".equalsIgnoreCase(Gservices.getString(sContentResolver, "gtalk_url_scraping_for_jpg"))))) {
      return false;
    }
    return true;
  }
  
  public static void destroyAll(Context paramContext)
  {
    paramContext = sInstances.entrySet().iterator();
    while (paramContext.hasNext()) {
      ((PictureCache)((Map.Entry)paramContext.next()).getValue()).destroy();
    }
    sInstances = null;
    sDone = true;
    if (sHttpClient != null) {
      sHttpClient.close();
    }
  }
  
  private PictureData findPictureDataInCache(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    synchronized (mCache)
    {
      PictureData localPictureData = mCache.get(paramString1);
      if ((localPictureData != null) && (localPictureData.getDrawable() != null))
      {
        if ((paramString2 == null) || (!paramString2.equals(localPictureData.getHash()))) {
          break label151;
        }
        paramString1 = localPictureData.getDrawable();
        if ((paramInt1 > 0) && (paramInt2 > 0))
        {
          paramString1 = paramString1.getBitmap();
          int i = paramString1.getWidth();
          int j = paramString1.getHeight();
          if ((i != paramInt1) && (j != paramInt2) && ((localPictureData.isSourceBitmap()) || ((i >= paramInt1) && (j >= paramInt2))))
          {
            localPictureData.setDrawable(new BitmapDrawable(Bitmap.createScaledBitmap(paramString1, paramInt1, paramInt2, false)));
            localPictureData.setIsSourceBitmap(false);
            mCache.recomputeCacheSize();
          }
        }
      }
      return localPictureData;
      label151:
      mCache.clear(paramString1);
    }
  }
  
  private static PictureData getFlickrPicture(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject = Uri.parse(paramString);
    if (!"www.flickr.com".equalsIgnoreCase(((Uri)localObject).getHost())) {
      return null;
    }
    localObject = ((Uri)localObject).getPathSegments();
    if ((((List)localObject).size() < 3) || (!"photos".equalsIgnoreCase((String)((List)localObject).get(0)))) {
      return null;
    }
    localObject = getReaderForUrl(String.format(Gservices.getString(sContentResolver, "gtalk_flickr_photo_info_url"), new Object[] { ((List)localObject).get(2), "c5ae0bd91eae2afd648ed0fd91a0589b" }));
    if (localObject != null) {
      return parseFlickrResponse(paramString, (Reader)localObject, paramInt1, paramInt2);
    }
    return null;
  }
  
  private static InputStream getHttpContent(String paramString)
    throws IOException
  {
    if (sHttpClient == null) {
      sHttpClient = new GoogleHttpClient(sContextForHttpClient, getUserAgent(), false);
    }
    Object localObject = new HttpGet(paramString);
    localObject = sHttpClient.execute((HttpUriRequest)localObject);
    if (((HttpResponse)localObject).getStatusLine().getStatusCode() == 200)
    {
      HttpEntity localHttpEntity = ((HttpResponse)localObject).getEntity();
      if (localHttpEntity != null) {
        return localHttpEntity.getContent();
      }
    }
    throw new IOException("Failed to retrieve [" + paramString + "] with status " + ((HttpResponse)localObject).getStatusLine());
  }
  
  public static PictureCache getInstance(String paramString, long paramLong, boolean paramBoolean)
  {
    Object localObject;
    if ((TextUtils.isEmpty(paramString)) || (paramLong <= 0L)) {
      localObject = null;
    }
    do
    {
      PictureCache localPictureCache;
      do
      {
        return (PictureCache)localObject;
        if (sInstances == null) {
          throw new RuntimeException("PictureCache hasn't been initialized");
        }
        localPictureCache = (PictureCache)sInstances.get(Long.valueOf(paramLong));
        localObject = localPictureCache;
      } while (localPictureCache != null);
      localObject = localPictureCache;
    } while (!paramBoolean);
    paramString = new PictureCache(paramString, paramLong);
    sInstances.put(Long.valueOf(paramLong), paramString);
    return paramString;
  }
  
  private static Bitmap getJpgPicture(String paramString)
  {
    String str = null;
    try
    {
      paramString = getStreamData(getHttpContent(paramString));
      ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramString);
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      inJustDecodeBounds = true;
      BitmapFactory.decodeStream(localByteArrayInputStream, null, localOptions);
      if (outHeight == -1) {
        break label111;
      }
      if (outWidth == -1) {
        return null;
      }
      inSampleSize = Math.max(outHeight / HEIGHT, outWidth / WIDTH);
      inJustDecodeBounds = false;
      paramString = BitmapFactory.decodeStream(new ByteArrayInputStream(paramString), null, localOptions);
      str = paramString;
      if (paramString != null) {}
    }
    catch (IOException paramString)
    {
      for (;;) {}
    }
    return str;
    label111:
    return null;
  }
  
  private static PictureData getPicasaPicture(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject2 = null;
    Object localObject1 = Uri.parse(paramString);
    if (!"picasaweb.google.com".equalsIgnoreCase(((Uri)localObject1).getHost())) {
      localObject1 = localObject2;
    }
    do
    {
      Object localObject3;
      do
      {
        do
        {
          return (PictureData)localObject1;
          localObject3 = ((Uri)localObject1).getPathSegments();
          localObject1 = localObject2;
        } while (((List)localObject3).size() != 2);
        localObject3 = getReaderForUrl(String.format(Gservices.getString(sContentResolver, "gtalk_picasa_album_url"), new Object[] { ((List)localObject3).get(0), ((List)localObject3).get(1) }));
        localObject1 = localObject2;
      } while (localObject3 == null);
      paramString = parseGDataResponse(paramString, (Reader)localObject3, paramInt1, paramInt2);
      localObject1 = paramString;
    } while (paramString == null);
    paramString.setType(3);
    return paramString;
  }
  
  private static Reader getReaderForUrl(String paramString)
  {
    try
    {
      paramString = new InputStreamReader(getHttpContent(paramString));
      return paramString;
    }
    catch (IOException paramString) {}
    return null;
  }
  
  private static byte[] getStreamData(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte['က'];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i < 0) {
        break;
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  private static String getUserAgent()
  {
    return "AndroidGoogleTalkAppHttp/1.0";
  }
  
  private static PictureData getYouTubeThumbnail(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject2 = null;
    Object localObject1 = Uri.parse(paramString);
    if (!"www.youtube.com".equalsIgnoreCase(((Uri)localObject1).getHost())) {
      localObject1 = localObject2;
    }
    do
    {
      Object localObject3;
      do
      {
        do
        {
          return (PictureData)localObject1;
          localObject3 = ((Uri)localObject1).getQueryParameter("v");
          localObject1 = localObject2;
        } while (TextUtils.isEmpty((CharSequence)localObject3));
        localObject3 = getReaderForUrl(String.format(Gservices.getString(sContentResolver, "gtalk_youtube_video_url"), new Object[] { localObject3 }));
        localObject1 = localObject2;
      } while (localObject3 == null);
      paramString = parseGDataResponse(paramString, (Reader)localObject3, paramInt1, paramInt2);
      localObject1 = paramString;
    } while (paramString == null);
    paramString.setType(2);
    return paramString;
  }
  
  public static void initialize(Context paramContext)
  {
    if (sInstances != null) {
      return;
    }
    sInstances = new HashMap();
    startQueryThread();
    sContentResolver = paramContext.getContentResolver();
    sContextForHttpClient = paramContext;
  }
  
  /* Error */
  private static PictureData parseFlickrResponse(String paramString, Reader paramReader, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: getstatic 128	com/google/android/talk/PictureCache:sContentResolver	Landroid/content/ContentResolver;
    //   3: ldc_w 456
    //   6: invokestatic 136	com/google/android/gsf/Gservices:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   9: astore 4
    //   11: aload 4
    //   13: ifnonnull +5 -> 18
    //   16: aconst_null
    //   17: areturn
    //   18: new 11	com/google/android/talk/PictureCache$PictureData
    //   21: dup
    //   22: aload_0
    //   23: invokespecial 457	com/google/android/talk/PictureCache$PictureData:<init>	(Ljava/lang/String;)V
    //   26: astore_0
    //   27: invokestatic 463	org/xmlpull/v1/XmlPullParserFactory:newInstance	()Lorg/xmlpull/v1/XmlPullParserFactory;
    //   30: invokevirtual 467	org/xmlpull/v1/XmlPullParserFactory:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   33: astore 5
    //   35: aload 5
    //   37: aload_1
    //   38: invokeinterface 473 2 0
    //   43: aload 5
    //   45: invokeinterface 476 1 0
    //   50: istore_2
    //   51: iload_2
    //   52: iconst_1
    //   53: if_icmpeq +161 -> 214
    //   56: aload 5
    //   58: invokeinterface 479 1 0
    //   63: astore_1
    //   64: iload_2
    //   65: iconst_2
    //   66: if_icmpne +104 -> 170
    //   69: ldc_w 481
    //   72: aload_1
    //   73: invokevirtual 116	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   76: ifeq +105 -> 181
    //   79: aload 5
    //   81: aconst_null
    //   82: ldc_w 483
    //   85: invokeinterface 487 3 0
    //   90: astore_1
    //   91: aload 5
    //   93: aconst_null
    //   94: ldc_w 489
    //   97: invokeinterface 487 3 0
    //   102: astore 6
    //   104: aload 4
    //   106: iconst_4
    //   107: anewarray 4	java/lang/Object
    //   110: dup
    //   111: iconst_0
    //   112: aload 5
    //   114: aconst_null
    //   115: ldc_w 491
    //   118: invokeinterface 487 3 0
    //   123: aastore
    //   124: dup
    //   125: iconst_1
    //   126: aload 6
    //   128: aastore
    //   129: dup
    //   130: iconst_2
    //   131: aload 5
    //   133: aconst_null
    //   134: ldc_w 493
    //   137: invokeinterface 487 3 0
    //   142: aastore
    //   143: dup
    //   144: iconst_3
    //   145: aload_1
    //   146: aastore
    //   147: invokestatic 270	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   150: invokestatic 96	com/google/android/talk/PictureCache:getJpgPicture	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   153: astore_1
    //   154: aload_1
    //   155: ifnull +15 -> 170
    //   158: aload_0
    //   159: new 213	android/graphics/drawable/BitmapDrawable
    //   162: dup
    //   163: aload_1
    //   164: invokespecial 235	android/graphics/drawable/BitmapDrawable:<init>	(Landroid/graphics/Bitmap;)V
    //   167: invokevirtual 239	com/google/android/talk/PictureCache$PictureData:setDrawable	(Landroid/graphics/drawable/BitmapDrawable;)V
    //   170: aload 5
    //   172: invokeinterface 495 1 0
    //   177: istore_2
    //   178: goto -127 -> 51
    //   181: ldc_w 497
    //   184: aload_1
    //   185: invokevirtual 116	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   188: ifeq -18 -> 170
    //   191: aload 5
    //   193: invokeinterface 495 1 0
    //   198: pop
    //   199: aload_0
    //   200: aload 5
    //   202: invokeinterface 500 1 0
    //   207: invokevirtual 503	com/google/android/talk/PictureCache$PictureData:setTitle	(Ljava/lang/String;)V
    //   210: goto -40 -> 170
    //   213: astore_1
    //   214: aload_0
    //   215: iconst_4
    //   216: invokevirtual 411	com/google/android/talk/PictureCache$PictureData:setType	(I)V
    //   219: aload_0
    //   220: areturn
    //   221: astore_1
    //   222: goto -8 -> 214
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	225	0	paramString	String
    //   0	225	1	paramReader	Reader
    //   0	225	2	paramInt1	int
    //   0	225	3	paramInt2	int
    //   9	96	4	str1	String
    //   33	168	5	localXmlPullParser	XmlPullParser
    //   102	25	6	str2	String
    // Exception table:
    //   from	to	target	type
    //   27	51	213	java/io/IOException
    //   56	64	213	java/io/IOException
    //   69	154	213	java/io/IOException
    //   158	170	213	java/io/IOException
    //   170	178	213	java/io/IOException
    //   181	210	213	java/io/IOException
    //   27	51	221	org/xmlpull/v1/XmlPullParserException
    //   56	64	221	org/xmlpull/v1/XmlPullParserException
    //   69	154	221	org/xmlpull/v1/XmlPullParserException
    //   158	170	221	org/xmlpull/v1/XmlPullParserException
    //   170	178	221	org/xmlpull/v1/XmlPullParserException
    //   181	210	221	org/xmlpull/v1/XmlPullParserException
  }
  
  private static PictureData parseGDataResponse(String paramString, Reader paramReader, int paramInt1, int paramInt2)
  {
    PictureData localPictureData = new PictureData(paramString);
    try
    {
      localXmlPullParser = XmlPullParserFactory.newInstance().newPullParser();
      k = Integer.MAX_VALUE;
      paramString = null;
      i = 0;
      localXmlPullParser.setInput(paramReader);
      n = localXmlPullParser.getEventType();
    }
    catch (XmlPullParserException paramString)
    {
      for (;;)
      {
        XmlPullParser localXmlPullParser;
        int k;
        int i;
        int n;
        String str;
        int j;
        int m;
        return localPictureData;
        if (n == 1) {
          break;
        }
        if (1 != 0) {
          if (i != 0) {
            break;
          }
        }
      }
    }
    catch (IOException paramString) {}
    str = localXmlPullParser.getName();
    if (n == 2) {
      if ("media:thumbnail".equals(str))
      {
        j = Integer.parseInt(localXmlPullParser.getAttributeValue(null, "height"));
        m = Integer.parseInt(localXmlPullParser.getAttributeValue(null, "width"));
        n = Math.min(Math.abs(j - paramInt2), Math.abs(m - paramInt1));
        paramReader = paramString;
        m = k;
        j = i;
        if (n < k)
        {
          m = n;
          paramReader = localXmlPullParser.getAttributeValue(null, "url");
          j = i;
        }
      }
    }
    for (;;)
    {
      n = localXmlPullParser.next();
      paramString = paramReader;
      k = m;
      i = j;
      break;
      paramReader = paramString;
      m = k;
      j = i;
      if ("media:title".equals(str))
      {
        localXmlPullParser.next();
        localPictureData.setTitle(localXmlPullParser.getText());
        paramReader = paramString;
        m = k;
        j = i;
        continue;
        paramReader = paramString;
        m = k;
        j = i;
        if (n == 3)
        {
          j = i;
          if ("media:group".equals(str))
          {
            j = i;
            if (paramString != null)
            {
              paramReader = getJpgPicture(paramString);
              if (paramReader != null) {
                localPictureData.setDrawable(new BitmapDrawable(paramReader));
              }
              j = 1;
            }
          }
          paramReader = paramString;
          m = k;
        }
      }
    }
    return localPictureData;
  }
  
  private static void startQueryThread()
  {
    sQueryThread = new Thread(new Runnable()
    {
      public void run()
      {
        Process.setThreadPriority(10);
        while (!PictureCache.sDone)
        {
          PictureCache.WorkItem localWorkItem = null;
          label39:
          PictureCache.PictureData localPictureData;
          Object localObject5;
          synchronized (PictureCache.sQueue)
          {
            if (PictureCache.sQueue.size() > 0)
            {
              localWorkItem = (PictureCache.WorkItem)PictureCache.sQueue.get(0);
              if (localWorkItem == null) {
                continue;
              }
              localPictureData = null;
              ??? = Uri.parse(mUrl);
              localObject5 = ((Uri)???).getHost();
              String str = ((Uri)???).getScheme();
              if (!"http".equals(str))
              {
                ??? = localPictureData;
                if (!"https".equals(str)) {}
              }
              else
              {
                if (!"www.flickr.com".equalsIgnoreCase((String)localObject5)) {
                  break label216;
                }
                ??? = PictureCache.getFlickrPicture(mUrl, PictureCache.WIDTH, PictureCache.HEIGHT);
              }
              label113:
              if (??? != null) {
                break label363;
              }
              localPictureData = new PictureCache.PictureData(mUrl);
              localPictureData.setDrawable(null);
              label134:
              mCache.add(localPictureData);
            }
          }
          synchronized (PictureCache.sQueue)
          {
            PictureCache.sQueue.remove(localWorkItem);
            if (localPictureData.getDrawable() != null)
            {
              ??? = mPictureLoadedMessage;
              if (??? != null)
              {
                ((HashMap)obj).put("bitmap", localPictureData.getDrawable());
                ((Message)???).sendToTarget();
                continue;
                try
                {
                  PictureCache.sQueue.wait();
                }
                catch (InterruptedException localInterruptedException) {}
                break label39;
                localObject2 = finally;
                throw ((Throwable)localObject2);
                label216:
                if ("picasaweb.google.com".equalsIgnoreCase((String)localObject5))
                {
                  ??? = PictureCache.getPicasaPicture(mUrl, PictureCache.WIDTH, PictureCache.HEIGHT);
                  break label113;
                }
                ??? = localInterruptedException;
                if ("picasaweb.google.com".equalsIgnoreCase((String)localObject5)) {
                  break label113;
                }
                if ("www.youtube.com".equalsIgnoreCase((String)localObject5))
                {
                  ??? = PictureCache.getYouTubeThumbnail(mUrl, PictureCache.WIDTH, PictureCache.HEIGHT);
                  break label113;
                }
                if (!mUrl.toLowerCase().endsWith(".jpg"))
                {
                  ??? = localInterruptedException;
                  if (!mUrl.toLowerCase().endsWith(".gif")) {
                    break label113;
                  }
                }
                localObject5 = PictureCache.getJpgPicture(mUrl);
                ??? = localInterruptedException;
                if (localObject5 == null) {
                  break label113;
                }
                ??? = new PictureCache.PictureData(mUrl);
                ((PictureCache.PictureData)???).setDrawable(new BitmapDrawable((Bitmap)localObject5));
                ((PictureCache.PictureData)???).setType(1);
                break label113;
                label363:
                Object localObject4 = ???;
                if (((PictureCache.PictureData)???).getDrawable() == null) {
                  break label134;
                }
                ((PictureCache.PictureData)???).setIsSourceBitmap(true);
                localObject4 = ???;
              }
            }
          }
        }
      }
    });
    sQueryThread.start();
  }
  
  public void destroy()
  {
    mCache.clearAll();
  }
  
  public PictureData getPictureDataIfInCache(String paramString, int paramInt1, int paramInt2, Handler arg4, PictureData paramPictureData)
  {
    Object localObject = findPictureDataInCache(paramString, paramInt1, paramInt2, paramString);
    if (localObject != null) {
      return (PictureData)localObject;
    }
    localObject = new Message();
    what = 123;
    ((Message)localObject).setTarget(???);
    synchronized (sQueue)
    {
      paramString = new WorkItem(paramString, mCache, paramInt1, paramInt2, (Message)localObject);
      if (!sQueue.contains(paramString))
      {
        sQueue.add(0, paramString);
        sQueue.notify();
        return paramPictureData;
      }
      sQueuegetsQueueindexOfmPictureLoadedMessage = ((Message)localObject);
    }
  }
  
  class BitmapCache
  {
    private LinkedList<String> mLRU = new LinkedList();
    private HashMap<String, SoftReference<PictureCache.PictureData>> mSoftCache = new HashMap();
    private HashMap<String, PictureCache.PictureData> mStrongCache = new HashMap();
    private long mStrongCacheSize = 0L;
    
    BitmapCache() {}
    
    private long internalComputeCacheSize()
    {
      long l = 0L;
      Iterator localIterator = mStrongCache.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        l += bitmapSize(((PictureCache.PictureData)mStrongCache.get(str)).getDrawable());
      }
      return l;
    }
    
    void add(PictureCache.PictureData paramPictureData)
    {
      synchronized (mLRU)
      {
        int i = mLRU.indexOf(paramPictureData.getHash());
        if (i == 0) {
          return;
        }
        if (i != -1) {
          mLRU.remove(i);
        }
        mLRU.addFirst(paramPictureData.getHash());
        if (i == -1)
        {
          long l = bitmapSize(paramPictureData.getDrawable());
          mStrongCache.put(paramPictureData.getHash(), paramPictureData);
          mStrongCacheSize += l;
          pruneIfCacheExceededMax();
        }
        return;
      }
    }
    
    long bitmapSize(BitmapDrawable paramBitmapDrawable)
    {
      if (paramBitmapDrawable == null) {
        return 0L;
      }
      paramBitmapDrawable = paramBitmapDrawable.getBitmap();
      return paramBitmapDrawable.getRowBytes() * paramBitmapDrawable.getHeight();
    }
    
    void clear(String paramString)
    {
      synchronized (mLRU)
      {
        if (mLRU.indexOf(paramString) != -1)
        {
          PictureCache.PictureData localPictureData = (PictureCache.PictureData)mStrongCache.remove(paramString);
          if (localPictureData != null) {
            mStrongCacheSize -= bitmapSize(localPictureData.getDrawable());
          }
          mLRU.remove(paramString);
        }
        return;
      }
    }
    
    void clearAll()
    {
      synchronized (mLRU)
      {
        mStrongCache.clear();
        mLRU.clear();
        mStrongCacheSize = 0L;
        return;
      }
    }
    
    PictureCache.PictureData get(String paramString)
    {
      synchronized (mLRU)
      {
        paramString = (PictureCache.PictureData)mStrongCache.get(paramString);
        if (paramString != null) {
          add(paramString);
        }
        return paramString;
      }
    }
    
    void pruneIfCacheExceededMax()
    {
      synchronized (mLRU)
      {
        if (strongSize() > 614400L)
        {
          String str = (String)mLRU.removeLast();
          long l = bitmapSize(((PictureCache.PictureData)mStrongCache.remove(str)).getDrawable());
          mStrongCacheSize -= l;
        }
      }
    }
    
    void recomputeCacheSize()
    {
      synchronized (mLRU)
      {
        mStrongCacheSize = internalComputeCacheSize();
        return;
      }
    }
    
    long strongSize()
    {
      return mStrongCacheSize;
    }
  }
  
  static class PictureData
  {
    private String mDescription;
    private BitmapDrawable mDrawable;
    private String mHash;
    private boolean mIsSource;
    private String mTitle;
    private int mType;
    
    PictureData(String paramString)
    {
      mHash = paramString;
    }
    
    String getDescription()
    {
      try
      {
        String str = mDescription;
        return str;
      }
      finally {}
    }
    
    BitmapDrawable getDrawable()
    {
      try
      {
        BitmapDrawable localBitmapDrawable = mDrawable;
        return localBitmapDrawable;
      }
      finally {}
    }
    
    String getHash()
    {
      try
      {
        String str = mHash;
        return str;
      }
      finally {}
    }
    
    String getTitle()
    {
      try
      {
        String str = mTitle;
        return str;
      }
      finally {}
    }
    
    int getType()
    {
      try
      {
        int i = mType;
        return i;
      }
      finally {}
    }
    
    boolean isSourceBitmap()
    {
      try
      {
        boolean bool = mIsSource;
        return bool;
      }
      finally {}
    }
    
    void setDrawable(BitmapDrawable paramBitmapDrawable)
    {
      try
      {
        mDrawable = paramBitmapDrawable;
        return;
      }
      finally {}
    }
    
    void setIsSourceBitmap(boolean paramBoolean)
    {
      try
      {
        mIsSource = paramBoolean;
        return;
      }
      finally {}
    }
    
    void setTitle(String paramString)
    {
      try
      {
        mTitle = paramString;
        return;
      }
      finally {}
    }
    
    void setType(int paramInt)
    {
      try
      {
        mType = paramInt;
        return;
      }
      finally {}
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("[PictureData: ");
      localStringBuilder.append("drawable=").append(mDrawable).append(',');
      localStringBuilder.append("hash=").append(mHash).append(',');
      localStringBuilder.append("desc=").append(mDescription).append(',');
      localStringBuilder.append("title=").append(mTitle).append(',');
      localStringBuilder.append("type=").append(mType).append(',');
      localStringBuilder.append("isSource=").append(mIsSource).append(']');
      return localStringBuilder.toString();
    }
  }
  
  class WorkItem
  {
    PictureCache.BitmapCache mCache;
    int mDesiredBitmapHeight;
    int mDesiredBitmapWidth;
    Message mPictureLoadedMessage;
    String mUrl;
    
    WorkItem(String paramString, PictureCache.BitmapCache paramBitmapCache, int paramInt1, int paramInt2, Message paramMessage)
    {
      mUrl = paramString;
      mCache = paramBitmapCache;
      mDesiredBitmapWidth = paramInt1;
      mDesiredBitmapHeight = paramInt2;
      if ((paramMessage != null) && (obj == null)) {
        obj = new HashMap();
      }
      mPictureLoadedMessage = paramMessage;
    }
    
    public boolean equals(Object paramObject)
    {
      return mUrl.equals(mUrl);
    }
    
    public int hashCode()
    {
      return mUrl.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.PictureCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */