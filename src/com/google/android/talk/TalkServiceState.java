package com.google.android.talk;

import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gtalkservice.IGTalkService;
import com.google.android.gtalkservice.IImSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

class TalkServiceState
{
  private final Object mLock = new Object();
  private IGTalkService mService;
  private final ArrayList<PendingServiceAvailableCallback> mServiceAvailableListeners = new ArrayList();
  private final ArrayList<PendingSessionAvailableCallback> mSessionAvailableListeners = new ArrayList();
  private final Map<Long, IImSession> mSessionMap = new HashMap();
  
  public void addServiceAvailableCallback(Handler paramHandler, ServiceAvailableRunnable paramServiceAvailableRunnable)
  {
    paramServiceAvailableRunnable = new PendingServiceAvailableCallback(paramHandler, paramServiceAvailableRunnable);
    for (;;)
    {
      int i;
      synchronized (mLock)
      {
        if (mService != null)
        {
          paramServiceAvailableRunnable.setService(mService);
          paramHandler = paramServiceAvailableRunnable;
          if (paramHandler != null) {
            paramHandler.post();
          }
          return;
        }
        int m = mServiceAvailableListeners.size();
        int k = 1;
        i = 0;
        int j = k;
        if (i < m)
        {
          if (((PendingServiceAvailableCallback)mServiceAvailableListeners.get(i)).getTarget() != paramHandler) {
            break label121;
          }
          j = 0;
        }
        if (j != 0) {
          mServiceAvailableListeners.add(paramServiceAvailableRunnable);
        }
      }
      paramHandler = null;
      continue;
      label121:
      i += 1;
    }
  }
  
  public void addSessionAvailableCallback(Handler paramHandler, long paramLong, SessionAvailableRunnable arg4)
  {
    PendingSessionAvailableCallback localPendingSessionAvailableCallback = new PendingSessionAvailableCallback(paramHandler, paramLong, ???);
    IGTalkService localIGTalkService;
    synchronized (mLock)
    {
      ??? = (IImSession)mSessionMap.get(Long.valueOf(paramLong));
      localIGTalkService = mService;
      ??? = (SessionAvailableRunnable)???;
      if (localIGTalkService != null)
      {
        ??? = (SessionAvailableRunnable)???;
        if (??? == null) {
          ??? = (SessionAvailableRunnable)???;
        }
      }
    }
    for (;;)
    {
      try
      {
        ??? = localIGTalkService.getImSessionForAccountId(paramLong);
        ??? = (SessionAvailableRunnable)???;
        if (??? != null)
        {
          ??? = (SessionAvailableRunnable)???;
          setImSessionAvailable(paramLong, (IImSession)???);
          ??? = (SessionAvailableRunnable)???;
        }
      }
      catch (RemoteException localRemoteException)
      {
        int m;
        int k;
        int i;
        int j;
        continue;
        paramHandler = null;
        continue;
        i += 1;
        continue;
      }
      synchronized (mLock)
      {
        if ((mService != null) && (??? != null))
        {
          localPendingSessionAvailableCallback.setServiceAndSession(mService, ???);
          paramHandler = localPendingSessionAvailableCallback;
          if (paramHandler != null) {
            paramHandler.post();
          }
          return;
          paramHandler = finally;
          throw paramHandler;
        }
        m = mSessionAvailableListeners.size();
        k = 1;
        i = 0;
        j = k;
        if (i < m)
        {
          if (((PendingSessionAvailableCallback)mSessionAvailableListeners.get(i)).getTarget() == paramHandler) {
            j = 0;
          }
        }
        else if (j != 0) {
          mSessionAvailableListeners.add(localPendingSessionAvailableCallback);
        }
      }
    }
  }
  
  public void clearService()
  {
    synchronized (mLock)
    {
      mService = null;
      mSessionMap.clear();
      int i = mServiceAvailableListeners.size();
      if (i != 0) {
        TalkApp.Logwtf("talk/Service", "TalkServiceState - clearService but pending service queue had " + i + " items.");
      }
      return;
    }
  }
  
  public IGTalkService getService()
  {
    synchronized (mLock)
    {
      IGTalkService localIGTalkService = mService;
      return localIGTalkService;
    }
  }
  
  public void removeServiceAvailableCallback(Handler paramHandler)
  {
    for (;;)
    {
      int i;
      synchronized (mLock)
      {
        int j = mServiceAvailableListeners.size();
        i = 0;
        if (i < j)
        {
          if (((PendingServiceAvailableCallback)mServiceAvailableListeners.get(i)).getTarget() == paramHandler) {
            mServiceAvailableListeners.remove(i);
          }
        }
        else {
          return;
        }
      }
      i += 1;
    }
  }
  
  public void removeSessionAvailableCallback(Handler paramHandler)
  {
    for (;;)
    {
      int i;
      synchronized (mLock)
      {
        int j = mSessionAvailableListeners.size();
        i = 0;
        if (i < j)
        {
          if (((PendingSessionAvailableCallback)mSessionAvailableListeners.get(i)).getTarget() == paramHandler) {
            mSessionAvailableListeners.remove(i);
          }
        }
        else {
          return;
        }
      }
      i += 1;
    }
  }
  
  public void setImSessionAvailable(long paramLong, IImSession paramIImSession)
  {
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      int i;
      synchronized (mLock)
      {
        if (mService == null)
        {
          TalkApp.Logwtf("talk/Service", "setImSessionAvailable while mService == null");
          return;
        }
        mSessionMap.put(Long.valueOf(paramLong), paramIImSession);
        i = mSessionAvailableListeners.size() - 1;
        if (i >= 0)
        {
          PendingSessionAvailableCallback localPendingSessionAvailableCallback = (PendingSessionAvailableCallback)mSessionAvailableListeners.get(i);
          if (accountId != paramLong) {
            break label162;
          }
          localPendingSessionAvailableCallback.setServiceAndSession(mService, paramIImSession);
          localArrayList.add(localPendingSessionAvailableCallback);
          mSessionAvailableListeners.remove(i);
          break label162;
        }
        paramIImSession = localArrayList.iterator();
        if (paramIImSession.hasNext()) {
          ((PendingSessionAvailableCallback)paramIImSession.next()).post();
        }
      }
      return;
      label162:
      i -= 1;
    }
  }
  
  public void setService(IGTalkService paramIGTalkService)
  {
    if (paramIGTalkService == null) {
      clearService();
    }
    for (;;)
    {
      return;
      synchronized (mLock)
      {
        mService = paramIGTalkService;
        localObject2 = (PendingServiceAvailableCallback[])mServiceAvailableListeners.toArray(new PendingServiceAvailableCallback[mServiceAvailableListeners.size()]);
        mServiceAvailableListeners.clear();
        int j = localObject2.length;
        int i = 0;
        if (i < j)
        {
          ??? = localObject2[i];
          ((PendingServiceAvailableCallback)???).setService(paramIGTalkService);
          ((PendingServiceAvailableCallback)???).post();
          i += 1;
        }
      }
      Object localObject2 = new ArrayList();
      Object localObject3;
      synchronized (mLock)
      {
        localObject3 = mSessionAvailableListeners.iterator();
        while (((Iterator)localObject3).hasNext())
        {
          PendingSessionAvailableCallback localPendingSessionAvailableCallback = (PendingSessionAvailableCallback)((Iterator)localObject3).next();
          if (!((ArrayList)localObject2).contains(Long.valueOf(accountId))) {
            ((ArrayList)localObject2).add(Long.valueOf(accountId));
          }
        }
      }
      ??? = ((ArrayList)localObject2).iterator();
      while (((Iterator)???).hasNext())
      {
        localObject2 = (Long)((Iterator)???).next();
        try
        {
          localObject3 = paramIGTalkService.getImSessionForAccountId(((Long)localObject2).longValue());
          if (localObject3 != null) {
            setImSessionAvailable(((Long)localObject2).longValue(), (IImSession)localObject3);
          }
        }
        catch (RemoteException localRemoteException) {}
      }
    }
  }
  
  private static abstract class PendingCallback
    implements Runnable
  {
    private final Handler mTarget;
    
    PendingCallback(Handler paramHandler)
    {
      mTarget = paramHandler;
    }
    
    public Handler getTarget()
    {
      return mTarget;
    }
    
    public void post()
    {
      getTarget().post(this);
    }
  }
  
  private static class PendingServiceAvailableCallback
    extends TalkServiceState.PendingCallback
  {
    final ServiceAvailableRunnable r;
    volatile IGTalkService service;
    
    PendingServiceAvailableCallback(Handler paramHandler, ServiceAvailableRunnable paramServiceAvailableRunnable)
    {
      super();
      r = paramServiceAvailableRunnable;
    }
    
    public void run()
    {
      r.run(service);
    }
    
    void setService(IGTalkService paramIGTalkService)
    {
      service = paramIGTalkService;
    }
  }
  
  private static class PendingSessionAvailableCallback
    extends TalkServiceState.PendingCallback
  {
    final long accountId;
    final SessionAvailableRunnable r;
    volatile IGTalkService service;
    volatile IImSession session;
    
    PendingSessionAvailableCallback(Handler paramHandler, long paramLong, SessionAvailableRunnable paramSessionAvailableRunnable)
    {
      super();
      accountId = paramLong;
      r = paramSessionAvailableRunnable;
    }
    
    public void run()
    {
      r.run(service, session);
    }
    
    void setServiceAndSession(IGTalkService paramIGTalkService, IImSession paramIImSession)
    {
      service = paramIGTalkService;
      session = paramIImSession;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkServiceState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */