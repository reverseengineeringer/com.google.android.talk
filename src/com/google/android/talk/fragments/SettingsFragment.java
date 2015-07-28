package com.google.android.talk.fragments;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Vibrator;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceCategory;
import android.preference.PreferenceFragment;
import android.preference.PreferenceGroup;
import android.preference.PreferenceScreen;
import android.provider.SearchRecentSuggestions;
import com.google.android.gsf.TalkContract.AccountSettings.QueryMap;
import com.google.android.talk.DependentListPreference;
import com.google.android.talk.FeatureManager;
import com.google.android.talk.HelpUtils;
import com.google.android.talk.ImRingtonePreference;
import com.google.android.talk.SettingsCache;
import com.google.android.talk.TalkApp;
import com.google.android.talk.videochat.EffectsController;
import java.util.Arrays;

public class SettingsFragment
  extends PreferenceFragment
  implements Preference.OnPreferenceChangeListener
{
  private static final String KEY_BLOCKED_BUDDIES = "pref_gtalk_blocked_buddies_key";
  private static final String KEY_CLEAR_HISTORY = "pref_gtalk_clear_history_key";
  private static final String KEY_MANAGE_ACCOUNT = "pref_gtalk_manage_account_key";
  private static final String KEY_MOBILE_INDICATOR = "gtalk-mobile-indicator";
  private static final String KEY_SHOW_AWAY_ON_IDLE = "gtalk-show-away-on-idle";
  private static final String KEY_SHOW_FRIEND_NOTIFICATIONS = "gtalk-show-friend-notifications";
  private static final String KEY_TERMS = "gtalk-terms-key";
  private static final String KEY_TEXT_GROUP = "text_notification_group";
  private static final String KEY_TEXT_NOTIFICATIONS = "gtalk-enable-notifications";
  private static final String KEY_TEXT_RINGTONE = "gtalk-text-ringtone";
  private static final String KEY_TEXT_VIBRATE_WHEN = "gtalk-vibrate-when";
  private static final String KEY_VIDEO_GROUP = "video_notification_group";
  private static final String KEY_VIDEO_IMAGE_STABILIZATION = "gtalk-video-image-image-stabilization";
  private static final String KEY_VIDEO_NOTIFICATIONS = "gtalk-video-enable-notifications";
  private static final String KEY_VIDEO_RINGTONE = "gtalk-video-ringtone";
  private static final String KEY_VIDEO_VIBRATE_WHEN = "gtalk-video-vibrate-when";
  private static final int VIDEO_IMAGE_STABILIZATION_FACE_TRACKING_INDEX = 3;
  private static final int VIDEO_IMAGE_STABILIZATION_LOW_INDEX = 1;
  private static final int VIDEO_IMAGE_STABILIZATION_MEDIUM_INDEX = 2;
  private static final int VIDEO_IMAGE_STABILIZATION_OFF_INDEX = 0;
  private long mAccountId;
  private Vibrator mVibrator;
  
  private void adjustImageStabilizationSummary(ListPreference paramListPreference, TalkContract.AccountSettings.QueryMap paramQueryMap, String paramString)
  {
    int i;
    if ("off".equals(paramString)) {
      i = 2131493007;
    }
    for (;;)
    {
      paramListPreference.setSummary(i);
      return;
      if ("low".equals(paramString)) {
        i = 2131493008;
      } else if ("medium".equals(paramString)) {
        i = 2131493009;
      } else if ("virtual".equals(paramString)) {
        i = 2131493010;
      } else {
        i = 2131493009;
      }
    }
  }
  
  private void adjustTextNotificationSummary(ListPreference paramListPreference, TalkContract.AccountSettings.QueryMap paramQueryMap, String paramString)
  {
    int i = 0;
    if ("popup".equals(paramString)) {
      i = 2131492992;
    }
    for (;;)
    {
      paramListPreference.setSummary(i);
      return;
      if ("statusbar".equals(paramString)) {
        i = 2131492993;
      } else if ("off".equals(paramString)) {
        i = 2131492991;
      }
    }
  }
  
  private void adjustVibrateSummary(ListPreference paramListPreference, TalkContract.AccountSettings.QueryMap paramQueryMap, String paramString)
  {
    int i = 0;
    if ("always".equals(paramString)) {
      i = 2131492995;
    }
    for (;;)
    {
      paramListPreference.setSummary(i);
      return;
      if ("silent".equals(paramString)) {
        i = 2131492996;
      } else if ("never".equals(paramString)) {
        i = 2131492997;
      }
    }
  }
  
  private void adjustVideoNotificationSummary(ListPreference paramListPreference, TalkContract.AccountSettings.QueryMap paramQueryMap, String paramString)
  {
    int i = 0;
    if ("popup".equals(paramString)) {
      i = 2131492999;
    }
    for (;;)
    {
      paramListPreference.setSummary(i);
      return;
      if ("statusbar".equals(paramString)) {
        i = 2131493000;
      }
    }
  }
  
  private void registerListeners()
  {
    Object localObject = getPreferenceScreen();
    if (mVibrator.hasVibrator())
    {
      ((PreferenceScreen)localObject).findPreference("gtalk-vibrate-when").setOnPreferenceChangeListener(this);
      localPreference = ((PreferenceScreen)localObject).findPreference("gtalk-video-vibrate-when");
      if (localPreference != null) {
        localPreference.setOnPreferenceChangeListener(this);
      }
    }
    ((PreferenceScreen)localObject).findPreference("gtalk-enable-notifications").setOnPreferenceChangeListener(this);
    Preference localPreference = ((PreferenceScreen)localObject).findPreference("gtalk-video-enable-notifications");
    if (localPreference != null) {
      localPreference.setOnPreferenceChangeListener(this);
    }
    localObject = ((PreferenceScreen)localObject).findPreference("gtalk-video-image-image-stabilization");
    if (localObject != null) {
      ((Preference)localObject).setOnPreferenceChangeListener(this);
    }
  }
  
  private void setInitialValues()
  {
    if (mAccountId == 0L) {
      return;
    }
    TalkContract.AccountSettings.QueryMap localQueryMap = SettingsCache.getInstance().getSettingsMap(mAccountId);
    ((CheckBoxPreference)findPreference("gtalk-mobile-indicator")).setChecked(localQueryMap.getShowMobileIndicator(getActivity()));
    Object localObject = (DependentListPreference)findPreference("gtalk-enable-notifications");
    ((DependentListPreference)localObject).setValue(localQueryMap.getTextNotification());
    ((DependentListPreference)localObject).setDisabledEntry("off");
    adjustTextNotificationSummary((ListPreference)localObject, localQueryMap, localQueryMap.getTextNotification());
    localObject = (ListPreference)findPreference("gtalk-video-enable-notifications");
    ((ListPreference)localObject).setValue(localQueryMap.getVideoNotification());
    adjustVideoNotificationSummary((ListPreference)localObject, localQueryMap, localQueryMap.getVideoNotification());
    boolean bool2 = mVibrator.hasVibrator();
    localObject = (ListPreference)findPreference("gtalk-vibrate-when");
    if (bool2)
    {
      ((ListPreference)localObject).setValue(localQueryMap.getTextVibrateWhen());
      adjustVibrateSummary((ListPreference)localObject, localQueryMap, localQueryMap.getTextVibrateWhen());
    }
    boolean bool1;
    boolean bool3;
    for (;;)
    {
      bool1 = FeatureManager.videoChatEnabled();
      bool3 = FeatureManager.audioChatEnabled();
      if ((bool1) || (bool3)) {
        break label313;
      }
      localObject = (PreferenceGroup)findPreference("video_notification_group");
      getPreferenceScreen().removePreference((Preference)localObject);
      ((CheckBoxPreference)findPreference("gtalk-show-away-on-idle")).setChecked(localQueryMap.getShowAwayOnIdle());
      ((CheckBoxPreference)findPreference("gtalk-show-friend-notifications")).setChecked(localQueryMap.getNotifyFriendInvitation());
      localObject = (ImRingtonePreference)findPreference("gtalk-text-ringtone");
      ((ImRingtonePreference)localObject).setAccountId(mAccountId);
      ((ImRingtonePreference)localObject).setIMRingtoneType("ringtone");
      localObject = (ImRingtonePreference)findPreference("gtalk-video-ringtone");
      if (localObject == null) {
        break;
      }
      ((ImRingtonePreference)localObject).setAccountId(mAccountId);
      ((ImRingtonePreference)localObject).setIMRingtoneType("ringtone-video");
      return;
      ((PreferenceCategory)findPreference("text_notification_group")).removePreference((Preference)localObject);
    }
    label313:
    localObject = (ListPreference)findPreference("gtalk-video-vibrate-when");
    if (bool2)
    {
      ((ListPreference)localObject).setValue(localQueryMap.getVideoVibrateWhen());
      adjustVibrateSummary((ListPreference)localObject, localQueryMap, localQueryMap.getVideoVibrateWhen());
    }
    ListPreference localListPreference;
    for (;;)
    {
      localListPreference = (ListPreference)findPreference("gtalk-video-image-image-stabilization");
      bool2 = EffectsController.isEffectAvailable(1);
      bool3 = EffectsController.isEffectAvailable(2);
      if ((bool1) && ((bool2) || (bool3))) {
        break label420;
      }
      ((PreferenceCategory)findPreference("video_notification_group")).removePreference(localListPreference);
      break;
      ((PreferenceCategory)findPreference("video_notification_group")).removePreference((Preference)localObject);
    }
    label420:
    if (!bool3)
    {
      localListPreference.setEntries((CharSequence[])Arrays.copyOfRange(localListPreference.getEntries(), 0, 3));
      localListPreference.setEntryValues((CharSequence[])Arrays.copyOfRange(localListPreference.getEntryValues(), 0, 3));
    }
    for (;;)
    {
      String str = localQueryMap.getVideoImageStabilization();
      localObject = str;
      if (str == null) {
        localObject = FeatureManager.getDefaultVideoChatEffect();
      }
      localListPreference.setValue((String)localObject);
      adjustImageStabilizationSummary(localListPreference, localQueryMap, (String)localObject);
      break;
      if (!bool2)
      {
        localObject = localListPreference.getEntries();
        localListPreference.setEntries(new CharSequence[] { localObject[0], localObject[3] });
        localObject = localListPreference.getEntryValues();
        localListPreference.setEntryValues(new CharSequence[] { localObject[0], localObject[3] });
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mVibrator = ((Vibrator)getActivity().getSystemService("vibrator"));
    mAccountId = getArguments().getLong("accountId");
    addPreferencesFromResource(2131099648);
    setInitialValues();
  }
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    boolean bool = false;
    String str = paramPreference.getKey();
    TalkContract.AccountSettings.QueryMap localQueryMap;
    if ((paramPreference instanceof ListPreference))
    {
      localQueryMap = SettingsCache.getInstance().getSettingsMap(mAccountId);
      if (!"gtalk-vibrate-when".equals(str)) {
        break label64;
      }
      localQueryMap.setTextVibrateWhen(paramObject.toString());
      adjustVibrateSummary((ListPreference)paramPreference, localQueryMap, (String)paramObject);
    }
    for (;;)
    {
      bool = true;
      return bool;
      label64:
      if ("gtalk-video-vibrate-when".equals(str))
      {
        localQueryMap.setVideoVibrateWhen(paramObject.toString());
        adjustVibrateSummary((ListPreference)paramPreference, localQueryMap, (String)paramObject);
      }
      else if ("gtalk-enable-notifications".equals(str))
      {
        localQueryMap.setTextNotification((String)paramObject);
        adjustTextNotificationSummary((ListPreference)paramPreference, localQueryMap, (String)paramObject);
      }
      else if ("gtalk-video-enable-notifications".equals(str))
      {
        localQueryMap.setVideoNotification((String)paramObject);
        adjustVideoNotificationSummary((ListPreference)paramPreference, localQueryMap, (String)paramObject);
      }
      else if ("gtalk-video-image-image-stabilization".equals(str))
      {
        localQueryMap.setVideoImageStabilization(paramObject.toString());
        adjustImageStabilizationSummary((ListPreference)paramPreference, localQueryMap, (String)paramObject);
      }
    }
  }
  
  public boolean onPreferenceTreeClick(PreferenceScreen paramPreferenceScreen, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    TalkContract.AccountSettings.QueryMap localQueryMap = SettingsCache.getInstance().getSettingsMap(mAccountId);
    if ((paramPreference instanceof CheckBoxPreference))
    {
      boolean bool = ((CheckBoxPreference)paramPreference).isChecked();
      if (str.equals("gtalk-mobile-indicator")) {
        localQueryMap.setShowMobileIndicator(bool);
      }
      do
      {
        return true;
        if (str.equals("gtalk-show-away-on-idle"))
        {
          localQueryMap.setShowAwayOnIdle(bool);
          return true;
        }
      } while (!str.equals("gtalk-show-friend-notifications"));
      localQueryMap.setNotifyFriendInvitation(bool);
      return true;
    }
    if ("pref_gtalk_clear_history_key".equals(str))
    {
      new ClearSearchDialogFragment().show(getFragmentManager(), "dialog");
      return true;
    }
    if ("pref_gtalk_manage_account_key".equals(str))
    {
      paramPreferenceScreen = new Intent("android.settings.SYNC_SETTINGS");
      paramPreferenceScreen.putExtra("authorities", new String[] { "gmail-ls" });
      paramPreferenceScreen.setFlags(268435456);
      startActivity(paramPreferenceScreen);
      return true;
    }
    if ("pref_gtalk_blocked_buddies_key".equals(str)) {
      paramPreference.getExtras().putLong("accountId", mAccountId);
    }
    while (!"gtalk-terms-key".equals(str)) {
      return super.onPreferenceTreeClick(paramPreferenceScreen, paramPreference);
    }
    HelpUtils.showTermsOfService(getActivity());
    return true;
  }
  
  public void onResume()
  {
    super.onResume();
    registerListeners();
  }
  
  public static class ClearSearchDialogFragment
    extends DialogFragment
  {
    public Dialog onCreateDialog(Bundle paramBundle)
    {
      new AlertDialog.Builder(getActivity()).setTitle(2131493038).setMessage(2131493039).setPositiveButton(17039370, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface = getActivity();
          if (paramAnonymousDialogInterface != null)
          {
            TalkApp.getApplication(paramAnonymousDialogInterface).getRecentSuggestions().clearHistory();
            dismiss();
          }
        }
      }).setNegativeButton(17039360, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          dismiss();
        }
      }).setIconAttribute(16843605).create();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SettingsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */