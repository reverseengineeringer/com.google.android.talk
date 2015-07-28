package com.gipscorp.voiceengine;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Process;
import android.util.Log;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantLock;

class GIPSSndCardAndroid
{
  private AudioManager _audioManager;
  private AudioRecord _audioRecord = null;
  private AudioTrack _audioTrack = null;
  private int _bufferedPlaySamples = 0;
  private int _bufferedRecSamples = 0;
  private Context _context;
  private boolean _doPlayInit = true;
  private boolean _doRecInit = true;
  private boolean _isPlaying = false;
  private boolean _isRecording = false;
  private ByteBuffer _playBuffer;
  private final ReentrantLock _playLock = new ReentrantLock();
  private int _playPosition = 0;
  private ByteBuffer _recBuffer;
  private final ReentrantLock _recLock = new ReentrantLock();
  private byte[] _tempBufPlay;
  private byte[] _tempBufRec;
  final String logTag = "GIPS Snd Card";
  
  GIPSSndCardAndroid()
  {
    try
    {
      _playBuffer = ByteBuffer.allocateDirect(960);
      _recBuffer = ByteBuffer.allocateDirect(960);
      _tempBufPlay = new byte['π'];
      _tempBufRec = new byte['π'];
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        GIPSLog(localException.getMessage());
      }
    }
  }
  
  private void GIPSLog(String paramString)
  {
    Log.d("GIPS Snd Card", paramString);
  }
  
  private void GIPSLogErr(String paramString)
  {
    Log.e("GIPS Snd Card", paramString);
  }
  
  private int GetPlayoutVolume()
  {
    if ((_audioManager == null) && (_context != null)) {
      _audioManager = ((AudioManager)_context.getSystemService("audio"));
    }
    int i = -1;
    if (_audioManager != null) {
      i = _audioManager.getStreamVolume(0);
    }
    return i;
  }
  
  private int InitPlayback(int paramInt)
  {
    int j = AudioTrack.getMinBufferSize(paramInt, 2, 2);
    int i = j;
    if (j < 6000) {
      i = j * 2;
    }
    _bufferedPlaySamples = 0;
    if (_audioTrack != null)
    {
      _audioTrack.release();
      _audioTrack = null;
    }
    try
    {
      _audioTrack = new AudioTrack(0, paramInt, 2, 2, i, 1);
      if (_audioTrack.getState() != 1) {
        return -1;
      }
    }
    catch (Exception localException)
    {
      GIPSLog(localException.getMessage());
      return -1;
    }
    if ((_audioManager == null) && (_context != null)) {
      _audioManager = ((AudioManager)_context.getSystemService("audio"));
    }
    if (_audioManager == null) {
      return 0;
    }
    return _audioManager.getStreamMaxVolume(0);
  }
  
  private int InitRecording(int paramInt1, int paramInt2)
  {
    int i = AudioRecord.getMinBufferSize(paramInt2, 2, 2);
    _bufferedRecSamples = (paramInt2 * 5 / 200);
    if (_audioRecord != null)
    {
      _audioRecord.release();
      _audioRecord = null;
    }
    try
    {
      _audioRecord = new AudioRecord(paramInt1, paramInt2, 2, 2, i * 2);
      if (_audioRecord.getState() != 1) {
        return -1;
      }
    }
    catch (Exception localException)
    {
      GIPSLog(localException.getMessage());
      return -1;
    }
    return _bufferedRecSamples;
  }
  
  private int PlayAudio(int paramInt)
  {
    int i = 0;
    _playLock.lock();
    try
    {
      AudioTrack localAudioTrack = _audioTrack;
      if (localAudioTrack == null) {
        return -2;
      }
      boolean bool = _doPlayInit;
      if (bool) {}
      try
      {
        Process.setThreadPriority(-19);
        _doPlayInit = false;
        _playBuffer.get(_tempBufPlay);
        int j = _audioTrack.write(_tempBufPlay, 0, paramInt);
        _playBuffer.rewind();
        _bufferedPlaySamples += (j >> 1);
        int k = _audioTrack.getPlaybackHeadPosition();
        if (k < _playPosition) {
          _playPosition = 0;
        }
        _bufferedPlaySamples -= k - _playPosition;
        _playPosition = k;
        if (!_isRecording) {
          i = _bufferedPlaySamples;
        }
        if (j != paramInt) {
          return -1;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          GIPSLog("Set play thread priority failed: " + localException.getMessage());
        }
      }
    }
    finally
    {
      _playLock.unlock();
    }
    return i;
  }
  
  private int RecordAudio(int paramInt)
  {
    _recLock.lock();
    for (;;)
    {
      try
      {
        AudioRecord localAudioRecord = _audioRecord;
        if (localAudioRecord == null) {
          return -2;
        }
        boolean bool = _doRecInit;
        if (bool) {}
        try
        {
          Process.setThreadPriority(-19);
          _doRecInit = false;
          _recBuffer.rewind();
          int i = _audioRecord.read(_tempBufRec, 0, paramInt);
          _recBuffer.put(_tempBufRec);
          if (i != paramInt) {
            return -1;
          }
        }
        catch (Exception localException1)
        {
          GIPSLog("Set rec thread priority failed: " + localException1.getMessage());
        }
      }
      catch (Exception localException2)
      {
        GIPSLogErr("RecordAudio try failed: " + localException2.getMessage());
        return _bufferedPlaySamples;
      }
      finally
      {
        _recLock.unlock();
      }
    }
  }
  
  private void SetAudioMode(boolean paramBoolean)
  {
    int i = Integer.parseInt(Build.VERSION.SDK);
    if ((_audioManager == null) && (_context != null)) {
      _audioManager = ((AudioManager)_context.getSystemService("audio"));
    }
    if (_audioManager == null) {
      GIPSLogErr("Could not set audio mode - no audio manager");
    }
    while (((!Build.BRAND.equals("Samsung")) && (!Build.BRAND.equals("samsung"))) || (8 != i)) {
      return;
    }
    if (paramBoolean) {}
    for (i = 4;; i = 0)
    {
      _audioManager.setMode(i);
      if (_audioManager.getMode() == i) {
        break;
      }
      GIPSLogErr("Could not set audio mode for Samsung device");
      return;
    }
  }
  
  private int SetPlayoutSpeaker(boolean paramBoolean)
  {
    if ((_audioManager == null) && (_context != null)) {
      _audioManager = ((AudioManager)_context.getSystemService("audio"));
    }
    if (_audioManager == null)
    {
      GIPSLogErr("Could not change audio routing - no audio manager");
      return -1;
    }
    int i = Integer.parseInt(Build.VERSION.SDK);
    if ((3 == i) || (4 == i)) {
      if (paramBoolean) {
        _audioManager.setMode(0);
      }
    }
    for (;;)
    {
      return 0;
      _audioManager.setMode(2);
      continue;
      if (((Build.BRAND.equals("Samsung")) || (Build.BRAND.equals("samsung"))) && ((5 == i) || (6 == i) || (7 == i)))
      {
        if (paramBoolean)
        {
          _audioManager.setMode(2);
          _audioManager.setSpeakerphoneOn(paramBoolean);
        }
        else
        {
          _audioManager.setSpeakerphoneOn(paramBoolean);
          _audioManager.setMode(0);
        }
      }
      else {
        _audioManager.setSpeakerphoneOn(paramBoolean);
      }
    }
  }
  
  private int SetPlayoutVolume(int paramInt)
  {
    if ((_audioManager == null) && (_context != null)) {
      _audioManager = ((AudioManager)_context.getSystemService("audio"));
    }
    int i = -1;
    if (_audioManager != null)
    {
      _audioManager.setStreamVolume(0, paramInt, 0);
      i = 0;
    }
    return i;
  }
  
  private int StartPlayback()
  {
    if (!_isRecording) {
      SetAudioMode(true);
    }
    try
    {
      _audioTrack.play();
      _isPlaying = true;
      return 0;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
    }
    return -1;
  }
  
  private int StartRecording()
  {
    if (!_isPlaying) {
      SetAudioMode(true);
    }
    try
    {
      _audioRecord.startRecording();
      _isRecording = true;
      return 0;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localIllegalStateException.printStackTrace();
    }
    return -1;
  }
  
  /* Error */
  private int StopPlayback()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 47	com/gipscorp/voiceengine/GIPSSndCardAndroid:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: invokevirtual 153	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   7: aload_0
    //   8: getfield 40	com/gipscorp/voiceengine/GIPSSndCardAndroid:_audioTrack	Landroid/media/AudioTrack;
    //   11: invokevirtual 272	android/media/AudioTrack:getPlayState	()I
    //   14: istore_1
    //   15: iload_1
    //   16: iconst_3
    //   17: if_icmpne +17 -> 34
    //   20: aload_0
    //   21: getfield 40	com/gipscorp/voiceengine/GIPSSndCardAndroid:_audioTrack	Landroid/media/AudioTrack;
    //   24: invokevirtual 275	android/media/AudioTrack:stop	()V
    //   27: aload_0
    //   28: getfield 40	com/gipscorp/voiceengine/GIPSSndCardAndroid:_audioTrack	Landroid/media/AudioTrack;
    //   31: invokevirtual 278	android/media/AudioTrack:flush	()V
    //   34: aload_0
    //   35: getfield 40	com/gipscorp/voiceengine/GIPSSndCardAndroid:_audioTrack	Landroid/media/AudioTrack;
    //   38: invokevirtual 130	android/media/AudioTrack:release	()V
    //   41: aload_0
    //   42: aconst_null
    //   43: putfield 40	com/gipscorp/voiceengine/GIPSSndCardAndroid:_audioTrack	Landroid/media/AudioTrack;
    //   46: aload_0
    //   47: iconst_1
    //   48: putfield 51	com/gipscorp/voiceengine/GIPSSndCardAndroid:_doPlayInit	Z
    //   51: aload_0
    //   52: getfield 47	com/gipscorp/voiceengine/GIPSSndCardAndroid:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   55: invokevirtual 156	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   58: aload_0
    //   59: getfield 55	com/gipscorp/voiceengine/GIPSSndCardAndroid:_isRecording	Z
    //   62: ifne +8 -> 70
    //   65: aload_0
    //   66: iconst_0
    //   67: invokespecial 258	com/gipscorp/voiceengine/GIPSSndCardAndroid:SetAudioMode	(Z)V
    //   70: aload_0
    //   71: iconst_0
    //   72: putfield 57	com/gipscorp/voiceengine/GIPSSndCardAndroid:_isPlaying	Z
    //   75: iconst_0
    //   76: ireturn
    //   77: astore_2
    //   78: aload_2
    //   79: invokevirtual 264	java/lang/IllegalStateException:printStackTrace	()V
    //   82: aload_0
    //   83: iconst_1
    //   84: putfield 51	com/gipscorp/voiceengine/GIPSSndCardAndroid:_doPlayInit	Z
    //   87: aload_0
    //   88: getfield 47	com/gipscorp/voiceengine/GIPSSndCardAndroid:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   91: invokevirtual 156	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   94: iconst_m1
    //   95: ireturn
    //   96: astore_2
    //   97: aload_0
    //   98: iconst_1
    //   99: putfield 51	com/gipscorp/voiceengine/GIPSSndCardAndroid:_doPlayInit	Z
    //   102: aload_0
    //   103: getfield 47	com/gipscorp/voiceengine/GIPSSndCardAndroid:_playLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   106: invokevirtual 156	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   109: aload_2
    //   110: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	this	GIPSSndCardAndroid
    //   14	4	1	i	int
    //   77	2	2	localIllegalStateException	IllegalStateException
    //   96	14	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   20	27	77	java/lang/IllegalStateException
    //   7	15	96	finally
    //   20	27	96	finally
    //   27	34	96	finally
    //   34	46	96	finally
    //   78	82	96	finally
  }
  
  /* Error */
  private int StopRecording()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 49	com/gipscorp/voiceengine/GIPSSndCardAndroid:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   4: invokevirtual 153	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   7: aload_0
    //   8: getfield 42	com/gipscorp/voiceengine/GIPSSndCardAndroid:_audioRecord	Landroid/media/AudioRecord;
    //   11: invokevirtual 282	android/media/AudioRecord:getRecordingState	()I
    //   14: istore_1
    //   15: iload_1
    //   16: iconst_3
    //   17: if_icmpne +10 -> 27
    //   20: aload_0
    //   21: getfield 42	com/gipscorp/voiceengine/GIPSSndCardAndroid:_audioRecord	Landroid/media/AudioRecord;
    //   24: invokevirtual 283	android/media/AudioRecord:stop	()V
    //   27: aload_0
    //   28: getfield 42	com/gipscorp/voiceengine/GIPSSndCardAndroid:_audioRecord	Landroid/media/AudioRecord;
    //   31: invokevirtual 145	android/media/AudioRecord:release	()V
    //   34: aload_0
    //   35: aconst_null
    //   36: putfield 42	com/gipscorp/voiceengine/GIPSSndCardAndroid:_audioRecord	Landroid/media/AudioRecord;
    //   39: aload_0
    //   40: iconst_1
    //   41: putfield 53	com/gipscorp/voiceengine/GIPSSndCardAndroid:_doRecInit	Z
    //   44: aload_0
    //   45: getfield 49	com/gipscorp/voiceengine/GIPSSndCardAndroid:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   48: invokevirtual 156	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   51: aload_0
    //   52: getfield 57	com/gipscorp/voiceengine/GIPSSndCardAndroid:_isPlaying	Z
    //   55: ifne +8 -> 63
    //   58: aload_0
    //   59: iconst_0
    //   60: invokespecial 258	com/gipscorp/voiceengine/GIPSSndCardAndroid:SetAudioMode	(Z)V
    //   63: aload_0
    //   64: iconst_0
    //   65: putfield 55	com/gipscorp/voiceengine/GIPSSndCardAndroid:_isRecording	Z
    //   68: iconst_0
    //   69: ireturn
    //   70: astore_2
    //   71: aload_2
    //   72: invokevirtual 264	java/lang/IllegalStateException:printStackTrace	()V
    //   75: aload_0
    //   76: iconst_1
    //   77: putfield 53	com/gipscorp/voiceengine/GIPSSndCardAndroid:_doRecInit	Z
    //   80: aload_0
    //   81: getfield 49	com/gipscorp/voiceengine/GIPSSndCardAndroid:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   84: invokevirtual 156	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   87: iconst_m1
    //   88: ireturn
    //   89: astore_2
    //   90: aload_0
    //   91: iconst_1
    //   92: putfield 53	com/gipscorp/voiceengine/GIPSSndCardAndroid:_doRecInit	Z
    //   95: aload_0
    //   96: getfield 49	com/gipscorp/voiceengine/GIPSSndCardAndroid:_recLock	Ljava/util/concurrent/locks/ReentrantLock;
    //   99: invokevirtual 156	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   102: aload_2
    //   103: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	104	0	this	GIPSSndCardAndroid
    //   14	4	1	i	int
    //   70	2	2	localIllegalStateException	IllegalStateException
    //   89	14	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   20	27	70	java/lang/IllegalStateException
    //   7	15	89	finally
    //   20	27	89	finally
    //   27	39	89	finally
    //   71	75	89	finally
  }
}

/* Location:
 * Qualified Name:     com.gipscorp.voiceengine.GIPSSndCardAndroid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */