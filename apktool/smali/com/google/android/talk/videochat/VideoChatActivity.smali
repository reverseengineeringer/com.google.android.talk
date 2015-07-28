.class public Lcom/google/android/talk/videochat/VideoChatActivity;
.super Landroid/app/Activity;
.source "VideoChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/VideoChatActivity$16;,
        Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;,
        Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;,
        Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;,
        Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;,
        Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;,
        Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;,
        Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    }
.end annotation


# static fields
.field private static final sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;


# instance fields
.field private dismissTextOverlayRunnable:Ljava/lang/Runnable;

.field private mAccountId:J

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarResetISButton:Landroid/view/View;

.field private mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

.field private mAvailableAudioDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/CallSession$AudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field mAvatarQuery:Lcom/google/android/talk/ContactInfoQuery;

.field private mBgReplacementActionView:Lcom/google/android/talk/videochat/CompoundImageView;

.field private mBindRendererLock:Ljava/lang/Object;

.field private mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

.field private mBluetoothHandler:Landroid/view/View$OnClickListener;

.field private mCallSession:Lcom/google/android/videochat/CallSession;

.field private mCallState:I

.field private mCallStateClient:Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;

.field private mCameraTracker:Lcom/google/android/talk/videochat/CameraTracker;

.field private mChatSession:Lcom/google/android/gtalkservice/IChatSession;

.field mConnectCallTask:Ljava/lang/Runnable;

.field private mConnectRetryCount:I

.field private mConnectToExistingCallRunnable:Ljava/lang/Runnable;

.field private mConnectingProgressBar:Landroid/widget/ProgressBar;

.field private mConnectingStatus:Landroid/view/View;

.field private mConnectingStatusTextSimple:Landroid/widget/TextView;

.field private mCurrentEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

.field private mDeferredEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

.field private mDismissButtonPanelRunnable:Ljava/lang/Runnable;

.field private final mEffectsLock:Ljava/lang/Object;

.field private mEnterEffectsActionView:Lcom/google/android/talk/videochat/CompoundImageView;

.field private mFadeInLong:Landroid/view/animation/Animation;

.field private mFadeInMedium:Landroid/view/animation/Animation;

.field private mFadeOutLong:Landroid/view/animation/Animation;

.field private mFadeOutMedium:Landroid/view/animation/Animation;

.field private mFadedEndButton:Landroid/view/View;

.field private mFirstFrame:Z

.field private final mFirstFrameLock:Ljava/lang/Object;

.field private mGlView:Lcom/google/android/talk/videochat/GlView;

.field private mGlViewInitializedCallback:Lcom/google/android/talk/videochat/GlView$GlViewInitializedCallback;

.field private mGoofyFaceActionView:Lcom/google/android/talk/videochat/CompoundImageView;

.field private mGtalkServiceConnection:Landroid/content/ServiceConnection;

.field private final mHandler:Landroid/os/Handler;

.field mInitialCameraFrameCallback:Lcom/google/android/talk/videochat/GlView$InitialCameraFrameCallback;

.field private mInitialized:Z

.field private mIntentAction:Ljava/lang/String;

.field private mIsMuted:Z

.field private mIsRendererBound:Z

.field private mMuteButton:Landroid/widget/ImageView;

.field private mNormalModeActionBarCustomView:Landroid/view/View;

.field private mOnSaveInstanceStateCallStateCopy:I

.field private mPaused:Z

.field private mRecentChatMessageQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mReevaluateCallState:Z

.field private mRemoteBareJid:Ljava/lang/String;

.field private mRemoteJid:Ljava/lang/String;

.field private mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;

.field private mSecureState:Z

.field private mSessionReadyTask:Ljava/lang/Runnable;

.field private mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

.field private mStabilizationActionView:Lcom/google/android/talk/videochat/CompoundImageView;

.field private mStopped:Z

.field private mTextOverlay:Landroid/widget/LinearLayout;

.field private mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

.field private mVcoActionView:Lcom/google/android/talk/videochat/CompoundImageView;

.field private mVideoFadeInAnimationDuration:I

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 454
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$1;)V

    sput-object v0, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    .line 179
    iput-boolean v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStopped:Z

    .line 180
    iput-boolean v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mPaused:Z

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFirstFrameLock:Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBindRendererLock:Ljava/lang/Object;

    .line 188
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIsRendererBound:Z

    .line 198
    sget-object v0, Lcom/google/android/videochat/CallState$AudioDeviceState;->SPEAKERPHONE_ON:Lcom/google/android/videochat/CallState$AudioDeviceState;

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    .line 204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAvailableAudioDevices:Ljava/util/Set;

    .line 228
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mEffectsLock:Ljava/lang/Object;

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDeferredEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    .line 390
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$3;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mInitialCameraFrameCallback:Lcom/google/android/talk/videochat/GlView$InitialCameraFrameCallback;

    .line 624
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$4;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->dismissTextOverlayRunnable:Ljava/lang/Runnable;

    .line 671
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$5;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDismissButtonPanelRunnable:Ljava/lang/Runnable;

    .line 790
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    .line 1564
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$7;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$7;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlViewInitializedCallback:Lcom/google/android/talk/videochat/GlView$GlViewInitializedCallback;

    .line 1639
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$9;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$9;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectCallTask:Ljava/lang/Runnable;

    .line 1721
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$10;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$10;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGtalkServiceConnection:Landroid/content/ServiceConnection;

    .line 1855
    iput v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectRetryCount:I

    .line 1858
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$11;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$11;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectToExistingCallRunnable:Ljava/lang/Runnable;

    .line 2040
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$15;

    invoke-direct {v0, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$15;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBluetoothHandler:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->showButtonPanel()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/videochat/VideoChatActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSecureState:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSecureState:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/videochat/VideoChatActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->inCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity;->updateRecentMessageQueue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->bindRecentMessages()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/talk/videochat/VideoChatActivity;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # J

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/VideoChatActivity;->scheduleTextOverlayFadeOut(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIsMuted:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/videochat/CallState$AudioDeviceState;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/videochat/CallState$AudioDeviceState;)Lcom/google/android/videochat/CallState$AudioDeviceState;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Lcom/google/android/videochat/CallState$AudioDeviceState;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAvailableAudioDevices:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->updateAudioUi()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/talk/videochat/VideoChatActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity;->setState(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->startTextChatActivity()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->finishActivity()V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->startTextOverlayFadeOut()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/app/ActionBar;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->hideButtonPanel()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/GlView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/CameraTracker;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCameraTracker:Lcom/google/android/talk/videochat/CameraTracker;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCurrentEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/VideoChatActivity;->setActiveEffect(Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->resetButtonPanelFadeOutCountdown()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFirstFrameLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBindRendererLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/videochat/RemoteRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/videochat/RemoteRenderer;)Lcom/google/android/videochat/RemoteRenderer;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Lcom/google/android/videochat/RemoteRenderer;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;

    return-object p1
.end method

.method static synthetic access$4802(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIsRendererBound:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->bindRendererIfReady()V

    return-void
.end method

.method static synthetic access$5000(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFirstFrame:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->makeCall()V

    return-void
.end method

.method static synthetic access$5200(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->connectToExistingCall()V

    return-void
.end method

.method static synthetic access$5302(Lcom/google/android/talk/videochat/VideoChatActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mReevaluateCallState:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/google/android/talk/videochat/VideoChatActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$5500(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/gtalkservice/IChatSession;)Lcom/google/android/gtalkservice/IChatSession;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Lcom/google/android/gtalkservice/IChatSession;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    return-object p1
.end method

.method static synthetic access$5600()Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/google/android/talk/videochat/VideoChatActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStopped:Z

    return v0
.end method

.method static synthetic access$5800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/videochat/CallSession;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/videochat/CallSession;)Lcom/google/android/videochat/CallSession;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Lcom/google/android/videochat/CallSession;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->registerCallStateListener()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/talk/videochat/VideoChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoState:I

    return v0
.end method

.method static synthetic access$6000(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSessionReadyTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSessionReadyTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDeferredEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    return-object v0
.end method

.method static synthetic access$6102(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDeferredEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getDefaultEffect()Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->sendImageStabilizationReset()V

    return-void
.end method

.method static synthetic access$6600(Lcom/google/android/talk/videochat/VideoChatActivity;Landroid/view/Menu;ILcom/google/android/videochat/CallSession$AudioDevice;Lcom/google/android/videochat/CallSession$AudioDevice;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # Landroid/view/Menu;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/google/android/videochat/CallSession$AudioDevice;
    .param p4, "x4"    # Lcom/google/android/videochat/CallSession$AudioDevice;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/talk/videochat/VideoChatActivity;->setupMenuItem(Landroid/view/Menu;ILcom/google/android/videochat/CallSession$AudioDevice;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    return-void
.end method

.method static synthetic access$6700(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->removePendingDismissButtonPanelRunnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/talk/videochat/VideoChatActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallState:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/videochat/VideoChatActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/google/android/talk/videochat/VideoChatActivity;->transitionVideoState(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addRemoteChatListener()V
    .locals 3

    .prologue
    .line 1689
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1690
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGtalkServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1691
    return-void
.end method

.method private bindRecentMessages()V
    .locals 9

    .prologue
    .line 434
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    monitor-enter v5

    .line 436
    :try_start_0
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 437
    const/4 v1, 0x1

    .line 438
    .local v1, "first":Z
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;

    .line 439
    .local v0, "cm":Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;
    if-eqz v1, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 446
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f040052

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 448
    .local v3, "tv":Landroid/widget/TextView;
    iget-object v4, v0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 451
    .end local v0    # "cm":Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;
    .end local v1    # "first":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "tv":Landroid/widget/TextView;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 442
    .restart local v0    # "cm":Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;
    .restart local v1    # "first":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040051

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 451
    .end local v0    # "cm":Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;
    :cond_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    return-void
.end method

.method private bindRendererIfReady()V
    .locals 4

    .prologue
    .line 1549
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBindRendererLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1550
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->inCall()Z

    move-result v0

    .line 1551
    iget-boolean v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIsRendererBound:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;

    if-eqz v2, :cond_1

    .line 1552
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/videochat/CallSession;->bindRenderer(ILcom/google/android/videochat/RemoteRenderer;)V

    .line 1553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIsRendererBound:Z

    .line 1561
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1562
    return-void

    .line 1555
    :cond_1
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not binding renderer yet because mIsRendererBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIsRendererBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCallSession="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", inCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRemoteRenderer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteRenderer:Lcom/google/android/videochat/RemoteRenderer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1561
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private connectToExistingCall()V
    .locals 4

    .prologue
    .line 1866
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->initiatingCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->inCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1883
    :cond_0
    :goto_0
    return-void

    .line 1874
    :cond_1
    iget v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectRetryCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 1875
    const-string v0, "No call to connect to. Retrying."

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1876
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectToExistingCallRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1877
    iget v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectRetryCount:I

    goto :goto_0

    .line 1879
    :cond_2
    const-string v0, "No call to connect to. Finishing activity."

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1880
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->finishActivity()V

    goto :goto_0
.end method

.method private endCall()V
    .locals 2

    .prologue
    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminated call for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1887
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/CallSession;->terminateCall(Ljava/lang/String;)Z

    .line 1889
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->finishActivity()V

    .line 1890
    return-void
.end method

.method private finishActivity()V
    .locals 1

    .prologue
    .line 1893
    const-string v0, "call finish"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1894
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1895
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->finish()V

    .line 1897
    :cond_0
    return-void
.end method

.method private getDefaultEffect()Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1981
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v0

    .line 1983
    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getVideoImageStabilization()Ljava/lang/String;

    move-result-object v0

    .line 1984
    if-nez v0, :cond_0

    .line 1985
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->getDefaultVideoChatEffect()Ljava/lang/String;

    move-result-object v0

    .line 1987
    :cond_0
    invoke-static {}, Lcom/google/android/talk/TalkApp;->debugLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1992
    :cond_1
    if-eqz v0, :cond_2

    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    move-object v0, v1

    .line 2005
    :goto_0
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->id:I

    invoke-static {v2}, Lcom/google/android/talk/videochat/EffectsController;->isEffectAvailable(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2006
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default effect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " disallowed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    move-object v0, v1

    .line 2009
    :cond_3
    return-object v0

    .line 1994
    :cond_4
    const-string v2, "low"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1995
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    .line 1996
    :cond_5
    const-string v2, "medium"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1997
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    .line 1998
    :cond_6
    const-string v2, "virtual"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2000
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    .line 2002
    :cond_7
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultEffect - unknown setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2003
    goto :goto_0
.end method

.method private hideButtonPanel()V
    .locals 3

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->removePendingDismissButtonPanelRunnable()V

    .line 655
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 656
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 657
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 659
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadedEndButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadedEndButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 661
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadedEndButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeInMedium:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 664
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 665
    return-void
.end method

.method private inCall()Z
    .locals 2

    .prologue
    .line 247
    iget v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initAnimations()V
    .locals 1

    .prologue
    .line 1901
    const v0, 0x7f050002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeInMedium:Landroid/view/animation/Animation;

    .line 1902
    const v0, 0x7f050001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeInLong:Landroid/view/animation/Animation;

    .line 1903
    const v0, 0x7f050005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeOutMedium:Landroid/view/animation/Animation;

    .line 1904
    const v0, 0x7f050004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeOutLong:Landroid/view/animation/Animation;

    .line 1907
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->initToVanityResources()V

    .line 1908
    return-void
.end method

.method private initToVanityResources()V
    .locals 7

    .prologue
    .line 1589
    new-instance v0, Lcom/google/android/talk/ContactInfoQuery;

    iget-wide v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/talk/ContactInfoQuery;-><init>(Landroid/content/Context;JLjava/lang/String;Landroid/database/ContentObserver;Z)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAvatarQuery:Lcom/google/android/talk/ContactInfoQuery;

    .line 1591
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAvatarQuery:Lcom/google/android/talk/ContactInfoQuery;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$8;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$8;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ContactInfoQuery;->setContactInfoCallback(Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;)V

    .line 1599
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1600
    const v0, 0x7f1000a9

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    .line 1603
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatusTextSimple:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1604
    const v0, 0x7f1000ae

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatusTextSimple:Landroid/widget/TextView;

    .line 1605
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatusTextSimple:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1606
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatusTextSimple:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1609
    :cond_1
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 1529
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mInitialized:Z

    if-nez v0, :cond_1

    .line 1530
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->initAnimations()V

    .line 1532
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mReevaluateCallState:Z

    if-eqz v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectCallTask:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->setSessionReadyTask(Ljava/lang/Runnable;)V

    .line 1537
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mInitialized:Z

    .line 1539
    :cond_1
    return-void
.end method

.method private initiatingCall()Z
    .locals 2

    .prologue
    .line 251
    iget v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2017
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VideoChatActivity] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    return-void
.end method

.method private makeCall()V
    .locals 5

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1833
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity$MakeCallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1835
    :cond_0
    return-void
.end method

.method private registerCallStateListener()V
    .locals 3

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateClient:Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;

    iget-object v1, v0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->mCallStateClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1667
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateClient:Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateClient:Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;

    iget-boolean v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->mCallStateClientListening:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mPaused:Z

    if-nez v0, :cond_0

    .line 1673
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateClient:Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->startListening()V

    .line 1674
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateClient:Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->mCallStateClientListening:Z

    .line 1676
    :cond_0
    monitor-exit v1

    .line 1677
    return-void

    .line 1676
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removePendingDismissButtonPanelRunnable()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDismissButtonPanelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 669
    return-void
.end method

.method private removeRemoteChatListener()V
    .locals 4

    .prologue
    .line 1694
    const/4 v0, 0x1

    .line 1695
    sget-object v1, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    monitor-enter v1

    .line 1696
    :try_start_0
    sget-object v2, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    invoke-virtual {v2}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->getActivity()Lcom/google/android/talk/videochat/VideoChatActivity;

    move-result-object v2

    .line 1697
    sget-object v3, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    invoke-virtual {v3}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->getJid()Ljava/lang/String;

    move-result-object v3

    .line 1702
    if-eq v2, p0, :cond_0

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1703
    const/4 v0, 0x0

    .line 1705
    :cond_0
    sget-object v2, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    invoke-virtual {v2, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->removeAssociation(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 1706
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1710
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    if-eqz v0, :cond_1

    .line 1712
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    sget-object v1, Lcom/google/android/talk/videochat/VideoChatActivity;->sChatListener:Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;

    invoke-interface {v0, v1}, Lcom/google/android/gtalkservice/IChatSession;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1718
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGtalkServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1719
    return-void

    .line 1706
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1713
    :catch_0
    move-exception v0

    .line 1714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem removing ChatSession "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetButtonPanelFadeOutCountdown()V
    .locals 4

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->removePendingDismissButtonPanelRunnable()V

    .line 635
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDismissButtonPanelRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 636
    return-void
.end method

.method private resetState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->transitionChromeToHidden()V

    .line 275
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->transitionVideoToHidden()V

    .line 276
    iput v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallState:I

    .line 277
    iput v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoState:I

    .line 278
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 1625
    const-string v0, "accountId"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J

    .line 1627
    iget-wide v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1628
    const-string v0, "talk"

    const-string v1, "Intent must contain accountId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->finishActivity()V

    .line 1637
    :goto_0
    return-void

    .line 1633
    :cond_0
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;

    .line 1634
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteJid:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;

    .line 1636
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIntentAction:Ljava/lang/String;

    goto :goto_0
.end method

.method private scheduleTextOverlayFadeOut(J)V
    .locals 2
    .param p1, "millis"    # J

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->dismissTextOverlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 615
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->dismissTextOverlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 616
    return-void
.end method

.method private sendImageStabilizationReset()V
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->getSelfRenderer()Lcom/google/android/videochat/SelfRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/videochat/SelfRenderer;->resetImageStabilization()V

    .line 2014
    return-void
.end method

.method private setActiveEffect(Lcom/google/android/talk/videochat/VideoChatActivity$Effect;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1792
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->getEffectsController()Lcom/google/android/talk/videochat/EffectsController;

    move-result-object v0

    .line 1793
    if-nez p1, :cond_0

    .line 1794
    new-instance p1, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v3, v1}, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;-><init>(ILjava/lang/Object;)V

    .line 1796
    :cond_0
    iget v1, p1, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->id:I

    iget-object v2, p1, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->param:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/videochat/EffectsController;->enableEffect(ILjava/lang/Object;)V

    .line 1797
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;

    const-string v1, "CALL_CURRENT_EFFECT"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/videochat/CallSession;->setCallStorage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1798
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mEffectsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1799
    :try_start_0
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCurrentEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    .line 1800
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1802
    iget v0, p1, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->param:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1804
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBarResetISButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1809
    :goto_0
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->updateActionViewStates()V

    .line 1810
    return-void

    .line 1800
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1806
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBarResetISButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSessionReadyTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;

    if-nez v0, :cond_0

    .line 1659
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSessionReadyTask:Ljava/lang/Runnable;

    .line 1663
    :goto_0
    return-void

    .line 1661
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 255
    iget v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallState:I

    if-ne p1, v1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 259
    :cond_0
    iget v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallState:I

    .line 260
    .local v0, "previousState":I
    iput p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallState:I

    .line 262
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFirstFrameLock:Ljava/lang/Object;

    monitor-enter v2

    .line 263
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFirstFrame:Z

    if-eqz v1, :cond_1

    .line 264
    iget v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallState:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->transitionVideoState(II)V

    .line 266
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallState:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->transitionChromeState(II)V

    .line 270
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->bindRendererIfReady()V

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 1612
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->requestWindowFeature(I)Z

    .line 1613
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;

    .line 1615
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 1616
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1621
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1622
    return-void
.end method

.method private setupMenuItem(Landroid/view/Menu;ILcom/google/android/videochat/CallSession$AudioDevice;Lcom/google/android/videochat/CallSession$AudioDevice;)V
    .locals 7
    .param p1, "m"    # Landroid/view/Menu;
    .param p2, "id"    # I
    .param p3, "device"    # Lcom/google/android/videochat/CallSession$AudioDevice;
    .param p4, "currentDevice"    # Lcom/google/android/videochat/CallSession$AudioDevice;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2022
    const/4 v1, 0x0

    .line 2023
    .local v1, "forceDisable":Z
    sget-object v3, Lcom/google/android/talk/videochat/VideoChatActivity$16;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v6}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 2030
    :goto_0
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2031
    .local v2, "item":Landroid/view/MenuItem;
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAvailableAudioDevices:Ljava/util/Set;

    invoke-interface {v3, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_1
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2033
    if-ne p4, p3, :cond_1

    move v0, v4

    .line 2034
    .local v0, "check":Z
    :goto_2
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 2035
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 2036
    return-void

    .line 2026
    .end local v0    # "check":Z
    .end local v2    # "item":Landroid/view/MenuItem;
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .restart local v2    # "item":Landroid/view/MenuItem;
    :cond_0
    move v3, v5

    .line 2031
    goto :goto_1

    :cond_1
    move v0, v5

    .line 2033
    goto :goto_2

    .line 2023
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setupOverlayClickLogic()V
    .locals 2

    .prologue
    .line 1911
    const v0, 0x7f1000a5

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    .line 1912
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$12;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$12;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1920
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$13;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$13;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/GlView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1941
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$14;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$14;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/GlView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1978
    return-void
.end method

.method private showButtonPanel()V
    .locals 3

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 640
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 641
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 643
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 644
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadedEndButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadedEndButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadedEndButton:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeOutMedium:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 649
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->resetButtonPanelFadeOutCountdown()V

    .line 650
    return-void
.end method

.method public static startActivityCallInProgress(Landroid/content/Context;JLjava/lang/String;)V
    .locals 6
    .param p0, "originatingContext"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "remoteJid"    # Ljava/lang/String;

    .prologue
    .line 703
    const-string v4, "android.intent.action.VIEW"

    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityInternal(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Z)V

    .line 705
    return-void
.end method

.method private static startActivityInternal(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 683
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    const-string v0, "talk"

    const-string v1, "remote jid required"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_0
    return-void

    .line 688
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 689
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 690
    const-class v0, Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 691
    const-string v0, "accountId"

    invoke-virtual {v1, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 692
    const-string v0, "from"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const/high16 v2, 0x10010000

    if-eqz p5, :cond_1

    const/high16 v0, 0x4000000

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 698
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 694
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static startActivityToInitiate(Landroid/content/Context;JLjava/lang/String;)V
    .locals 6
    .param p0, "originatingContext"    # Landroid/content/Context;
    .param p1, "accountId"    # J
    .param p3, "remoteJid"    # Ljava/lang/String;

    .prologue
    .line 709
    const-string v4, "initiate"

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivityInternal(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Z)V

    .line 711
    return-void
.end method

.method private startTextChatActivity()V
    .locals 5

    .prologue
    .line 1175
    iget-wide v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1177
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1179
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "from"

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRemoteBareJid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    const-string v2, "accountId"

    iget-wide v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAccountId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1183
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1185
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 1186
    return-void
.end method

.method private startTextOverlayFadeOut()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->dismissTextOverlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 620
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mTextOverlay:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeOutLong:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 622
    return-void
.end method

.method private transitionChromeState(II)V
    .locals 3
    .param p1, "previousState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 281
    packed-switch p2, :pswitch_data_0

    .line 292
    :goto_0
    :pswitch_0
    return-void

    .line 286
    :pswitch_1
    if-ge p1, v2, :cond_0

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->transitionChromeToVanity(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 289
    :pswitch_2
    if-ne p1, v2, :cond_1

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->transitionChromeToConnected(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private transitionChromeToConnected(Z)V
    .locals 4
    .param p1, "fromVanity"    # Z

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->setupOverlayClickLogic()V

    .line 347
    if-eqz p1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$1;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 367
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$200(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->hideButtonPanel()V

    .line 364
    :goto_1
    const v0, 0x7f1000a4

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSecureState:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 362
    :cond_2
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->showButtonPanel()V

    goto :goto_1

    .line 364
    :cond_3
    const/16 v0, 0x8

    goto :goto_2
.end method

.method private transitionChromeToHidden()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    return-void
.end method

.method private transitionChromeToVanity(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    if-eqz p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingStatus:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadeInLong:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAvatarQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->startQueryForContactInfo()V

    .line 332
    return-void
.end method

.method private transitionVideoState(II)V
    .locals 4
    .param p1, "previousState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    iput p2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoState:I

    .line 296
    iget v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoState:I

    packed-switch v2, :pswitch_data_0

    .line 307
    :goto_0
    :pswitch_0
    return-void

    .line 301
    :pswitch_1
    if-ge p1, v3, :cond_0

    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->transitionVideoToVanity(Z)V

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 304
    :pswitch_2
    if-ne p1, v3, :cond_1

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->transitionVideoToConnected(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private transitionVideoToConnected(Z)V
    .locals 4
    .param p1, "fromVanity"    # Z

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$200(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->placeFramesInSwappedPositions()V

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/GlView;->showBlackBackground(Z)V

    .line 388
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/GlView;->placeSelfFrameInCorner(Z)V

    .line 378
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/talk/videochat/VideoChatActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$2;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x4b0

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private transitionVideoToHidden()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->hideRemoteFrame()V

    .line 320
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->hideSelfFrame()V

    .line 321
    return-void
.end method

.method private transitionVideoToVanity(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/videochat/GlView;->placeSelfFrameInVanity(Z)V

    .line 336
    return-void
.end method

.method private unregisterCallStateListener()V
    .locals 3

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateClient:Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;

    iget-object v1, v0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->mCallStateClientLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1681
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateClient:Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateClient:Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;

    iget-boolean v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->mCallStateClientListening:Z

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateClient:Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->stopListening()V

    .line 1683
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateClient:Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;->mCallStateClientListening:Z

    .line 1685
    :cond_0
    monitor-exit v1

    .line 1686
    return-void

    .line 1685
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateActionViewStates()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1813
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCurrentEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    if-eqz v0, :cond_5

    .line 1814
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGoofyFaceActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCurrentEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    iget v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->id:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/talk/videochat/CompoundImageView;->setActivated(Z)V

    .line 1816
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStabilizationActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCurrentEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    iget v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->id:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/google/android/talk/videochat/CompoundImageView;->setActivated(Z)V

    .line 1818
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVcoActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCurrentEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    iget v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->id:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/google/android/talk/videochat/CompoundImageView;->setActivated(Z)V

    .line 1820
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBgReplacementActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCurrentEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    iget v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->id:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/google/android/talk/videochat/CompoundImageView;->setActivated(Z)V

    .line 1822
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mEnterEffectsActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCurrentEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    iget v3, v3, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->id:I

    if-eqz v3, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/CompoundImageView;->setActivated(Z)V

    .line 1827
    :goto_5
    return-void

    :cond_0
    move v0, v2

    .line 1814
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1816
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1818
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1820
    goto :goto_3

    :cond_4
    move v1, v2

    .line 1822
    goto :goto_4

    .line 1825
    :cond_5
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mEnterEffectsActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    invoke-virtual {v0, v2}, Lcom/google/android/talk/videochat/CompoundImageView;->setActivated(Z)V

    goto :goto_5
.end method

.method private updateAudioUi()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/BluetoothButton;->handleBluetoothStateChange(Lcom/google/android/videochat/CallState$AudioDeviceState;)V

    .line 311
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIsMuted:Z

    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->setMuteButtonState(Z)V

    .line 312
    return-void
.end method

.method private updateRecentMessageQueue(Ljava/lang/String;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    monitor-enter v5

    .line 421
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 422
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    new-instance v6, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;

    invoke-direct {v6, p1, v0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;-><init>(Ljava/lang/String;J)V

    invoke-interface {v4, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 424
    const-wide/16 v6, 0x3a98

    sub-long v2, v0, v6

    .line 427
    .local v2, "dropOffTime":J
    :goto_0
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;

    iget-wide v6, v4, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;->mTimestamp:J

    cmp-long v4, v6, v2

    if-gez v4, :cond_0

    .line 428
    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_0

    .line 430
    .end local v0    # "currentTime":J
    .end local v2    # "dropOffTime":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "currentTime":J
    .restart local v2    # "dropOffTime":J
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    return-void
.end method


# virtual methods
.method public clickHandler(Landroid/view/View;)V
    .locals 4
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 721
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 787
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->resetButtonPanelFadeOutCountdown()V

    .line 788
    return-void

    .line 723
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->endCall()V

    .line 727
    const-string v1, "call ended"

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 730
    :pswitch_2
    iget-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIsMuted:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 731
    .local v0, "newMuteState":Z
    :goto_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;

    invoke-virtual {v1, v0}, Lcom/google/android/videochat/CallSession;->setMute(Z)V

    .line 732
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->setMuteButtonState(Z)V

    goto :goto_0

    .line 730
    .end local v0    # "newMuteState":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 736
    :pswitch_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/talk/videochat/VideoChatActivity$6;

    invoke-direct {v2, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$6;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    const-string v3, "switchCamera"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 762
    :pswitch_4
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->endCall()V

    .line 763
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 767
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->enterSpecialEffectsMode()V
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$3400(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V

    goto :goto_0

    .line 771
    :pswitch_6
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->clearSpecialEffects()V

    .line 772
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->leaveSpecialEffectsMode()Z
    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$3500(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    goto :goto_0

    .line 779
    :pswitch_7
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->show(Landroid/view/View;)V

    goto :goto_0

    .line 782
    :pswitch_8
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->sendImageStabilizationReset()V

    goto :goto_0

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x7f100096
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1513
    packed-switch p1, :pswitch_data_0

    .line 1526
    :cond_0
    :goto_0
    return-void

    .line 1515
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1516
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mSpecialEffectsModeLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$4500(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1517
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    const/4 v2, 0x1

    # setter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z
    invoke-static {v0, v2}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$202(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;Z)Z

    .line 1518
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1521
    new-instance v0, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    const/4 v1, 0x3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mDeferredEffect:Lcom/google/android/talk/videochat/VideoChatActivity$Effect;

    goto :goto_0

    .line 1518
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1513
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->hideSpecialEffectsPicker()Z
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$3700(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1503
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1505
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->initiatingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1506
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->endCall()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 1190
    const-string v5, "onCreate"

    invoke-direct {p0, v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1191
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1195
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x680080

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1200
    const v5, 0x7f0e000d

    invoke-virtual {p0, v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->setTheme(I)V

    .line 1201
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->setupActionBar()V

    .line 1203
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1204
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1205
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1207
    const v5, 0x7f040053

    invoke-virtual {p0, v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->setContentView(I)V

    .line 1209
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1210
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040046

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/talk/BluetoothButton;

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    .line 1211
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBluetoothHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/google/android/talk/BluetoothButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1212
    const v5, 0x7f04004b

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mMuteButton:Landroid/widget/ImageView;

    .line 1214
    const v5, 0x7f04004a

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/talk/videochat/CompoundImageView;

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGoofyFaceActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    .line 1216
    const v5, 0x7f04004c

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/talk/videochat/CompoundImageView;

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStabilizationActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    .line 1218
    const v5, 0x7f04004e

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/talk/videochat/CompoundImageView;

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVcoActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    .line 1220
    const v5, 0x7f040045

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/talk/videochat/CompoundImageView;

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBgReplacementActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    .line 1222
    const v5, 0x7f040049

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/talk/videochat/CompoundImageView;

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mEnterEffectsActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    .line 1225
    const v5, 0x7f040048

    invoke-virtual {v2, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mNormalModeActionBarCustomView:Landroid/view/View;

    .line 1226
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mNormalModeActionBarCustomView:Landroid/view/View;

    const v6, 0x7f100099

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBarResetISButton:Landroid/view/View;

    .line 1229
    const v5, 0x7f10009a

    invoke-virtual {p0, v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFadedEndButton:Landroid/view/View;

    .line 1231
    const v5, 0x7f1000ac

    invoke-virtual {p0, v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectingProgressBar:Landroid/widget/ProgressBar;

    .line 1233
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVideoFadeInAnimationDuration:I

    .line 1236
    new-instance v5, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;

    invoke-direct {v5, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallStateClient:Lcom/google/android/talk/videochat/VideoChatActivity$LocalCallStateClient;

    .line 1238
    new-instance v5, Lcom/google/android/talk/videochat/CameraTracker;

    invoke-direct {v5, p0}, Lcom/google/android/talk/videochat/CameraTracker;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCameraTracker:Lcom/google/android/talk/videochat/CameraTracker;

    .line 1240
    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mReevaluateCallState:Z

    .line 1242
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1244
    .local v4, "startIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->resolveIntent(Landroid/content/Intent;)V

    .line 1246
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIntentAction:Ljava/lang/String;

    const-string v6, "initiate"

    if-ne v5, v6, :cond_0

    .line 1250
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->setIntent(Landroid/content/Intent;)V

    .line 1255
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mIntentAction:Ljava/lang/String;

    const-string v6, "initiate"

    if-eq v5, v6, :cond_1

    if-eqz p1, :cond_2

    const-string v5, "not_yet_connected"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1259
    .local v0, "callNotYetConnected":Z
    :cond_1
    :goto_0
    const v5, 0x7f1000a3

    invoke-virtual {p0, v5}, Lcom/google/android/talk/videochat/VideoChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/talk/videochat/GlView;

    iput-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    .line 1260
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mInitialCameraFrameCallback:Lcom/google/android/talk/videochat/GlView$InitialCameraFrameCallback;

    invoke-virtual {v5, v0, v6}, Lcom/google/android/talk/videochat/GlView;->initialize(ZLcom/google/android/talk/videochat/GlView$InitialCameraFrameCallback;)V

    .line 1261
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCameraTracker:Lcom/google/android/talk/videochat/CameraTracker;

    invoke-virtual {v5}, Lcom/google/android/talk/videochat/CameraTracker;->firstCamera()I

    move-result v1

    .line 1262
    .local v1, "defaultCameraId":I
    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    iget-object v6, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlViewInitializedCallback:Lcom/google/android/talk/videochat/GlView$GlViewInitializedCallback;

    new-instance v7, Lcom/google/android/videochat/CameraSpecification;

    iget-object v8, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCameraTracker:Lcom/google/android/talk/videochat/CameraTracker;

    invoke-virtual {v8, v1}, Lcom/google/android/talk/videochat/CameraTracker;->getOverrideSizeForCamera(I)Lcom/google/android/videochat/Size;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Lcom/google/android/videochat/CameraSpecification;-><init>(ILcom/google/android/videochat/Size;)V

    invoke-virtual {v5, v6, v7}, Lcom/google/android/talk/videochat/GlView;->createRenderers(Lcom/google/android/talk/videochat/GlView$GlViewInitializedCallback;Lcom/google/android/videochat/CameraSpecification;)V

    .line 1265
    return-void

    .line 1255
    .end local v0    # "callNotYetConnected":Z
    .end local v1    # "defaultCameraId":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .prologue
    const v6, 0x7f1000cb

    const v5, 0x7f1000ca

    const v4, 0x7f1000c9

    const v3, 0x7f1000c8

    const/4 v2, 0x1

    .line 1362
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1365
    const v0, 0x7f1000c7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1366
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBluetoothButton:Lcom/google/android/talk/BluetoothButton;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1368
    const v0, 0x7f1000c6

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1369
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mMuteButton:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1370
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->updateAudioUi()V

    .line 1372
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1373
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCameraTracker:Lcom/google/android/talk/videochat/CameraTracker;

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/CameraTracker;->getNumAvailableCameras()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 1374
    const v1, 0x7f04004d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 1379
    :goto_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1380
    invoke-static {}, Lcom/google/android/talk/FeatureManager;->areAnyEffectsAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1381
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mEnterEffectsActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1387
    :goto_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->getEffectsController()Lcom/google/android/talk/videochat/EffectsController;

    .line 1388
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1389
    invoke-static {v2}, Lcom/google/android/talk/videochat/EffectsController;->isEffectAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1390
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStabilizationActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1395
    :goto_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1396
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/talk/videochat/EffectsController;->isEffectAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1397
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGoofyFaceActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1402
    :goto_3
    const v0, 0x7f1000cc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1403
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/talk/videochat/EffectsController;->isEffectAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1404
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mBgReplacementActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1409
    :goto_4
    const v0, 0x7f1000cd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1410
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/talk/videochat/EffectsController;->isEffectAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1411
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVcoActionView:Lcom/google/android/talk/videochat/CompoundImageView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1416
    :goto_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1376
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    .line 1383
    :cond_1
    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    .line 1392
    :cond_2
    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_2

    .line 1399
    :cond_3
    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_3

    .line 1406
    :cond_4
    const v0, 0x7f1000cc

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_4

    .line 1413
    :cond_5
    const v0, 0x7f1000cd

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_5
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1353
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1354
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1355
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->destroyRenderer()V

    .line 1357
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mConnectToExistingCallRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1358
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 1473
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1484
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1475
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->leaveSpecialEffectsMode()Z
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$3500(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1478
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/talk/BuddyListCombo;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1479
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1480
    invoke-virtual {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 1482
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1473
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1295
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1296
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1299
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->onPause()V

    .line 1302
    iget v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallState:I

    iput v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mOnSaveInstanceStateCallStateCopy:I

    .line 1303
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->resetState()V

    .line 1305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mPaused:Z

    .line 1306
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->unregisterCallStateListener()V

    .line 1308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mInitialized:Z

    .line 1309
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1421
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mSpecialEffectsModeLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$4500(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1422
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->mInSpecialEffectsMode:Z
    invoke-static {v2}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$200(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)Z

    move-result v2

    if-nez v2, :cond_6

    move v3, v0

    .line 1423
    :goto_0
    const v2, 0x7f1000c7

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1424
    const v2, 0x7f1000c6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1426
    const v2, 0x7f1000c8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1427
    if-eqz v2, :cond_0

    .line 1429
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1432
    :cond_0
    const v2, 0x7f1000c9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1433
    if-eqz v2, :cond_1

    .line 1435
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1438
    :cond_1
    if-eqz v3, :cond_7

    .line 1439
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mNormalModeActionBarCustomView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1444
    :goto_1
    const v2, 0x7f1000ca

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1445
    if-eqz v5, :cond_2

    .line 1447
    if-nez v3, :cond_8

    move v2, v0

    :goto_2
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v3, :cond_9

    move v2, v0

    :goto_3
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1449
    :cond_2
    const v2, 0x7f1000cb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1450
    if-eqz v5, :cond_3

    .line 1452
    if-nez v3, :cond_a

    move v2, v0

    :goto_4
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    if-nez v3, :cond_b

    move v2, v0

    :goto_5
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1454
    :cond_3
    const v2, 0x7f1000cc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1455
    if-eqz v5, :cond_4

    .line 1457
    if-nez v3, :cond_c

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v2}, Lcom/google/android/talk/videochat/GlView;->getSelfRenderer()Lcom/google/android/videochat/SelfRenderer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/videochat/SelfRenderer;->getCamera()Lcom/google/android/videochat/CameraInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/videochat/CameraInterface;->arePreview3ALocksSupported()Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v0

    .line 1459
    :goto_6
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1461
    :cond_4
    const v2, 0x7f1000cd

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1462
    if-eqz v5, :cond_5

    .line 1464
    if-nez v3, :cond_d

    move v2, v0

    :goto_7
    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v3, :cond_e

    :goto_8
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1466
    :cond_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_6
    move v3, v1

    .line 1422
    goto/16 :goto_0

    .line 1441
    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mActionBar:Landroid/app/ActionBar;

    const v5, 0x7f040047

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setCustomView(I)V

    goto :goto_1

    .line 1466
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_8
    move v2, v1

    .line 1447
    goto :goto_2

    :cond_9
    move v2, v1

    goto :goto_3

    :cond_a
    move v2, v1

    .line 1452
    goto :goto_4

    :cond_b
    move v2, v1

    goto :goto_5

    :cond_c
    move v2, v1

    .line 1457
    goto :goto_6

    :cond_d
    move v2, v1

    .line 1464
    goto :goto_7

    :cond_e
    move v0, v1

    goto :goto_8
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 1269
    const-string v0, "onRestart"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1270
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1272
    invoke-virtual {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->resolveIntent(Landroid/content/Intent;)V

    .line 1275
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->connectToExistingCall()V

    .line 1276
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1313
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1314
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1316
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mPaused:Z

    .line 1318
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mGlView:Lcom/google/android/talk/videochat/GlView;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView;->onResume()V

    .line 1320
    iput-boolean v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mFirstFrame:Z

    .line 1321
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->registerCallStateListener()V

    .line 1325
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->resetButtonPanelFadeOutCountdown()V

    .line 1327
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->initialize()V

    .line 1328
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1491
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1492
    const-string v1, "not_yet_connected"

    iget v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mOnSaveInstanceStateCallStateCopy:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1494
    return-void

    .line 1492
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1280
    const-string v0, "onStart"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1281
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1283
    invoke-static {}, Lcom/google/android/talk/TalkApp;->refreshTalkLogLevel()I

    .line 1284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStopped:Z

    .line 1286
    new-instance v0, Lcom/google/android/videochat/VideoChatServiceBinder;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/talk/videochat/VideoChatOutputReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/videochat/VideoChatServiceBinder;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    .line 1288
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/talk/videochat/VideoChatActivity$LocalServiceBoundCallback;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;Lcom/google/android/talk/videochat/VideoChatActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/VideoChatServiceBinder;->bind(Lcom/google/android/videochat/VideoChatServiceBinder$ServiceBoundCallback;)V

    .line 1290
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->addRemoteChatListener()V

    .line 1291
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1332
    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->log(Ljava/lang/String;)V

    .line 1333
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1335
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mVcBinder:Lcom/google/android/videochat/VideoChatServiceBinder;

    invoke-virtual {v0}, Lcom/google/android/videochat/VideoChatServiceBinder;->unbind()V

    .line 1338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;

    .line 1340
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity;->removeRemoteChatListener()V

    .line 1343
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1346
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mSpecialEffectManager:Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;

    # invokes: Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->onStop()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;->access$4400(Lcom/google/android/talk/videochat/VideoChatActivity$SpecialEffectManager;)V

    .line 1348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mStopped:Z

    .line 1349
    return-void
.end method

.method public setMuteButtonState(Z)V
    .locals 2
    .param p1, "mute"    # Z

    .prologue
    .line 714
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity;->mMuteButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f020063

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 717
    return-void

    .line 714
    :cond_0
    const v0, 0x7f020065

    goto :goto_0
.end method
