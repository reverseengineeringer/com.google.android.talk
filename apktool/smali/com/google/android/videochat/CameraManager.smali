.class Lcom/google/android/videochat/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/CameraManager$CameraManagerCallback;,
        Lcom/google/android/videochat/CameraManager$FrameOutputParameters;,
        Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;
    }
.end annotation


# static fields
.field private static final CAMERA_STATE_CLOSED:I = 0x0

.field private static final CAMERA_STATE_NATIVE_WANTS:I = 0x1

.field private static final CAMERA_STATE_RUNNING:I = 0x2

.field private static final CAMERA_STATE_SUSPENDED:I = 0x3

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FRAME_RATE:I = 0xf

.field private static final DELAY_BEFORE_FIRST_DIM_FRAME_PUSH_MS:I = 0x3e8

.field private static final DELAY_BETWEEN_DIM_FRAME_PUSH_MS:I = 0x3e8

.field private static final FRAME_PUSHER_MAX_WAIT_MS:I = 0x3e8

.field private static final FRAME_PUSHER_PUSH_FRAME_MSG:I = 0x64

.field private static final FRAME_PUSHER_QUIT_MSG:I = 0x65

.field private static final TAG:Ljava/lang/String; = "vclib:CameraManager"

.field private static final TEST_STABILIZATION:Ljava/lang/String;

.field private static volatile sInstance:Lcom/google/android/videochat/CameraManager;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mCallback:Lcom/google/android/videochat/CameraManager$CameraManagerCallback;

.field private mCamera:Landroid/hardware/Camera;

.field private final mCameraLock:Ljava/lang/Object;

.field private mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

.field private mCameraState:I

.field private mCurrentCameraIndex:I

.field private mCurrentCameraLock:Ljava/lang/Object;

.field private mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

.field private mDefaultCamera:Lcom/google/android/videochat/CameraSpecification;

.field private mDisableCamera:Z

.field private mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

.field private mFramePusher:Landroid/os/Handler;

.field private final mFramePusherLock:Ljava/lang/Object;

.field private mFramePusherPending:Z

.field private final mFramePusherRunnable:Ljava/lang/Runnable;

.field private mHaveReadCameraIds:Z

.field private mLastReportedParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

.field private mLastSourceTimeNs:J

.field private mLastTranslatedTimeNs:J

.field private mLastWallClockTimeNs:J

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNumAvailableCameras:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/videochat/CameraManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 173
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/videochat/CameraManager;->mHaveReadCameraIds:Z

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherLock:Ljava/lang/Object;

    .line 493
    new-instance v0, Lcom/google/android/videochat/CameraManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/CameraManager$1;-><init>(Lcom/google/android/videochat/CameraManager;)V

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherRunnable:Ljava/lang/Runnable;

    .line 174
    const-string v0, "Talk.disableCamera"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "vclib:CameraManager"

    const-string v1, "Disabling camera"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/videochat/CameraManager;->mDisableCamera:Z

    .line 178
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/videochat/CameraManager;->mLastWallClockTimeNs:J

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/videochat/CameraManager;->mLastTranslatedTimeNs:J

    .line 180
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->refreshTalkLogLevel()I

    .line 181
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->readCameraIds()V

    .line 182
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/videochat/CameraManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/videochat/CameraManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/videochat/CameraManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/videochat/CameraManager;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherPending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/videochat/CameraManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/videochat/CameraManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/videochat/CameraManager;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/videochat/CameraManager;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/videochat/CameraManager;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/videochat/CameraManager;
    .param p1, "x1"    # J

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/videochat/CameraManager;->nativePushPausedFrame(J)V

    return-void
.end method

.method public static acquireCameraNative()Z
    .locals 1

    .prologue
    .line 789
    invoke-static {}, Lcom/google/android/videochat/CameraManager;->getInstance()Lcom/google/android/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/videochat/CameraManager;->openCameraForNative()Z

    move-result v0

    return v0
.end method

.method private chooseDefaultCamera()V
    .locals 3

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->readCameraIds()V

    .line 201
    iget v1, p0, Lcom/google/android/videochat/CameraManager;->mNumAvailableCameras:I

    if-nez v1, :cond_0

    .line 228
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mDefaultCamera:Lcom/google/android/videochat/CameraSpecification;

    if-eqz v1, :cond_3

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/google/android/videochat/CameraManager;->mNumAvailableCameras:I

    if-ge v0, v1, :cond_1

    .line 207
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraId:I

    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mDefaultCamera:Lcom/google/android/videochat/CameraSpecification;

    iget v2, v2, Lcom/google/android/videochat/CameraSpecification;->cameraId:I

    if-ne v1, v2, :cond_2

    .line 208
    iput v0, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraIndex:I

    .line 209
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mDefaultCamera:Lcom/google/android/videochat/CameraSpecification;

    iget-object v1, v1, Lcom/google/android/videochat/CameraSpecification;->previewSize:Lcom/google/android/videochat/Size;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mDefaultCamera:Lcom/google/android/videochat/CameraSpecification;

    iget-object v2, v2, Lcom/google/android/videochat/CameraSpecification;->previewSize:Lcom/google/android/videochat/Size;

    iput-object v2, v1, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    .line 212
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSizeIsValid:Z

    .line 227
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    goto :goto_0

    .line 206
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget v1, p0, Lcom/google/android/videochat/CameraManager;->mNumAvailableCameras:I

    if-ge v0, v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraIsFrontFacing:Z

    if-eqz v1, :cond_4

    .line 221
    iput v0, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraIndex:I

    goto :goto_2

    .line 219
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static convertIntegerListToIntArray(Ljava/util/List;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 776
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [I

    .line 777
    .local v3, "intarray":[I
    const/4 v0, 0x0

    .line 778
    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 779
    .local v4, "value":Ljava/lang/Integer;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 781
    .end local v4    # "value":Ljava/lang/Integer;
    :cond_0
    return-object v3
.end method

.method private createLastFramePusher()V
    .locals 3

    .prologue
    .line 537
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherLock:Ljava/lang/Object;

    monitor-enter v2

    .line 538
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 540
    .local v0, "framePusherThread":Ljava/lang/Thread;
    const-string v1, "frame push"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 542
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherPending:Z

    .line 543
    monitor-exit v2

    .line 544
    return-void

    .line 543
    .end local v0    # "framePusherThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private destroyLastFramePusher()V
    .locals 4

    .prologue
    .line 548
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherLock:Ljava/lang/Object;

    monitor-enter v1

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 558
    :try_start_1
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherLock:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 566
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    .line 569
    :cond_1
    monitor-exit v1

    .line 570
    return-void

    .line 569
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 560
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureCameraChosen()V
    .locals 2

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    if-nez v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->chooseDefaultCamera()V

    .line 189
    :cond_0
    monitor-exit v1

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private frameTimeBasisChanged()V
    .locals 2

    .prologue
    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/videochat/CameraManager;->mLastSourceTimeNs:J

    .line 130
    return-void
.end method

.method public static getInstance()Lcom/google/android/videochat/CameraManager;
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/google/android/videochat/CameraManager;->sInstance:Lcom/google/android/videochat/CameraManager;

    if-nez v0, :cond_1

    .line 161
    sget-object v1, Lcom/google/android/videochat/CameraManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Lcom/google/android/videochat/CameraManager;->sInstance:Lcom/google/android/videochat/CameraManager;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/google/android/videochat/CameraManager;

    invoke-direct {v0}, Lcom/google/android/videochat/CameraManager;-><init>()V

    sput-object v0, Lcom/google/android/videochat/CameraManager;->sInstance:Lcom/google/android/videochat/CameraManager;

    .line 165
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_1
    sget-object v0, Lcom/google/android/videochat/CameraManager;->sInstance:Lcom/google/android/videochat/CameraManager;

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSupportedFrameRates()[I
    .locals 6

    .prologue
    .line 750
    iget-object v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v3

    .line 751
    :try_start_0
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 752
    const-string v2, "vclib:CameraManager"

    const-string v4, "no camera, so returning null from getSupportedFrameRates"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v2, 0x0

    monitor-exit v3

    .line 767
    :goto_0
    return-object v2

    .line 756
    :cond_0
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 757
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 758
    .local v0, "framerates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    .line 762
    const-string v2, "vclib:CameraManager"

    const-string v4, "Camera getSupportedPreviewFrameRates returned null"

    invoke-static {v2, v4}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0xf

    aput v5, v2, v4

    monitor-exit v3

    goto :goto_0

    .line 765
    .end local v0    # "framerates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "framerates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 766
    const-string v2, "vclib:CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera getSupportedFrameRates "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-static {v0}, Lcom/google/android/videochat/CameraManager;->convertIntegerListToIntArray(Ljava/util/List;)[I

    move-result-object v2

    goto :goto_0
.end method

.method public static getSupportedFrameRatesNative()[I
    .locals 1

    .prologue
    .line 797
    invoke-static {}, Lcom/google/android/videochat/CameraManager;->getInstance()Lcom/google/android/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/videochat/CameraManager;->getSupportedFrameRates()[I

    move-result-object v0

    return-object v0
.end method

.method private final native nativePushPausedFrame(J)V
.end method

.method private openCameraForNative()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 331
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 332
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/videochat/CameraManager;->mDisableCamera:Z

    if-nez v2, :cond_0

    .line 333
    const-string v2, "vclib:CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCameraForNative state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    packed-switch v2, :pswitch_data_0

    .line 345
    :goto_0
    :pswitch_0
    monitor-exit v1

    .line 347
    :goto_1
    return v0

    .line 337
    :pswitch_1
    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 340
    :pswitch_2
    :try_start_1
    const-string v2, "vclib:CameraManager"

    const-string v3, "got openCameraForNative in state NATIVE_WANTS"

    invoke-static {v2, v3}, Lcom/google/android/videochat/util/LogUtil;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openCameraIfNeeded()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    .line 252
    iget-object v7, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v7

    .line 253
    :try_start_0
    iget-object v8, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/google/android/videochat/CameraManager;->mDisableCamera:Z

    if-nez v8, :cond_5

    .line 257
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->ensureCameraChosen()V

    .line 259
    const-string v8, "vclib:CameraManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Opening Camera "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget v10, v10, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v8, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget v8, v8, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraId:I

    invoke-static {v8}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 262
    iget-object v8, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 265
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    const-string v8, "video-stabilization-supported"

    invoke-virtual {v2, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 266
    .local v5, "vstabSupported":Ljava/lang/String;
    const-string v8, "true"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 267
    const-string v8, "video-stabilization"

    const-string v9, "false"

    invoke-virtual {v2, v8, v9}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object v8, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-boolean v8, v8, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->haveReadCameraParameters:Z

    if-nez v8, :cond_1

    .line 272
    iget-object v8, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_0
    iput-boolean v6, v8, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraSupports3ALocks:Z

    .line 275
    iget-object v6, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->haveReadCameraParameters:Z

    .line 277
    :cond_1
    iget-object v6, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-boolean v6, v6, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSizeIsValid:Z

    if-nez v6, :cond_2

    .line 281
    iget-object v6, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-object v8, p0, Lcom/google/android/videochat/CameraManager;->mCallback:Lcom/google/android/videochat/CameraManager$CameraManagerCallback;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/android/videochat/CameraManager$CameraManagerCallback;->getCaptureSizeForCamera(Ljava/util/List;)Lcom/google/android/videochat/Size;

    move-result-object v8

    iput-object v8, v6, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    .line 283
    iget-object v6, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    const/4 v8, 0x1

    iput-boolean v8, v6, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSizeIsValid:Z

    .line 285
    :cond_2
    const-string v6, "vclib:CameraManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting camera preview size to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-object v9, v9, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v9}, Lcom/google/android/videochat/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v6, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-object v6, v6, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    iget v6, v6, Lcom/google/android/videochat/Size;->width:I

    iget-object v8, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-object v8, v8, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->height:I

    invoke-virtual {v2, v6, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 290
    iget-object v6, p0, Lcom/google/android/videochat/CameraManager;->mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    if-eqz v6, :cond_7

    .line 291
    iget-object v6, p0, Lcom/google/android/videochat/CameraManager;->mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    iget v0, v6, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->frameRate:I

    .line 298
    .local v0, "desiredFrameRate":I
    :goto_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v4

    .line 299
    .local v4, "rates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 300
    .local v3, "rate":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v0, :cond_3

    .line 301
    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 305
    .end local v3    # "rate":Ljava/lang/Integer;
    :cond_4
    iget-object v6, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 306
    iget-object v6, p0, Lcom/google/android/videochat/CameraManager;->mCallback:Lcom/google/android/videochat/CameraManager$CameraManagerCallback;

    iget-object v8, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-object v8, v8, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    iget-object v9, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget v9, v9, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->orientation:I

    iget-object v10, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-boolean v10, v10, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraIsFrontFacing:Z

    invoke-interface {v6, v8, v9, v10}, Lcom/google/android/videochat/CameraManager$CameraManagerCallback;->onCameraOpen(Lcom/google/android/videochat/Size;IZ)V

    .line 310
    .end local v0    # "desiredFrameRate":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "params":Landroid/hardware/Camera$Parameters;
    .end local v4    # "rates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "vstabSupported":Ljava/lang/String;
    :cond_5
    monitor-exit v7

    .line 311
    return-void

    .line 272
    .restart local v2    # "params":Landroid/hardware/Camera$Parameters;
    .restart local v5    # "vstabSupported":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 293
    :cond_7
    const/16 v0, 0xf

    .restart local v0    # "desiredFrameRate":I
    goto :goto_1

    .line 310
    .end local v0    # "desiredFrameRate":I
    .end local v2    # "params":Landroid/hardware/Camera$Parameters;
    .end local v5    # "vstabSupported":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private readCameraIds()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 231
    iget-boolean v2, p0, Lcom/google/android/videochat/CameraManager;->mHaveReadCameraIds:Z

    if-nez v2, :cond_2

    .line 232
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 233
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/google/android/videochat/CameraManager;->mNumAvailableCameras:I

    .line 234
    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mNumAvailableCameras:I

    new-array v2, v2, [Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iput-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    .line 235
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mNumAvailableCameras:I

    if-ge v1, v2, :cond_1

    .line 236
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 237
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    new-instance v4, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;-><init>(Lcom/google/android/videochat/CameraManager$1;)V

    aput-object v4, v2, v1

    .line 238
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v2, v2, v1

    iput v1, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraId:I

    .line 239
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v4, v2, v1

    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_1
    iput-boolean v2, v4, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraIsFrontFacing:Z

    .line 241
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v2, v2, v1

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v4, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->orientation:I

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 243
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/videochat/CameraManager;->mHaveReadCameraIds:Z

    .line 245
    .end local v0    # "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private releaseCamera()V
    .locals 3

    .prologue
    .line 317
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    const-string v0, "vclib:CameraManager"

    const-string v2, "releaseCamera"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 321
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 324
    :cond_0
    monitor-exit v1

    .line 325
    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releaseCameraForNative()V
    .locals 4

    .prologue
    .line 357
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/videochat/CameraManager;->mDisableCamera:Z

    if-nez v0, :cond_0

    .line 359
    const-string v0, "vclib:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseCameraForNative state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    .line 362
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->releaseCamera()V

    .line 363
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "vclib:CameraManager"

    const-string v2, "releaseForNative called while in NATIVE_WANTS but camera didn\'t actually release"

    invoke-static {v0, v2}, Lcom/google/android/videochat/util/LogUtil;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static releaseCameraNative()V
    .locals 1

    .prologue
    .line 793
    invoke-static {}, Lcom/google/android/videochat/CameraManager;->getInstance()Lcom/google/android/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/videochat/CameraManager;->releaseCameraForNative()V

    .line 794
    return-void
.end method

.method private setCaptureParameters(IIII)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormatNotUsed"    # I
    .param p4, "frameRate"    # I

    .prologue
    .line 415
    const-string v0, "vclib:CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera setCaptureParameters state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    new-instance v0, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    new-instance v2, Lcom/google/android/videochat/Size;

    invoke-direct {v2, p1, p2}, Lcom/google/android/videochat/Size;-><init>(II)V

    invoke-direct {v0, v2, p4}, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;-><init>(Lcom/google/android/videochat/Size;I)V

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    .line 424
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCallback:Lcom/google/android/videochat/CameraManager$CameraManagerCallback;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCallback:Lcom/google/android/videochat/CameraManager$CameraManagerCallback;

    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    invoke-interface {v0, v2}, Lcom/google/android/videochat/CameraManager$CameraManagerCallback;->onFrameOutputSet(Lcom/google/android/videochat/CameraManager$FrameOutputParameters;)V

    .line 427
    :cond_0
    monitor-exit v1

    .line 428
    return-void

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setCaptureParametersNative(IIII)V
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "imageFormat"    # I
    .param p3, "frameRate"    # I

    .prologue
    .line 802
    invoke-static {}, Lcom/google/android/videochat/CameraManager;->getInstance()Lcom/google/android/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/videochat/CameraManager;->setCaptureParameters(IIII)V

    .line 803
    return-void
.end method

.method private useCameraInternal(ILcom/google/android/videochat/Size;)V
    .locals 6
    .param p1, "cameraIndex"    # I
    .param p2, "previewSize"    # Lcom/google/android/videochat/Size;

    .prologue
    .line 454
    iget-object v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v3

    .line 455
    :try_start_0
    const-string v2, "vclib:CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchCamera state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->releaseCamera()V

    .line 459
    iput p1, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraIndex:I

    .line 460
    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 461
    :try_start_1
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget v5, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraIndex:I

    aget-object v2, v2, v5

    iput-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    .line 462
    if-eqz p2, :cond_0

    .line 463
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iput-object p2, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    .line 464
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSizeIsValid:Z

    .line 466
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :try_start_2
    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    packed-switch v2, :pswitch_data_0

    .line 490
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 491
    :goto_1
    return-void

    .line 466
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 490
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 470
    :pswitch_0
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->openCameraIfNeeded()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 472
    :try_start_6
    sget-object v2, Lcom/google/android/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 475
    const/4 v0, 0x1

    .line 476
    .local v0, "always":Z
    if-eqz v0, :cond_2

    .line 477
    new-instance v2, Ljava/io/IOException;

    const-string v4, "not supported"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 482
    .end local v0    # "always":Z
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string v2, "vclib:CameraManager"

    const-string v4, "setPreviewTexture failed"

    invoke-static {v2, v4}, Lcom/google/android/videochat/util/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 480
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_8
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 486
    :cond_2
    :try_start_9
    const-string v2, "vclib:CameraManager"

    const-string v4, "switchCamera calling startPreview"

    invoke-static {v2, v4}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public arePreview3ALocksSupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 623
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 624
    :try_start_0
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    if-nez v2, :cond_0

    .line 625
    const-string v2, "vclib:CameraManager"

    const-string v3, "Calling arePreview3ALocksSupported without a current camera!"

    invoke-static {v2, v3}, Lcom/google/android/videochat/util/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    monitor-exit v1

    .line 636
    :goto_0
    return v0

    .line 630
    :cond_0
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-boolean v2, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->haveReadCameraParameters:Z

    if-nez v2, :cond_1

    .line 631
    const-string v2, "vclib:CameraManager"

    const-string v3, "Calling arePreview3ALocksSupported before reading camera parameters!"

    invoke-static {v2, v3}, Lcom/google/android/videochat/util/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    monitor-exit v1

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 636
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-boolean v0, v0, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraSupports3ALocks:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCurrentCameraId()I
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget v1, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraId:I

    return v0
.end method

.method public getCurrentFrameOutputParameters()Lcom/google/android/videochat/CameraManager$FrameOutputParameters;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    return-object v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 376
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/videochat/CameraManager;->mDisableCamera:Z

    if-nez v0, :cond_0

    .line 378
    const-string v0, "vclib:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->destroyLastFramePusher()V

    .line 380
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    .line 381
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->releaseCamera()V

    .line 382
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->chooseDefaultCamera()V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    .line 385
    :cond_0
    monitor-exit v1

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setApplicationCallback(Lcom/google/android/videochat/CameraManager$CameraManagerCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/google/android/videochat/CameraManager$CameraManagerCallback;

    .prologue
    .line 393
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_0
    iput-object p1, p0, Lcom/google/android/videochat/CameraManager;->mCallback:Lcom/google/android/videochat/CameraManager$CameraManagerCallback;

    .line 395
    monitor-exit v1

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultCamera(Lcom/google/android/videochat/CameraSpecification;)V
    .locals 0
    .param p1, "cam"    # Lcom/google/android/videochat/CameraSpecification;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/videochat/CameraManager;->mDefaultCamera:Lcom/google/android/videochat/CameraSpecification;

    .line 196
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->ensureCameraChosen()V

    .line 197
    return-void
.end method

.method public setPreview3ALocks(Z)V
    .locals 4
    .param p1, "toggle"    # Z

    .prologue
    .line 601
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 602
    :try_start_0
    iget v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 603
    const-string v1, "vclib:CameraManager"

    const-string v3, "Can\'t lock AE/AWB when camera not running!"

    invoke-static {v1, v3}, Lcom/google/android/videochat/util/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    monitor-exit v2

    .line 615
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-boolean v1, v1, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraSupports3ALocks:Z

    if-nez v1, :cond_1

    .line 607
    const-string v1, "vclib:CameraManager"

    const-string v3, "Current camera does not support AE/AWB locks."

    invoke-static {v1, v3}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    monitor-exit v2

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 610
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 611
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 612
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 613
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 614
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 648
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 649
    :try_start_0
    const-string v3, "vclib:CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreviewSurfaceTexture "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-boolean v3, p0, Lcom/google/android/videochat/CameraManager;->mDisableCamera:Z

    if-eqz v3, :cond_0

    .line 652
    monitor-exit v2

    .line 741
    :goto_0
    return-void

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->frameTimeBasisChanged()V

    .line 655
    if-nez p1, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/google/android/videochat/CameraManager;->suspendCamera()V

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 658
    monitor-exit v2

    goto :goto_0

    .line 740
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 660
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/videochat/CameraManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 661
    iget v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    packed-switch v3, :pswitch_data_0

    .line 672
    :goto_1
    sget-object v3, Lcom/google/android/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_2

    .line 673
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    :cond_2
    :try_start_2
    sget-object v3, Lcom/google/android/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 679
    const-class v3, Landroid/media/MediaPlayer;

    .line 680
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/SurfaceTexture;

    aput-object v6, v4, v5

    .line 681
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 683
    :try_start_3
    const-string v6, "setTexture"

    invoke-virtual {v3, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 690
    :goto_2
    if-eqz v0, :cond_3

    .line 691
    :try_start_4
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 697
    :cond_3
    :try_start_5
    sget-object v0, Lcom/google/android/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    .line 699
    :try_start_6
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/google/android/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 724
    :goto_3
    :try_start_7
    new-instance v0, Lcom/google/android/videochat/CameraManager$1Latch;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/CameraManager$1Latch;-><init>(Lcom/google/android/videochat/CameraManager;)V

    .line 725
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/google/android/videochat/CameraManager$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/videochat/CameraManager$2;-><init>(Lcom/google/android/videochat/CameraManager;Lcom/google/android/videochat/CameraManager$1Latch;)V

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 733
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 734
    invoke-virtual {v0}, Lcom/google/android/videochat/CameraManager$1Latch;->awaitSet()V

    .line 735
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 737
    :cond_4
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 738
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    .line 739
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->destroyLastFramePusher()V

    .line 740
    monitor-exit v2

    goto :goto_0

    .line 665
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->openCameraIfNeeded()V

    goto :goto_1

    .line 669
    :pswitch_1
    iget-object v3, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    goto :goto_1

    .line 685
    :catch_0
    move-exception v0

    move v0, v1

    .line 688
    goto :goto_2

    .line 686
    :catch_1
    move-exception v0

    move v0, v1

    .line 688
    goto :goto_2

    .line 687
    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_2

    .line 693
    :catch_3
    move-exception v0

    .line 694
    const-string v0, "vclib:CameraManager"

    const-string v1, "setPreviewTexture failed"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    monitor-exit v2

    goto/16 :goto_0

    .line 704
    :catch_4
    move-exception v0

    .line 705
    const-string v1, "vclib:CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    .line 661
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public suspendCamera()V
    .locals 4

    .prologue
    .line 577
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 578
    :try_start_0
    const-string v0, "vclib:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspendCamera state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 580
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    .line 581
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->releaseCamera()V

    .line 582
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->frameTimeBasisChanged()V

    .line 583
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->createLastFramePusher()V

    .line 585
    :cond_0
    monitor-exit v1

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public translateFrameTime(J)J
    .locals 8
    .param p1, "sourceTimeNs"    # J

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/google/android/videochat/CameraManager;->mLastTranslatedTimeNs:J

    .line 143
    .local v0, "computedFrameTimeNs":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 144
    .local v2, "newWallClockTimeNs":J
    iget-wide v4, p0, Lcom/google/android/videochat/CameraManager;->mLastSourceTimeNs:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 145
    iget-wide v4, p0, Lcom/google/android/videochat/CameraManager;->mLastSourceTimeNs:J

    sub-long v4, p1, v4

    add-long/2addr v0, v4

    .line 150
    :goto_0
    iput-wide v0, p0, Lcom/google/android/videochat/CameraManager;->mLastTranslatedTimeNs:J

    .line 151
    iput-wide v2, p0, Lcom/google/android/videochat/CameraManager;->mLastWallClockTimeNs:J

    .line 152
    return-wide v0

    .line 148
    :cond_0
    iget-wide v4, p0, Lcom/google/android/videochat/CameraManager;->mLastWallClockTimeNs:J

    sub-long v4, v2, v4

    add-long/2addr v0, v4

    goto :goto_0
.end method

.method public useCamera(Lcom/google/android/videochat/CameraSpecification;)V
    .locals 6
    .param p1, "cam"    # Lcom/google/android/videochat/CameraSpecification;

    .prologue
    .line 431
    iget-object v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v3

    .line 432
    const/4 v1, -0x1

    .line 433
    .local v1, "targetCameraIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mNumAvailableCameras:I

    if-ge v0, v2, :cond_0

    .line 434
    iget v2, p1, Lcom/google/android/videochat/CameraSpecification;->cameraId:I

    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraId:I

    if-ne v2, v4, :cond_1

    .line 435
    move v1, v0

    .line 440
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 441
    const-string v2, "vclib:CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t switch to camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/google/android/videochat/CameraSpecification;->cameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Invalid id."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    monitor-exit v3

    .line 447
    :goto_1
    return-void

    .line 433
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_2
    iget-object v2, p1, Lcom/google/android/videochat/CameraSpecification;->previewSize:Lcom/google/android/videochat/Size;

    invoke-direct {p0, v1, v2}, Lcom/google/android/videochat/CameraManager;->useCameraInternal(ILcom/google/android/videochat/Size;)V

    .line 446
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
