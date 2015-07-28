package com.google.android.videochat;

import com.google.android.videochat.util.CircularArray;

class CallManager$CallStatistics
{
  boolean mCallAccepted;
  public long mCallElapsedRealtimeAtStart;
  public long mCallStartTime;
  public String mSessionId;
  CircularArray<CallManager.StatsUpdate> mStatsUpdates = new CircularArray(1200);
  
  public CallManager$CallStatistics(CallManager paramCallManager) {}
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallManager.CallStatistics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */