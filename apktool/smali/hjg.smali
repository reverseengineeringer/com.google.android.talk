.class public final Lhjg;
.super Lhjk;
.source "SourceFile"


# instance fields
.field private final A:Lhji;

.field private final B:Z

.field private C:Z

.field final a:Landroid/hardware/camera2/CameraManager;

.field final b:Lhjj;

.field final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/view/Surface;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Landroid/hardware/camera2/CameraDevice;

.field h:Landroid/hardware/camera2/CameraCaptureSession;

.field i:Lhlp;

.field j:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lhjk;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhjg;->c:Ljava/util/Set;

    .line 66
    iput-boolean p2, p0, Lhjg;->B:Z

    .line 67
    new-instance v0, Lhjh;

    invoke-direct {v0, p0}, Lhjh;-><init>(Lhjg;)V

    iput-object v0, p0, Lhjg;->l:Lhjp;

    .line 68
    new-instance v0, Lhji;

    invoke-direct {v0, p0}, Lhji;-><init>(Lhjg;)V

    iput-object v0, p0, Lhjg;->A:Lhji;

    .line 69
    new-instance v0, Lhjj;

    invoke-direct {v0, p0}, Lhjj;-><init>(Lhjg;)V

    iput-object v0, p0, Lhjg;->b:Lhjj;

    .line 70
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lhjg;->a:Landroid/hardware/camera2/CameraManager;

    .line 71
    invoke-direct {p0}, Lhjg;->o()V

    .line 72
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 99
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 101
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 102
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 103
    invoke-virtual {v1, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    move v0, v2

    .line 112
    :goto_1
    return v0

    .line 101
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v1, "vclib"

    const-string v3, "Exception reading camera properties"

    invoke-static {v1, v3, v0}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 112
    goto :goto_1
.end method

.method private o()V
    .locals 6

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lhjg;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 185
    iget-object v0, p0, Lhjg;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 186
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iput-object v4, p0, Lhjg;->e:Ljava/lang/String;

    .line 184
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 189
    :cond_0
    iput-object v4, p0, Lhjg;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string v1, "vclib"

    const-string v2, "Failed to detect cameras"

    invoke-static {v1, v2, v0}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lhks;)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1}, Lhjk;->a(Lhks;)V

    .line 88
    iget-object v0, p0, Lhjg;->d:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lhjg;->d:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lhjg;->d:Landroid/view/Surface;

    .line 92
    :cond_0
    iget-object v0, p0, Lhjg;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 93
    return-void
.end method

.method public a(Lhks;Lhld;)V
    .locals 5

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Lhjk;->a(Lhks;Lhld;)V

    .line 78
    iget-boolean v0, p0, Lhjg;->B:Z

    invoke-interface {p2, v0}, Lhld;->d(Z)V

    .line 79
    const-string v0, "vclib"

    const-string v1, "Camera2 useMultipleSurfaces: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lhjg;->B:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1077
    const/4 v3, 0x3

    invoke-static {v3, v0, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lhjg;->l:Lhjp;

    invoke-interface {p2, v0}, Lhld;->a(Lhle;)V

    .line 81
    iget-boolean v0, p0, Lhjg;->r:Z

    invoke-virtual {p0, v0}, Lhjg;->a(Z)V

    .line 82
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lhjg;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lhjg;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Lhlp;
    .locals 2

    .prologue
    .line 134
    iget-object v1, p0, Lhjg;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lhjg;->i:Lhlp;

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 199
    iget-object v1, p0, Lhjg;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-boolean v0, p0, Lhjg;->C:Z

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "vclib"

    const-string v2, "Camera was already opened, ignoring"

    .line 3073
    const/4 v3, 0x3

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    monitor-exit v1

    .line 226
    :goto_0
    return-void

    .line 207
    :cond_0
    iget v0, p0, Lhjg;->x:I

    if-nez v0, :cond_1

    .line 208
    const-string v0, "vclib"

    const-string v2, "openCamera was called with no camera selected."

    invoke-static {v0, v2}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    monitor-exit v1

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 212
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lhjg;->C:Z

    .line 215
    iget-object v0, p0, Lhjg;->g:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_3

    .line 216
    const-string v0, "vclib"

    const-string v2, "Opening camera"

    .line 4073
    const/4 v3, 0x3

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    iget v0, p0, Lhjg;->x:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lhjg;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :goto_1
    :try_start_2
    iget-object v2, p0, Lhjg;->a:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lhjg;->A:Lhji;

    iget-object v4, p0, Lhjg;->o:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    :goto_2
    :try_start_3
    monitor-exit v1

    goto :goto_0

    .line 217
    :cond_2
    iget-object v0, p0, Lhjg;->f:Ljava/lang/String;

    goto :goto_1

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string v2, "vclib"

    const-string v3, "Failed to open cameras"

    invoke-static {v2, v3, v0}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4418
    iget-object v0, p0, Lhjk;->m:Lhjn;

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 226
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method protected e()V
    .locals 6

    .prologue
    .line 231
    iget-object v1, p0, Lhjg;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lhjg;->h:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "vclib"

    const-string v2, "Stopping capture session: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lhjg;->h:Landroid/hardware/camera2/CameraCaptureSession;

    aput-object v5, v3, v4

    .line 5077
    const/4 v4, 0x3

    invoke-static {v4, v0, v2, v3}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lhjg;->h:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lhjg;->h:Landroid/hardware/camera2/CameraCaptureSession;

    .line 238
    :cond_0
    iget-object v0, p0, Lhjg;->g:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 239
    const-string v0, "vclib"

    const-string v2, "Closing camera"

    .line 6073
    const/4 v3, 0x3

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lhjg;->g:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lhjg;->g:Landroid/hardware/camera2/CameraDevice;

    .line 244
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhjg;->C:Z

    .line 245
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method f()Lhlp;
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 141
    iget-object v1, p0, Lhjg;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget v0, p0, Lhjg;->x:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lhjg;->e:Ljava/lang/String;

    .line 143
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :try_start_1
    iget-object v1, p0, Lhjg;->a:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 147
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 148
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 150
    iget-object v1, p0, Lhjg;->v:Lhlp;

    new-instance v2, Lhlp;

    iget-object v3, p0, Lhjg;->t:Lhlf;

    iget v3, v3, Lhlf;->d:I

    iget-object v4, p0, Lhjg;->t:Lhlf;

    iget v4, v4, Lhlf;->e:I

    invoke-direct {v2, v3, v4}, Lhlp;-><init>(II)V

    invoke-static {v1, v2}, Lhlp;->b(Lhlp;Lhlp;)Lhlp;

    move-result-object v7

    .line 153
    new-instance v3, Landroid/util/Size;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 154
    const v1, 0x7fffffff

    .line 155
    const-class v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v8

    array-length v9, v8

    move v5, v6

    :goto_1
    if-ge v5, v9, :cond_3

    aget-object v2, v8, v5

    .line 156
    const-string v0, "vclib"

    const-string v4, "Camera candidate size: %s "

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    .line 2077
    const/4 v11, 0x3

    invoke-static {v11, v0, v4, v10}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget v4, v7, Lhlp;->a:I

    sub-int v4, v0, v4

    .line 158
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget v10, v7, Lhlp;->b:I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr v0, v10

    .line 160
    if-gez v4, :cond_0

    .line 161
    mul-int/lit8 v4, v4, -0x4

    .line 163
    :cond_0
    if-gez v0, :cond_1

    .line 164
    mul-int/lit8 v0, v0, -0x4

    .line 167
    :cond_1
    add-int/2addr v0, v4

    .line 168
    if-ge v0, v1, :cond_4

    move-object v1, v2

    .line 155
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v1

    move v1, v0

    goto :goto_1

    .line 142
    :cond_2
    :try_start_2
    iget-object v0, p0, Lhjg;->f:Ljava/lang/String;

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 174
    :cond_3
    :try_start_3
    const-string v0, "vclib"

    const-string v1, "Camera preview size: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    new-instance v0, Lhlp;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lhlp;-><init>(II)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0

    .line 178
    :goto_3
    return-object v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    const-string v1, "vclib"

    const-string v2, "Failed to read camera capture sizes"

    invoke-static {v1, v2, v0}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    new-instance v0, Lhlp;

    invoke-direct {v0, v6, v6}, Lhlp;-><init>(II)V

    goto :goto_3

    :cond_4
    move v0, v1

    move-object v1, v3

    goto :goto_2
.end method
