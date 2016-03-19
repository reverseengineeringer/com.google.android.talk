.class final Lhji;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhjg;


# direct methods
.method constructor <init>(Lhjg;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lhji;->a:Lhjg;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    .prologue
    .line 257
    invoke-static {}, Lhbs;->d()V

    .line 258
    const-string v0, "vclib"

    const-string v1, "Camera disconnected"

    .line 1073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lhji;->a:Lhjg;

    invoke-virtual {v0}, Lhjg;->m()V

    .line 260
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3

    .prologue
    .line 264
    invoke-static {}, Lhbs;->d()V

    .line 265
    const-string v0, "vclib"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Camera error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lhji;->a:Lhjg;

    invoke-virtual {v0}, Lhjg;->m()V

    .line 267
    iget-object v0, p0, Lhji;->a:Lhjg;

    .line 1418
    iget-object v0, v0, Lhjk;->m:Lhjn;

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 5

    .prologue
    .line 272
    invoke-static {}, Lhbs;->d()V

    .line 273
    const-string v0, "vclib"

    const-string v1, "Camera opened"

    .line 2073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lhji;->a:Lhjg;

    iget-object v1, v0, Lhjg;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lhji;->a:Lhjg;

    .line 3036
    iput-object p1, v0, Lhjg;->g:Landroid/hardware/camera2/CameraDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :try_start_1
    iget-object v0, p0, Lhji;->a:Lhjg;

    .line 4036
    iget-object v0, v0, Lhjg;->a:Landroid/hardware/camera2/CameraManager;

    .line 278
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 279
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 281
    iget-object v2, p0, Lhji;->a:Lhjg;

    iget-object v3, p0, Lhji;->a:Lhjg;

    .line 5036
    invoke-virtual {v3}, Lhjg;->f()Lhlp;

    move-result-object v3

    .line 6036
    iput-object v3, v2, Lhjg;->i:Lhlp;

    .line 283
    iget-object v2, p0, Lhji;->a:Lhjg;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lhjg;->a(II)V

    .line 284
    iget-object v0, p0, Lhji;->a:Lhjg;

    .line 7036
    iget-object v0, v0, Lhjg;->c:Ljava/util/Set;

    .line 284
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lhji;->a:Lhjg;

    .line 8036
    iget-object v0, v0, Lhjg;->g:Landroid/hardware/camera2/CameraDevice;

    .line 285
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lhji;->a:Lhjg;

    .line 9036
    iget-object v3, v3, Lhjg;->c:Ljava/util/Set;

    .line 285
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lhji;->a:Lhjg;

    .line 10036
    iget-object v3, v3, Lhjg;->b:Lhjj;

    .line 286
    iget-object v4, p0, Lhji;->a:Lhjg;

    iget-object v4, v4, Lhjg;->o:Landroid/os/Handler;

    .line 285
    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 289
    const-string v2, "vclib"

    const-string v3, "Failed to create camera capture session"

    invoke-static {v2, v3, v0}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    iget-object v0, p0, Lhji;->a:Lhjg;

    .line 10418
    iget-object v0, v0, Lhjk;->m:Lhjn;

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
