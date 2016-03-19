package org.webrtc.voiceengine;

import android.media.AudioRecord;
import android.media.audiofx.AcousticEchoCanceler;
import android.media.audiofx.AudioEffect;
import android.media.audiofx.AudioEffect.Descriptor;
import android.media.audiofx.AutomaticGainControl;
import android.media.audiofx.NoiseSuppressor;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Log;
import java.util.UUID;

public class AudioEffectsJB
{
  private static int EFFECT_AUTO = 0;
  private static int EFFECT_NONE = 0;
  private static int EFFECT_PLATFORM = 0;
  private static int EFFECT_WEBRTC = 0;
  private static final UUID SOFTWARE_ACOUSTIC_ECHO_CANCELER;
  private static final UUID SOFTWARE_AUTOMATIC_GAIN_CONTROL;
  private static final UUID SOFTWARE_NOISE_SUPPRESSOR = UUID.fromString("c06c8400-8e06-11e0-9cb6-0002a5d5c51b");
  private static final String TAG = "AudioEffectsJB";
  private static boolean _isInitialized;
  private static Boolean _shouldUsePlatformAcousticEchoCanceler = null;
  private static Boolean _shouldUsePlatformAutomaticGainControl = null;
  private static Boolean _shouldUsePlatformNoiseSuppressor;
  private static Boolean _shouldUseWebRTCAcousticEchoCanceler;
  private static Boolean _shouldUseWebRTCAutomaticGainControl;
  private static Boolean _shouldUseWebRTCNoiseSuppressor;
  private static int _useAcousticEchoCancelerMode;
  private static int _useAutomaticGainControlMode;
  private static int _useNoiseSuppressorMode;
  private AutomaticGainControl _autoGainController = null;
  private AcousticEchoCanceler _echoCanceler = null;
  private NoiseSuppressor _noiseSuppressor = null;
  
  static
  {
    SOFTWARE_ACOUSTIC_ECHO_CANCELER = UUID.fromString("bb392ec0-8d4d-11e0-a896-0002a5d5c51b");
    SOFTWARE_AUTOMATIC_GAIN_CONTROL = UUID.fromString("aa8130e0-66fc-11e0-bad0-0002a5d5c51b");
    EFFECT_AUTO = 0;
    EFFECT_PLATFORM = 1;
    EFFECT_WEBRTC = 2;
    EFFECT_NONE = 3;
    _isInitialized = false;
    _shouldUseWebRTCNoiseSuppressor = null;
    _shouldUseWebRTCAcousticEchoCanceler = null;
    _shouldUseWebRTCAutomaticGainControl = null;
    _shouldUsePlatformNoiseSuppressor = null;
  }
  
  private static void assertIsTrue(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new AssertionError("Expected condition to be true");
    }
  }
  
  public static void initialize(String paramString1, String paramString2, String paramString3)
  {
    _useNoiseSuppressorMode = mapMode(paramString1);
    _useAcousticEchoCancelerMode = mapMode(paramString2);
    _useAutomaticGainControlMode = mapMode(paramString3);
    _isInitialized = true;
  }
  
  private static boolean isAtLeastJB()
  {
    return Build.VERSION.SDK_INT >= 16;
  }
  
  private static int mapMode(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return EFFECT_AUTO;
    }
    if (paramString.equalsIgnoreCase("auto")) {
      return EFFECT_AUTO;
    }
    if (paramString.equalsIgnoreCase("platform")) {
      return EFFECT_PLATFORM;
    }
    if (paramString.equalsIgnoreCase("webrtc")) {
      return EFFECT_WEBRTC;
    }
    if (paramString.equalsIgnoreCase("none")) {
      return EFFECT_NONE;
    }
    return EFFECT_AUTO;
  }
  
  public static boolean shouldUsePlatformAcousticEchoCanceler()
  {
    boolean bool2 = false;
    assertIsTrue(_isInitialized);
    if (_shouldUsePlatformAcousticEchoCanceler == null)
    {
      boolean bool1;
      if (_useAcousticEchoCancelerMode != EFFECT_AUTO)
      {
        bool1 = bool2;
        if (_useAcousticEchoCancelerMode != EFFECT_PLATFORM) {}
      }
      else
      {
        bool1 = bool2;
        if (isAtLeastJB())
        {
          bool1 = bool2;
          if (AcousticEchoCanceler.isAvailable())
          {
            bool1 = true;
            localObject = AudioEffect.queryEffects();
            int j = localObject.length;
            int i = 0;
            while (i < j)
            {
              if (uuid.equals(SOFTWARE_ACOUSTIC_ECHO_CANCELER)) {
                bool1 = false;
              }
              i += 1;
            }
          }
        }
      }
      Object localObject = Boolean.valueOf(bool1);
      _shouldUsePlatformAcousticEchoCanceler = (Boolean)localObject;
      localObject = String.valueOf(localObject);
      new StringBuilder(String.valueOf(localObject).length() + 39).append("shouldUsePlatformAcousticEchoCanceler: ").append((String)localObject);
    }
    return _shouldUsePlatformAcousticEchoCanceler.booleanValue();
  }
  
  public static boolean shouldUsePlatformAutomaticGainControl()
  {
    boolean bool2 = false;
    assertIsTrue(_isInitialized);
    if (_shouldUsePlatformAutomaticGainControl == null)
    {
      boolean bool1;
      if (_useAutomaticGainControlMode != EFFECT_AUTO)
      {
        bool1 = bool2;
        if (_useAutomaticGainControlMode != EFFECT_PLATFORM) {}
      }
      else
      {
        bool1 = bool2;
        if (isAtLeastJB())
        {
          bool1 = bool2;
          if (AutomaticGainControl.isAvailable())
          {
            bool1 = true;
            localObject = AudioEffect.queryEffects();
            int j = localObject.length;
            int i = 0;
            while (i < j)
            {
              if (uuid.equals(SOFTWARE_AUTOMATIC_GAIN_CONTROL)) {
                bool1 = false;
              }
              i += 1;
            }
          }
        }
      }
      Object localObject = Boolean.valueOf(bool1);
      _shouldUsePlatformAutomaticGainControl = (Boolean)localObject;
      localObject = String.valueOf(localObject);
      new StringBuilder(String.valueOf(localObject).length() + 39).append("shouldUsePlatformAutomaticGainControl: ").append((String)localObject);
    }
    return _shouldUsePlatformAutomaticGainControl.booleanValue();
  }
  
  public static boolean shouldUsePlatformNoiseSuppressor()
  {
    boolean bool2 = false;
    assertIsTrue(_isInitialized);
    if (_shouldUsePlatformNoiseSuppressor == null)
    {
      boolean bool1;
      if (_useNoiseSuppressorMode != EFFECT_AUTO)
      {
        bool1 = bool2;
        if (_useNoiseSuppressorMode != EFFECT_PLATFORM) {}
      }
      else
      {
        bool1 = bool2;
        if (isAtLeastJB())
        {
          bool1 = bool2;
          if (NoiseSuppressor.isAvailable())
          {
            bool1 = true;
            localObject = AudioEffect.queryEffects();
            int j = localObject.length;
            int i = 0;
            while (i < j)
            {
              if (uuid.equals(SOFTWARE_NOISE_SUPPRESSOR)) {
                bool1 = false;
              }
              i += 1;
            }
          }
        }
      }
      Object localObject = Boolean.valueOf(bool1);
      _shouldUsePlatformNoiseSuppressor = (Boolean)localObject;
      localObject = String.valueOf(localObject);
      new StringBuilder(String.valueOf(localObject).length() + 34).append("shouldUsePlatformNoiseSuppressor: ").append((String)localObject);
    }
    return _shouldUsePlatformNoiseSuppressor.booleanValue();
  }
  
  public static boolean shouldUseWebRTCAcousticEchoCanceler()
  {
    boolean bool = true;
    assertIsTrue(_isInitialized);
    if (_shouldUseWebRTCAcousticEchoCanceler == null) {
      if (_useAcousticEchoCancelerMode != EFFECT_WEBRTC) {
        break label71;
      }
    }
    for (;;)
    {
      Object localObject = Boolean.valueOf(bool);
      _shouldUseWebRTCAcousticEchoCanceler = (Boolean)localObject;
      localObject = String.valueOf(localObject);
      new StringBuilder(String.valueOf(localObject).length() + 37).append("shouldUseWebRTCAcousticEchoCanceler: ").append((String)localObject);
      return _shouldUseWebRTCAcousticEchoCanceler.booleanValue();
      label71:
      if ((_useAcousticEchoCancelerMode != EFFECT_AUTO) || (shouldUsePlatformAcousticEchoCanceler())) {
        bool = false;
      }
    }
  }
  
  public static boolean shouldUseWebRTCAutomaticGainControl()
  {
    boolean bool = true;
    assertIsTrue(_isInitialized);
    if (_shouldUseWebRTCAutomaticGainControl == null) {
      if (_useAutomaticGainControlMode != EFFECT_WEBRTC) {
        break label71;
      }
    }
    for (;;)
    {
      Object localObject = Boolean.valueOf(bool);
      _shouldUseWebRTCAutomaticGainControl = (Boolean)localObject;
      localObject = String.valueOf(localObject);
      new StringBuilder(String.valueOf(localObject).length() + 37).append("shouldUseWebRTCAutomaticGainControl: ").append((String)localObject);
      return _shouldUseWebRTCAutomaticGainControl.booleanValue();
      label71:
      if ((_useAutomaticGainControlMode != EFFECT_AUTO) || (shouldUsePlatformAutomaticGainControl())) {
        bool = false;
      }
    }
  }
  
  public static boolean shouldUseWebRTCNoiseSuppressor()
  {
    boolean bool = true;
    assertIsTrue(_isInitialized);
    if (_shouldUseWebRTCNoiseSuppressor == null) {
      if (_useNoiseSuppressorMode != EFFECT_WEBRTC) {
        break label71;
      }
    }
    for (;;)
    {
      Object localObject = Boolean.valueOf(bool);
      _shouldUseWebRTCNoiseSuppressor = (Boolean)localObject;
      localObject = String.valueOf(localObject);
      new StringBuilder(String.valueOf(localObject).length() + 32).append("shouldUseWebRTCNoiseSuppressor: ").append((String)localObject);
      return _shouldUseWebRTCNoiseSuppressor.booleanValue();
      label71:
      if ((_useNoiseSuppressorMode != EFFECT_AUTO) || (shouldUsePlatformNoiseSuppressor())) {
        bool = false;
      }
    }
  }
  
  public void enable(AudioRecord paramAudioRecord)
  {
    for (;;)
    {
      boolean bool1;
      boolean bool2;
      try
      {
        _noiseSuppressor = NoiseSuppressor.create(paramAudioRecord.getAudioSessionId());
        if (_noiseSuppressor != null)
        {
          if (Log.isLoggable("AudioEffectsJB", 2))
          {
            localObject = _noiseSuppressor.getDescriptor();
            str2 = String.valueOf(name);
            if (str2.length() == 0) {
              continue;
            }
            "name: ".concat(str2);
            str2 = String.valueOf(implementor);
            if (str2.length() == 0) {
              continue;
            }
            "implementor: ".concat(str2);
            localObject = String.valueOf(uuid);
            new StringBuilder(String.valueOf(localObject).length() + 6).append("UUID: ").append((String)localObject);
          }
          bool1 = _noiseSuppressor.getEnabled();
          bool2 = shouldUsePlatformNoiseSuppressor();
          if (_noiseSuppressor.setEnabled(bool2) == 0) {
            break label931;
          }
          Log.e("AudioEffectsJB", "FAILED: setEnabled did not return AudioEffect.SUCCESS");
          break label931;
          if (!_noiseSuppressor.getEnabled()) {
            continue;
          }
          str3 = "enabled";
          new StringBuilder(String.valueOf(localObject).length() + 45 + String.valueOf(str2).length() + String.valueOf(str3).length()).append("NoiseSuppressor: was ").append((String)localObject).append(", isSupported: ").append(str2).append(", is now ").append(str3);
        }
      }
      catch (Exception localException2)
      {
        try
        {
          _echoCanceler = AcousticEchoCanceler.create(paramAudioRecord.getAudioSessionId());
          if (_echoCanceler != null)
          {
            if (Log.isLoggable("AudioEffectsJB", 2))
            {
              localObject = _echoCanceler.getDescriptor();
              str2 = String.valueOf(name);
              if (str2.length() == 0) {
                continue;
              }
              "name: ".concat(str2);
              str2 = String.valueOf(implementor);
              if (str2.length() == 0) {
                continue;
              }
              "implementor: ".concat(str2);
              localObject = String.valueOf(uuid);
              new StringBuilder(String.valueOf(localObject).length() + 6).append("UUID: ").append((String)localObject);
            }
            bool1 = _echoCanceler.getEnabled();
            bool2 = shouldUsePlatformAcousticEchoCanceler();
            if (_echoCanceler.setEnabled(bool2) == 0) {
              break label952;
            }
            Log.e("AudioEffectsJB", "FAILED: setEnabled did not return AudioEffect.SUCCESS");
            break label952;
            label409:
            if (!_echoCanceler.getEnabled()) {
              continue;
            }
            str3 = "enabled";
            new StringBuilder(String.valueOf(localObject).length() + 50 + String.valueOf(str2).length() + String.valueOf(str3).length()).append("AcousticEchoCanceler: was ").append((String)localObject).append(", isSupported: ").append(str2).append(", is now ").append(str3);
          }
        }
        catch (Exception localException2)
        {
          try
          {
            Object localObject;
            String str3;
            _autoGainController = AutomaticGainControl.create(paramAudioRecord.getAudioSessionId());
            if (_autoGainController != null)
            {
              if (Log.isLoggable("AudioEffectsJB", 2))
              {
                paramAudioRecord = _autoGainController.getDescriptor();
                localObject = String.valueOf(name);
                if (((String)localObject).length() != 0)
                {
                  "name: ".concat((String)localObject);
                  localObject = String.valueOf(implementor);
                  if (((String)localObject).length() == 0) {
                    break label910;
                  }
                  "implementor: ".concat((String)localObject);
                  paramAudioRecord = String.valueOf(uuid);
                  new StringBuilder(String.valueOf(paramAudioRecord).length() + 6).append("UUID: ").append(paramAudioRecord);
                }
              }
              else
              {
                bool1 = _autoGainController.getEnabled();
                bool2 = shouldUsePlatformAutomaticGainControl();
                if (_autoGainController.setEnabled(bool2) == 0) {
                  break label973;
                }
                Log.e("AudioEffectsJB", "FAILED: setEnabled did not return AudioEffect.SUCCESS");
                break label973;
                label649:
                if (!_autoGainController.getEnabled()) {
                  break label923;
                }
                str2 = "enabled";
                new StringBuilder(String.valueOf(paramAudioRecord).length() + 50 + String.valueOf(localObject).length() + String.valueOf(str2).length()).append("AutomaticGainControl: was ").append(paramAudioRecord).append(", isSupported: ").append((String)localObject).append(", is now ").append(str2);
              }
            }
            else
            {
              return;
              new String("name: ");
              continue;
              localException1 = localException1;
              Log.e("AudioEffectsJB", "NoiseSuppressor effect failed");
              if (_noiseSuppressor != null) {
                _noiseSuppressor.release();
              }
              _noiseSuppressor = null;
              continue;
              new String("implementor: ");
              continue;
              str3 = "disabled";
              continue;
              new String("name: ");
              continue;
              localException2 = localException2;
              Log.e("AudioEffectsJB", "AcousticEchoCanceler effect failed");
              if (_echoCanceler != null) {
                _echoCanceler.release();
              }
              _echoCanceler = null;
              continue;
              new String("implementor: ");
              continue;
              str3 = "disabled";
              continue;
            }
            new String("name: ");
            continue;
            new String("implementor: ");
          }
          catch (Exception paramAudioRecord)
          {
            Log.e("AudioEffectsJB", "AutomaticGainControl effect failed");
            if (_autoGainController != null) {
              _autoGainController.release();
            }
            _autoGainController = null;
            return;
          }
        }
      }
      label910:
      continue;
      label923:
      String str2 = "disabled";
      continue;
      label931:
      if (bool1)
      {
        str1 = "enabled";
        label940:
        if (!bool2) {
          break label1001;
        }
        str2 = "true";
        continue;
        label952:
        if (!bool1) {
          break label1009;
        }
        str1 = "enabled";
        label961:
        if (!bool2) {
          break label1017;
        }
        str2 = "true";
        continue;
        label973:
        if (!bool1) {
          break label1025;
        }
      }
      label1001:
      label1009:
      label1017:
      label1025:
      for (paramAudioRecord = "enabled";; paramAudioRecord = "disabled")
      {
        if (!bool2) {
          break label1032;
        }
        str1 = "true";
        break label649;
        str1 = "disabled";
        break label940;
        str2 = "false";
        break;
        str1 = "disabled";
        break label961;
        str2 = "false";
        break label409;
      }
      label1032:
      String str1 = "false";
    }
  }
  
  public void release()
  {
    if (_echoCanceler != null)
    {
      _echoCanceler.release();
      _echoCanceler = null;
    }
    if (_autoGainController != null)
    {
      _autoGainController.release();
      _autoGainController = null;
    }
    if (_noiseSuppressor != null)
    {
      _noiseSuppressor.release();
      _noiseSuppressor = null;
    }
  }
}

/* Location:
 * Qualified Name:     org.webrtc.voiceengine.AudioEffectsJB
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */