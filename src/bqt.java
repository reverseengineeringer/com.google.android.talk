import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Parcelable;
import android.support.v4.content.FileProvider;
import com.google.android.apps.hangouts.conversation.v2.PreviewImageActivity;
import java.io.File;

public final class bqt
{
  private static final String a;
  
  static
  {
    try
    {
      Class.forName("com.google.android.apps.hangouts.defaultbuild.EsProvider");
      str1 = "com.google.android.apps.hangouts.conversation.v2";
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        String str1;
        String str2 = "com.google.android.apps.hangouts.conversation.v2altbuild";
      }
    }
    a = str1;
  }
  
  public static Intent a(Context paramContext)
  {
    Object localObject1 = bmo.a(1);
    if ("".equals(localObject1)) {
      return null;
    }
    Object localObject2 = new File(Environment.getExternalStorageDirectory(), (String)localObject1);
    localObject1 = Uri.fromFile((File)localObject2);
    localObject2 = FileProvider.a(paramContext, a, (File)localObject2);
    bdp localbdp = (bdp)ilh.a(paramContext, bdp.class);
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    if (localbdp.a("babel_use_content_uri_for_camera", true))
    {
      localIntent.putExtra("output", (Parcelable)localObject2);
      localIntent.setFlags(3);
      localObject1 = paramContext.getResources().getString(aal.kf);
      localIntent.setClipData(ClipData.newUri(paramContext.getContentResolver(), (CharSequence)localObject1, (Uri)localObject2));
      localIntent.setFlags(3);
    }
    for (;;)
    {
      return localIntent;
      localIntent.putExtra("output", (Parcelable)localObject1);
    }
  }
  
  public static Intent a(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramContext, PreviewImageActivity.class);
    localIntent.putExtra("photo_url", paramString);
    localIntent.putExtra("is_video", false);
    localIntent.putExtra("account_id", ((hpu)ilh.a(paramContext, hpu.class)).a());
    return localIntent;
  }
  
  public static Intent a(boolean paramBoolean)
  {
    Intent localIntent = new Intent("android.intent.action.GET_CONTENT");
    localIntent.addCategory("android.intent.category.OPENABLE");
    if (paramBoolean)
    {
      if (Build.VERSION.SDK_INT >= 19)
      {
        localIntent.setType("*/*");
        localIntent.putExtra("android.intent.extra.MIME_TYPES", new String[] { "image/*", "video/*" });
        return localIntent;
      }
      localIntent.setType("image/*,video/*");
      return localIntent;
    }
    localIntent.setType("image/*");
    return localIntent;
  }
  
  public static Intent b(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramContext, PreviewImageActivity.class);
    localIntent.putExtra("photo_url", paramString);
    localIntent.putExtra("is_video", true);
    localIntent.putExtra("account_id", ((hpu)ilh.a(paramContext, hpu.class)).a());
    return localIntent;
  }
}

/* Location:
 * Qualified Name:     bqt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */