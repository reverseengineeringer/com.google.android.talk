package com.google.android.talk;

import android.content.Context;
import android.net.Uri;
import android.preference.RingtonePreference;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import com.google.android.gsf.TalkContract.AccountSettings.QueryMap;

public class ImRingtonePreference
  extends RingtonePreference
{
  private boolean isTalkPreference;
  private long mAccountId;
  
  public ImRingtonePreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected Uri onRestoreRingtone()
  {
    Object localObject = SettingsCache.getInstance().getSettingsMap(mAccountId);
    if (isTalkPreference) {}
    for (localObject = ((TalkContract.AccountSettings.QueryMap)localObject).getTextRingtoneURI();; localObject = ((TalkContract.AccountSettings.QueryMap)localObject).getVideoRingtoneURI())
    {
      if (TalkApp.queryDebugLevel() >= 2) {
        Log.v("talk", "onRestoreRingtone() finds uri=" + (String)localObject + " key=" + getKey());
      }
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        break;
      }
      return null;
    }
    return Uri.parse((String)localObject);
  }
  
  protected void onSaveRingtone(Uri paramUri)
  {
    TalkContract.AccountSettings.QueryMap localQueryMap = SettingsCache.getInstance().getSettingsMap(mAccountId);
    if (TalkApp.queryDebugLevel() >= 2) {
      Log.v("talk", "onSaveRingtone(" + paramUri + ")");
    }
    if (paramUri == null) {}
    for (paramUri = ""; isTalkPreference; paramUri = paramUri.toString())
    {
      localQueryMap.setTextRingtoneURI(paramUri);
      return;
    }
    localQueryMap.setVideoRingtoneURI(paramUri);
  }
  
  protected void onSetInitialValue(boolean paramBoolean, Object paramObject)
  {
    super.onSetInitialValue(true, paramObject);
  }
  
  public void setAccountId(long paramLong)
  {
    mAccountId = paramLong;
  }
  
  public void setIMRingtoneType(String paramString)
  {
    isTalkPreference = "ringtone".equals(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.ImRingtonePreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */