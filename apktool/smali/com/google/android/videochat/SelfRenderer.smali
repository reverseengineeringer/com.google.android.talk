.class public Lcom/google/android/videochat/SelfRenderer;
.super Lcom/google/android/videochat/Renderer;
.source "SelfRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/SelfRenderer$SelfRendererInputData;,
        Lcom/google/android/videochat/SelfRenderer$CameraInputData;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

.field private mCamera:Lcom/google/android/videochat/CameraManager;

.field private mCameraCaptureFlip:Z

.field private mCameraInputData:Lcom/google/android/videochat/SelfRenderer$CameraInputData;

.field private final mCameraInterface:Lcom/google/android/videochat/CameraInterface;

.field private mCameraOrientation:I

.field private mCameraOutputTextureName:I

.field private mCameraRendererID:I

.field private mCameraRotation:I

.field private mCameraStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

.field private mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mCameraTransformMatrix:[F

.field private mCaptureSize:Lcom/google/android/videochat/Size;

.field private mCurrentImageStabilizationLevel:I

.field private mDeviceOrientation:I

.field private final mEffectsLock:Ljava/lang/Object;

.field private mEncodeRendererID:I

.field private mEncodeStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

.field private mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

.field private mHaveInitializedCameraSettings:Z

.field private volatile mHaveSeenFirstFrame:Z

.field private mImageStabilizationRendererID:I

.field private mImageStabilizationStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

.field private mImageStabilizationTextureName:I

.field private mLastCameraFrameTime:J

.field private mMaxFrameOutputParameters:Lcom/google/android/videochat/Size;

.field private mOutputTextureName:I

.field private mPendingImageStabilizationLevel:I

.field private mResetImageStabilization:Z

.field private mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

.field private mRotatedCaptureSize:Lcom/google/android/videochat/Size;

.field private mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

.field private mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

.field private mRotationTransform:[F

.field private volatile mSelfFrameReady:Z

.field private final mSelfFrameReadyLock:Ljava/lang/Object;

.field private mSelfRendererInputData:Lcom/google/android/videochat/SelfRenderer$SelfRendererInputData;

.field private mSelfViewTransformMatrix:[F

.field private mUseMaxSizeForCameraBuffer:Z


# direct methods
.method constructor <init>(Lcom/google/android/videochat/RendererManager;Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;Lcom/google/android/videochat/CameraSpecification;)V
    .locals 5
    .param p1, "rendererManager"    # Lcom/google/android/videochat/RendererManager;
    .param p2, "callback"    # Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;
    .param p3, "defaultCamera"    # Lcom/google/android/videochat/CameraSpecification;

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x10

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Lcom/google/android/videochat/Renderer;-><init>()V

    .line 21
    iput v3, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    .line 22
    iput v3, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    .line 23
    iput v3, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    .line 36
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraTransformMatrix:[F

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfViewTransformMatrix:[F

    .line 39
    new-instance v0, Lcom/google/android/videochat/SelfRenderer$CameraInputData;

    invoke-direct {v0, v4}, Lcom/google/android/videochat/SelfRenderer$CameraInputData;-><init>(Lcom/google/android/videochat/SelfRenderer$1;)V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraInputData:Lcom/google/android/videochat/SelfRenderer$CameraInputData;

    .line 40
    new-instance v0, Lcom/google/android/videochat/SelfRenderer$SelfRendererInputData;

    invoke-direct {v0, v4}, Lcom/google/android/videochat/SelfRenderer$SelfRendererInputData;-><init>(Lcom/google/android/videochat/SelfRenderer$1;)V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfRendererInputData:Lcom/google/android/videochat/SelfRenderer$SelfRendererInputData;

    .line 41
    iput-boolean v2, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReady:Z

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReadyLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mEffectsLock:Ljava/lang/Object;

    .line 44
    iput v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCurrentImageStabilizationLevel:I

    .line 45
    iput v2, p0, Lcom/google/android/videochat/SelfRenderer;->mPendingImageStabilizationLevel:I

    .line 46
    iput-boolean v2, p0, Lcom/google/android/videochat/SelfRenderer;->mResetImageStabilization:Z

    .line 47
    new-instance v0, Lcom/google/android/videochat/util/GLStopWatch;

    const-string v1, "SelfVideo.camera"

    invoke-direct {v0, v1}, Lcom/google/android/videochat/util/GLStopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    .line 48
    new-instance v0, Lcom/google/android/videochat/util/GLStopWatch;

    const-string v1, "SelfVideo.encode"

    invoke-direct {v0, v1}, Lcom/google/android/videochat/util/GLStopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    .line 49
    new-instance v0, Lcom/google/android/videochat/util/GLStopWatch;

    const-string v1, "SelfVideo.stabilize"

    invoke-direct {v0, v1}, Lcom/google/android/videochat/util/GLStopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    .line 81
    iput-object p1, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    .line 82
    iput-object p2, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    .line 83
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->instantiateRenderer(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    .line 85
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    invoke-virtual {v0, v2}, Lcom/google/android/videochat/RendererManager;->instantiateRenderer(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    .line 87
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "vclib:SelfRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct cam "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-static {}, Lcom/google/android/videochat/CameraManager;->getInstance()Lcom/google/android/videochat/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    .line 92
    if-eqz p3, :cond_1

    iget v0, p3, Lcom/google/android/videochat/CameraSpecification;->cameraId:I

    if-eq v0, v3, :cond_1

    .line 93
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    invoke-virtual {v0, p3}, Lcom/google/android/videochat/CameraManager;->setDefaultCamera(Lcom/google/android/videochat/CameraSpecification;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    new-instance v1, Lcom/google/android/videochat/SelfRenderer$1;

    invoke-direct {v1, p0}, Lcom/google/android/videochat/SelfRenderer$1;-><init>(Lcom/google/android/videochat/SelfRenderer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/CameraManager;->setApplicationCallback(Lcom/google/android/videochat/CameraManager$CameraManagerCallback;)V

    .line 179
    new-instance v0, Lcom/google/android/videochat/CameraInterface;

    iget-object v1, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    invoke-direct {v0, v1}, Lcom/google/android/videochat/CameraInterface;-><init>(Lcom/google/android/videochat/CameraManager;)V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraInterface:Lcom/google/android/videochat/CameraInterface;

    .line 180
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    invoke-virtual {v0, p0}, Lcom/google/android/videochat/RendererManager;->registerRendererForStats(Lcom/google/android/videochat/Renderer;)V

    .line 181
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/videochat/SelfRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/videochat/SelfRenderer;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->recomputeCameraRotation()V

    return-void
.end method

.method static synthetic access$1102(Lcom/google/android/videochat/SelfRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/videochat/SelfRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveSeenFirstFrame:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/videochat/SelfRenderer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/videochat/SelfRenderer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReadyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/google/android/videochat/SelfRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/videochat/SelfRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReady:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/videochat/SelfRenderer;Lcom/google/android/videochat/CameraManager$FrameOutputParameters;)Lcom/google/android/videochat/CameraManager$FrameOutputParameters;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/videochat/SelfRenderer;
    .param p1, "x1"    # Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/videochat/SelfRenderer;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/videochat/SelfRenderer;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->onFrameSizesChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/videochat/SelfRenderer;)Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/videochat/SelfRenderer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/videochat/SelfRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/videochat/SelfRenderer;

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/videochat/SelfRenderer;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/android/videochat/SelfRenderer;

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/videochat/SelfRenderer;Lcom/google/android/videochat/Size;)Lcom/google/android/videochat/Size;
    .locals 0
    .param p0, "x0"    # Lcom/google/android/videochat/SelfRenderer;
    .param p1, "x1"    # Lcom/google/android/videochat/Size;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/videochat/SelfRenderer;->mCaptureSize:Lcom/google/android/videochat/Size;

    return-object p1
.end method

.method static synthetic access$802(Lcom/google/android/videochat/SelfRenderer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/android/videochat/SelfRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraCaptureFlip:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/android/videochat/SelfRenderer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/android/videochat/SelfRenderer;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOrientation:I

    return p1
.end method

.method private initializeImageStabilizationRenderer()V
    .locals 4

    .prologue
    .line 472
    const-string v0, "vclib:SelfRenderer"

    const-string v1, "initializeImageStabilizationRenderer"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const-string v2, "sub_intex"

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOutputTextureName:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 477
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->setSizeOnImageStabilizationRenderer()V

    .line 478
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->initializeGLContext(I)Z

    .line 479
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const-string v2, "sub_outtex"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/videochat/RendererManager;->getIntParam(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationTextureName:I

    .line 482
    return-void
.end method

.method private onFrameSizesChanged()V
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/high16 v13, 0x40000000    # 2.0f

    .line 225
    const-string v6, "vclib:SelfRenderer"

    const-string v8, "onFrameSizesChanged"

    invoke-static {v6, v8}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCaptureSize:Lcom/google/android/videochat/Size;

    if-nez v6, :cond_0

    .line 332
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mMaxFrameOutputParameters:Lcom/google/android/videochat/Size;

    if-eqz v6, :cond_4

    .line 235
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    iget-object v6, v6, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->size:Lcom/google/android/videochat/Size;

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mMaxFrameOutputParameters:Lcom/google/android/videochat/Size;

    invoke-static {v6, v8}, Lcom/google/android/videochat/Size;->scaleToMax(Lcom/google/android/videochat/Size;Lcom/google/android/videochat/Size;)Lcom/google/android/videochat/Size;

    move-result-object v5

    .line 243
    .local v5, "scaledFrameOutputParameters":Lcom/google/android/videochat/Size;
    :goto_1
    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    const/16 v8, 0xb4

    if-ne v6, v8, :cond_5

    .line 244
    :cond_1
    new-instance v6, Lcom/google/android/videochat/Size;

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mCaptureSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->width:I

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mCaptureSize:Lcom/google/android/videochat/Size;

    iget v9, v9, Lcom/google/android/videochat/Size;->height:I

    invoke-direct {v6, v8, v9}, Lcom/google/android/videochat/Size;-><init>(II)V

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    .line 246
    iget v3, v5, Lcom/google/android/videochat/Size;->width:I

    .line 247
    .local v3, "rotatedFrameOutputWidth":I
    iget v2, v5, Lcom/google/android/videochat/Size;->height:I

    .line 256
    .local v2, "rotatedFrameOutputHeight":I
    :goto_2
    new-instance v6, Lcom/google/android/videochat/Size;

    add-int/lit8 v8, v3, 0x4

    and-int/lit8 v8, v8, -0x8

    add-int/lit8 v9, v2, 0x1

    and-int/lit8 v9, v9, -0x2

    invoke-direct {v6, v8, v9}, Lcom/google/android/videochat/Size;-><init>(II)V

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    .line 259
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    iget v6, v6, Lcom/google/android/videochat/Size;->width:I

    int-to-float v6, v6

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->height:I

    int-to-float v8, v8

    div-float v0, v6, v8

    .line 261
    .local v0, "captureAspectRatio":F
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v6, v6, Lcom/google/android/videochat/Size;->width:I

    int-to-float v6, v6

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->height:I

    int-to-float v8, v8

    div-float v1, v6, v8

    .line 264
    .local v1, "outputAspectRatio":F
    cmpg-float v6, v0, v1

    if-gez v6, :cond_6

    .line 265
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    iget v6, v6, Lcom/google/android/videochat/Size;->width:I

    int-to-float v6, v6

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->width:I

    int-to-float v8, v8

    div-float v4, v6, v8

    .line 269
    .local v4, "scale":F
    :goto_3
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    invoke-static {v6, v4}, Lcom/google/android/videochat/Size;->newWithScaleDown(Lcom/google/android/videochat/Size;F)Lcom/google/android/videochat/Size;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    .line 271
    iget-boolean v6, p0, Lcom/google/android/videochat/SelfRenderer;->mUseMaxSizeForCameraBuffer:Z

    if-eqz v6, :cond_7

    .line 272
    new-instance v6, Lcom/google/android/videochat/Size;

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    invoke-direct {v6, v8}, Lcom/google/android/videochat/Size;-><init>(Lcom/google/android/videochat/Size;)V

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

    .line 277
    :goto_4
    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    sparse-switch v6, :sswitch_data_0

    .line 288
    invoke-static {}, Lcom/google/android/videochat/util/MatrixUtil;->getIdentityMatrix()[F

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotationTransform:[F

    .line 292
    :goto_5
    iget-object v8, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v9, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    const-string v10, "sub_flipinput"

    iget-boolean v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraCaptureFlip:Z

    if-eqz v6, :cond_8

    move v6, v7

    :goto_6
    invoke-virtual {v8, v9, v10, v6}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 294
    iget-object v6, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v9, "c_rotation"

    iget v10, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    invoke-virtual {v6, v8, v9, v10}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 296
    iget-object v6, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v9, "sub_outdims"

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v10}, Lcom/google/android/videochat/Size;->getEncodedDimensions()I

    move-result v10

    invoke-virtual {v6, v8, v9, v10}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 299
    iget-object v6, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v9, "sub_indims"

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v10}, Lcom/google/android/videochat/Size;->getEncodedDimensions()I

    move-result v10

    invoke-virtual {v6, v8, v9, v10}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 303
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 304
    const-string v6, "vclib:SelfRenderer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Self dimensions - captureAspectRatio "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " outputAspectRatio "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scale "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mFrameOutputParameters = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    iget-object v9, v9, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->size:Lcom/google/android/videochat/Size;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mMaxFrameOutputParameters = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mMaxFrameOutputParameters:Lcom/google/android/videochat/Size;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mRotatedCaptureSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v9}, Lcom/google/android/videochat/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mRotatedCameraBufferSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v9}, Lcom/google/android/videochat/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mRotatedScaledDownCameraBufferSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v9}, Lcom/google/android/videochat/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mRotatedFrameOutputSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v9}, Lcom/google/android/videochat/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_2
    iget-object v6, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v9, "sub_inclip"

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    iget v10, v10, Lcom/google/android/videochat/Size;->width:I

    iget-object v11, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v11, v11, Lcom/google/android/videochat/Size;->width:I

    sub-int/2addr v10, v11

    shl-int/lit8 v10, v10, 0x10

    iget-object v11, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    iget v11, v11, Lcom/google/android/videochat/Size;->height:I

    iget-object v12, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v12, v12, Lcom/google/android/videochat/Size;->height:I

    sub-int/2addr v11, v12

    or-int/2addr v10, v11

    invoke-virtual {v6, v8, v9, v10}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 319
    iget-object v6, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    const-string v9, "sub_outdims"

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v10}, Lcom/google/android/videochat/Size;->getEncodedDimensions()I

    move-result v10

    invoke-virtual {v6, v8, v9, v10}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 322
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->width:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v9, v9, Lcom/google/android/videochat/Size;->height:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    iget v9, v9, Lcom/google/android/videochat/Size;->width:I

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v10, v10, Lcom/google/android/videochat/Size;->width:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    iget v10, v10, Lcom/google/android/videochat/Size;->width:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    div-float/2addr v9, v13

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    iget v10, v10, Lcom/google/android/videochat/Size;->height:I

    iget-object v11, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v11, v11, Lcom/google/android/videochat/Size;->height:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    iget v11, v11, Lcom/google/android/videochat/Size;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    div-float/2addr v10, v13

    invoke-interface {v6, v8, v9, v10}, Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;->onFrameGeometryChanged(FFF)V

    .line 328
    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    .line 329
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->setSizeOnImageStabilizationRenderer()V

    .line 331
    :cond_3
    iput-boolean v7, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveInitializedCameraSettings:Z

    goto/16 :goto_0

    .line 238
    .end local v0    # "captureAspectRatio":F
    .end local v1    # "outputAspectRatio":F
    .end local v2    # "rotatedFrameOutputHeight":I
    .end local v3    # "rotatedFrameOutputWidth":I
    .end local v4    # "scale":F
    .end local v5    # "scaledFrameOutputParameters":Lcom/google/android/videochat/Size;
    :cond_4
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    iget-object v5, v6, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->size:Lcom/google/android/videochat/Size;

    .restart local v5    # "scaledFrameOutputParameters":Lcom/google/android/videochat/Size;
    goto/16 :goto_1

    .line 249
    :cond_5
    new-instance v6, Lcom/google/android/videochat/Size;

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mCaptureSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->height:I

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mCaptureSize:Lcom/google/android/videochat/Size;

    iget v9, v9, Lcom/google/android/videochat/Size;->width:I

    invoke-direct {v6, v8, v9}, Lcom/google/android/videochat/Size;-><init>(II)V

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    .line 251
    iget v3, v5, Lcom/google/android/videochat/Size;->height:I

    .line 252
    .restart local v3    # "rotatedFrameOutputWidth":I
    iget v2, v5, Lcom/google/android/videochat/Size;->width:I

    .restart local v2    # "rotatedFrameOutputHeight":I
    goto/16 :goto_2

    .line 267
    .restart local v0    # "captureAspectRatio":F
    .restart local v1    # "outputAspectRatio":F
    :cond_6
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    iget v6, v6, Lcom/google/android/videochat/Size;->height:I

    int-to-float v6, v6

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->height:I

    int-to-float v8, v8

    div-float v4, v6, v8

    .restart local v4    # "scale":F
    goto/16 :goto_3

    .line 274
    :cond_7
    new-instance v6, Lcom/google/android/videochat/Size;

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-direct {v6, v8}, Lcom/google/android/videochat/Size;-><init>(Lcom/google/android/videochat/Size;)V

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

    goto/16 :goto_4

    .line 279
    :sswitch_0
    invoke-static {}, Lcom/google/android/videochat/util/MatrixUtil;->getRotate90Matrix()[F

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotationTransform:[F

    goto/16 :goto_5

    .line 282
    :sswitch_1
    invoke-static {}, Lcom/google/android/videochat/util/MatrixUtil;->getRotate180Matrix()[F

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotationTransform:[F

    goto/16 :goto_5

    .line 285
    :sswitch_2
    invoke-static {}, Lcom/google/android/videochat/util/MatrixUtil;->getRotate270Matrix()[F

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotationTransform:[F

    goto/16 :goto_5

    .line 292
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 277
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private recomputeCameraRotation()V
    .locals 2

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraCaptureFlip:Z

    if-eqz v0, :cond_0

    .line 185
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOrientation:I

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mDeviceOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    .line 186
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOrientation:I

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mDeviceOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    goto :goto_0
.end method

.method private setOutputTextureName(I)V
    .locals 2
    .param p1, "textureName"    # I

    .prologue
    .line 406
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mOutputTextureName:I

    if-eq p1, v0, :cond_0

    .line 407
    iput p1, p0, Lcom/google/android/videochat/SelfRenderer;->mOutputTextureName:I

    .line 408
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mOutputTextureName:I

    invoke-interface {v0, v1}, Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;->onOutputTextureNameChanged(I)V

    .line 412
    :cond_0
    return-void
.end method

.method private setSizeOnImageStabilizationRenderer()V
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const-string v2, "sub_indims"

    iget-object v3, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v3}, Lcom/google/android/videochat/Size;->getEncodedDimensions()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 488
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const-string v2, "sub_outdims"

    iget-object v3, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v3}, Lcom/google/android/videochat/Size;->getEncodedDimensions()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 491
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 445
    return-void
.end method

.method public encodeFrame()V
    .locals 4

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    invoke-virtual {v0}, Lcom/google/android/videochat/util/GLStopWatch;->start()V

    .line 605
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfRendererInputData:Lcom/google/android/videochat/SelfRenderer$SelfRendererInputData;

    iget-wide v1, p0, Lcom/google/android/videochat/SelfRenderer;->mLastCameraFrameTime:J

    iput-wide v1, v0, Lcom/google/android/videochat/SelfRenderer$SelfRendererInputData;->lastCameraFrameTimeNs:J

    .line 606
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfRendererInputData:Lcom/google/android/videochat/SelfRenderer$SelfRendererInputData;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/videochat/RendererManager;->renderFrame(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 607
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    invoke-virtual {v0}, Lcom/google/android/videochat/util/GLStopWatch;->stop()V

    .line 608
    return-void
.end method

.method public getCamera()Lcom/google/android/videochat/CameraInterface;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraInterface:Lcom/google/android/videochat/CameraInterface;

    return-object v0
.end method

.method public getCameraBufferSize()Lcom/google/android/videochat/Size;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Lcom/google/android/videochat/Size;

    iget-object v1, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-direct {v0, v1}, Lcom/google/android/videochat/Size;-><init>(Lcom/google/android/videochat/Size;)V

    return-object v0
.end method

.method public getMostRecentCameraFrameTime()J
    .locals 2

    .prologue
    .line 499
    iget-wide v0, p0, Lcom/google/android/videochat/SelfRenderer;->mLastCameraFrameTime:J

    return-wide v0
.end method

.method public getOutputTextureName()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mOutputTextureName:I

    return v0
.end method

.method public initializeGLContext()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 336
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    const-string v2, "vclib:SelfRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeGLContext "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iput-boolean v6, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveSeenFirstFrame:Z

    .line 341
    iput-boolean v6, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveInitializedCameraSettings:Z

    .line 342
    iput-boolean v6, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReady:Z

    .line 344
    new-array v1, v5, [I

    .line 345
    .local v1, "textures":[I
    invoke-static {v5, v1, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 346
    const-string v2, "gen camera texture"

    invoke-static {v2}, Lcom/google/android/videochat/util/RendererUtil;->checkGlError(Ljava/lang/String;)V

    .line 347
    aget v0, v1, v6

    .line 348
    .local v0, "cameraExternalTextureName":I
    new-instance v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 349
    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v3, Lcom/google/android/videochat/SelfRenderer$2;

    invoke-direct {v3, p0}, Lcom/google/android/videochat/SelfRenderer$2;-><init>(Lcom/google/android/videochat/SelfRenderer;)V

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 358
    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    iget-object v3, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Lcom/google/android/videochat/CameraManager;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 360
    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    invoke-virtual {v2}, Lcom/google/android/videochat/CameraManager;->getCurrentFrameOutputParameters()Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    .line 361
    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    if-nez v2, :cond_2

    .line 363
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    const-string v2, "vclib:SelfRenderer"

    const-string v3, "initializeGLContext -- no frameOutputParams yet"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_1
    new-instance v2, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    new-instance v3, Lcom/google/android/videochat/Size;

    const/16 v4, 0x140

    const/16 v5, 0xc8

    invoke-direct {v3, v4, v5}, Lcom/google/android/videochat/Size;-><init>(II)V

    const/16 v4, 0xf

    invoke-direct {v2, v3, v4}, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;-><init>(Lcom/google/android/videochat/Size;I)V

    iput-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    .line 369
    :cond_2
    iget-object v2, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    const-string v4, "sub_intex"

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 372
    iget-object v2, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    invoke-virtual {v2, v3}, Lcom/google/android/videochat/RendererManager;->initializeGLContext(I)Z

    .line 373
    iget-object v2, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    invoke-virtual {v2, v3}, Lcom/google/android/videochat/RendererManager;->initializeGLContext(I)Z

    .line 374
    iput v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCurrentImageStabilizationLevel:I

    .line 375
    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 376
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->initializeImageStabilizationRenderer()V

    .line 379
    :cond_3
    iget-object v2, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    const-string v4, "sub_outtex"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/videochat/RendererManager;->getIntParam(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOutputTextureName:I

    .line 381
    iget-object v2, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v4, "sub_intex"

    iget v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOutputTextureName:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 384
    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOutputTextureName:I

    invoke-direct {p0, v2}, Lcom/google/android/videochat/SelfRenderer;->setOutputTextureName(I)V

    .line 385
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/videochat/SelfRenderer;->mLastCameraFrameTime:J

    .line 386
    return-void
.end method

.method public overrideEncodeTexture(I)V
    .locals 3
    .param p1, "textureName"    # I

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v2, "sub_intex"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 418
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 428
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    const-string v0, "vclib:SelfRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release cam "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    invoke-virtual {v0, v3}, Lcom/google/android/videochat/CameraManager;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 433
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->releaseRenderer(I)V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    invoke-virtual {v0, p0}, Lcom/google/android/videochat/RendererManager;->unregisterRendererForStats(Lcom/google/android/videochat/Renderer;)V

    .line 437
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->releaseRenderer(I)V

    .line 438
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->releaseRenderer(I)V

    .line 439
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    invoke-virtual {v0, v3}, Lcom/google/android/videochat/CameraManager;->setApplicationCallback(Lcom/google/android/videochat/CameraManager$CameraManagerCallback;)V

    .line 440
    return-void
.end method

.method public renderSelfFrame()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 508
    const/4 v4, 0x0

    .line 509
    .local v4, "selfFrameReady":Z
    iget-boolean v5, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveInitializedCameraSettings:Z

    if-eqz v5, :cond_1

    .line 510
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReadyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 511
    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReady:Z

    .line 512
    if-eqz v4, :cond_0

    .line 513
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReady:Z

    .line 515
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :cond_1
    if-eqz v4, :cond_8

    .line 519
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    invoke-virtual {v5}, Lcom/google/android/videochat/util/GLStopWatch;->start()V

    .line 520
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 521
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/videochat/CameraManager;->translateFrameTime(J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/videochat/SelfRenderer;->mLastCameraFrameTime:J

    .line 522
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraTransformMatrix:[F

    invoke-virtual {v5, v6}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 523
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraTransformMatrix:[F

    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotationTransform:[F

    iget-object v7, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfViewTransformMatrix:[F

    invoke-static {v5, v6, v7}, Lcom/google/android/videochat/util/MatrixUtil;->matrixMultiply4x4([F[F[F)V

    .line 525
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraInputData:Lcom/google/android/videochat/SelfRenderer$CameraInputData;

    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfViewTransformMatrix:[F

    iput-object v6, v5, Lcom/google/android/videochat/SelfRenderer$CameraInputData;->selfFrameTransform:[F

    .line 527
    iget-object v5, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    iget-object v7, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraInputData:Lcom/google/android/videochat/SelfRenderer$CameraInputData;

    invoke-virtual {v5, v6, v7, v9}, Lcom/google/android/videochat/RendererManager;->renderFrame(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 528
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    invoke-virtual {v5}, Lcom/google/android/videochat/util/GLStopWatch;->stop()V

    .line 530
    iget-boolean v5, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveSeenFirstFrame:Z

    if-nez v5, :cond_3

    .line 531
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    if-eqz v5, :cond_2

    .line 532
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    invoke-interface {v5}, Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;->onInitialFrame()V

    .line 534
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveSeenFirstFrame:Z

    .line 540
    :cond_3
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mEffectsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 541
    :try_start_1
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCurrentImageStabilizationLevel:I

    .line 542
    .local v0, "currentImageStabilizationLevel":I
    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mPendingImageStabilizationLevel:I

    .line 543
    .local v2, "pendingImageStabilizationLevel":I
    iget v5, p0, Lcom/google/android/videochat/SelfRenderer;->mPendingImageStabilizationLevel:I

    iput v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCurrentImageStabilizationLevel:I

    .line 544
    iget-boolean v3, p0, Lcom/google/android/videochat/SelfRenderer;->mResetImageStabilization:Z

    .line 545
    .local v3, "resetImageStabilization":Z
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/videochat/SelfRenderer;->mResetImageStabilization:Z

    .line 546
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 547
    if-eqz v3, :cond_4

    .line 548
    iget-object v5, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const-string v7, "is_reset"

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 552
    :cond_4
    if-eq v2, v0, :cond_7

    .line 553
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 554
    const-string v5, "vclib:SelfRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IS level was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_5
    if-lez v2, :cond_9

    .line 560
    iget v5, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 562
    iget-object v5, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/videochat/RendererManager;->instantiateRenderer(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    .line 565
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->initializeImageStabilizationRenderer()V

    .line 568
    :cond_6
    iget-object v5, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const-string v7, "is_level"

    invoke-virtual {v5, v6, v7, v2}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 574
    iget-object v5, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v7, "sub_intex"

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationTextureName:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 577
    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationTextureName:I

    .line 586
    .local v1, "newOutputTextureName":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/videochat/SelfRenderer;->setOutputTextureName(I)V

    .line 587
    move v0, v2

    .line 590
    .end local v1    # "newOutputTextureName":I
    :cond_7
    if-lez v0, :cond_8

    .line 591
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    invoke-virtual {v5}, Lcom/google/android/videochat/util/GLStopWatch;->start()V

    .line 592
    iget-object v5, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    invoke-virtual {v5, v6, v9, v9}, Lcom/google/android/videochat/RendererManager;->renderFrame(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 593
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    invoke-virtual {v5}, Lcom/google/android/videochat/util/GLStopWatch;->stop()V

    .line 596
    .end local v0    # "currentImageStabilizationLevel":I
    .end local v2    # "pendingImageStabilizationLevel":I
    .end local v3    # "resetImageStabilization":Z
    :cond_8
    return v4

    .line 515
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 546
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 581
    .restart local v0    # "currentImageStabilizationLevel":I
    .restart local v2    # "pendingImageStabilizationLevel":I
    .restart local v3    # "resetImageStabilization":Z
    :cond_9
    iget-object v5, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v7, "sub_intex"

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOutputTextureName:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 584
    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOutputTextureName:I

    .restart local v1    # "newOutputTextureName":I
    goto :goto_0
.end method

.method public resetEncodeTexture()V
    .locals 4

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/videochat/Renderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v2, "sub_intex"

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mOutputTextureName:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 424
    return-void
.end method

.method public resetImageStabilization()V
    .locals 2

    .prologue
    .line 395
    iget-object v1, p0, Lcom/google/android/videochat/SelfRenderer;->mEffectsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/videochat/SelfRenderer;->mResetImageStabilization:Z

    .line 397
    monitor-exit v1

    .line 398
    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceOrientation(I)V
    .locals 0
    .param p1, "degrees"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/google/android/videochat/SelfRenderer;->mDeviceOrientation:I

    .line 207
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->recomputeCameraRotation()V

    .line 208
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->onFrameSizesChanged()V

    .line 209
    return-void
.end method

.method public setImageStabilizationLevel(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 389
    iget-object v1, p0, Lcom/google/android/videochat/SelfRenderer;->mEffectsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :try_start_0
    iput p1, p0, Lcom/google/android/videochat/SelfRenderer;->mPendingImageStabilizationLevel:I

    .line 391
    monitor-exit v1

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxEncodeVideoSpec(Lcom/google/android/videochat/VideoSpecification;)V
    .locals 2
    .param p1, "spec"    # Lcom/google/android/videochat/VideoSpecification;

    .prologue
    .line 217
    invoke-virtual {p1}, Lcom/google/android/videochat/VideoSpecification;->getSize()Lcom/google/android/videochat/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/videochat/SelfRenderer;->mMaxFrameOutputParameters:Lcom/google/android/videochat/Size;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p1}, Lcom/google/android/videochat/VideoSpecification;->getSize()Lcom/google/android/videochat/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mMaxFrameOutputParameters:Lcom/google/android/videochat/Size;

    .line 219
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->onFrameSizesChanged()V

    .line 221
    :cond_0
    return-void
.end method

.method public setUseMaxSizeForCameraBuffer(Z)V
    .locals 3
    .param p1, "useMaxSize"    # Z

    .prologue
    .line 198
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "vclib:SelfRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUseMaxSizeForCameraBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/videochat/SelfRenderer;->mUseMaxSizeForCameraBuffer:Z

    .line 202
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->onFrameSizesChanged()V

    .line 203
    return-void
.end method
