.class final Lhjj;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# instance fields
.field final synthetic a:Lhjg;


# direct methods
.method constructor <init>(Lhjg;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lhjj;->a:Lhjg;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    .prologue
    .line 301
    invoke-static {}, Lhbs;->d()V

    .line 302
    const-string v0, "vclib"

    const-string v1, "Camera capture session closed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 1077
    const/4 v3, 0x3

    invoke-static {v3, v0, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 2036
    iget-object v0, v0, Lhjg;->h:Landroid/hardware/camera2/CameraCaptureSession;

    .line 303
    if-ne p1, v0, :cond_0

    .line 304
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 3036
    const/4 v1, 0x0

    iput-object v1, v0, Lhjg;->h:Landroid/hardware/camera2/CameraCaptureSession;

    .line 306
    :cond_0
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    .prologue
    .line 310
    invoke-static {}, Lhbs;->d()V

    .line 311
    const-string v0, "vclib"

    const-string v1, "Unable to start camera capture session: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lhlk;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lhjj;->a:Lhjg;

    invoke-virtual {v0}, Lhjg;->m()V

    .line 313
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 4036
    iget-object v0, v0, Lhjg;->j:Ljava/util/concurrent/CountDownLatch;

    .line 313
    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 5036
    iget-object v0, v0, Lhjg;->j:Ljava/util/concurrent/CountDownLatch;

    .line 314
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 316
    :cond_0
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 6036
    const/4 v1, 0x0

    iput-object v1, v0, Lhjg;->j:Ljava/util/concurrent/CountDownLatch;

    .line 317
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 6418
    iget-object v0, v0, Lhjk;->m:Lhjn;

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 12

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 322
    invoke-static {}, Lhbs;->d()V

    .line 323
    const-string v0, "vclib"

    const-string v1, "Camera capture session configured: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 7077
    invoke-static {v5, v0, v1, v3}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lhjj;->a:Lhjg;

    iget-object v6, v0, Lhjg;->s:Ljava/lang/Object;

    monitor-enter v6

    .line 326
    :try_start_0
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 8036
    iget-object v0, v0, Lhjg;->g:Landroid/hardware/camera2/CameraDevice;

    .line 326
    if-nez v0, :cond_0

    .line 327
    const-string v0, "vclib"

    const-string v1, "Session configured without an open device"

    .line 8089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 328
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :goto_0
    return-void

    .line 333
    :cond_0
    :try_start_1
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 9036
    iget-object v0, v0, Lhjg;->g:Landroid/hardware/camera2/CameraDevice;

    .line 334
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    .line 337
    iget-object v0, p0, Lhjj;->a:Lhjg;

    iget v0, v0, Lhjg;->x:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 10036
    iget-object v0, v0, Lhjg;->e:Ljava/lang/String;

    .line 338
    :goto_1
    iget-object v1, p0, Lhjj;->a:Lhjg;

    .line 12036
    iget-object v1, v1, Lhjg;->a:Landroid/hardware/camera2/CameraManager;

    .line 338
    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 339
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 340
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 341
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v3, v0, v1

    .line 342
    iget-object v1, p0, Lhjj;->a:Lhjg;

    iget-object v1, v1, Lhjg;->t:Lhlf;

    iget v4, v1, Lhlf;->c:I

    .line 343
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v5, 0x3e8

    if-le v1, v5, :cond_7

    .line 346
    mul-int/lit16 v1, v4, 0x3e8

    .line 347
    const-string v4, "vclib"

    const-string v5, "Appears to be a LEGACY camera; multiplying fps by 1000"

    .line 12073
    const/4 v8, 0x3

    invoke-static {v8, v4, v5}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v5, v1

    .line 349
    :goto_2
    array-length v8, v0

    move v4, v2

    move-object v2, v3

    :goto_3
    if-ge v4, v8, :cond_3

    aget-object v3, v0, v4

    .line 350
    const-string v1, "vclib"

    const-string v9, "Camera FPS range: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    .line 12077
    const/4 v11, 0x3

    invoke-static {v11, v1, v9, v10}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v9, v1, :cond_6

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v5, :cond_6

    .line 352
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v9, v1, :cond_1

    .line 353
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v9, v1, :cond_6

    :cond_1
    move-object v1, v3

    .line 349
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_3

    .line 337
    :cond_2
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 11036
    iget-object v0, v0, Lhjg;->f:Ljava/lang/String;

    goto/16 :goto_1

    .line 357
    :cond_3
    const-string v0, "vclib"

    const-string v1, "Using camera FPS range: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v7, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 359
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 360
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 13036
    iget-object v0, v0, Lhjg;->c:Ljava/util/Set;

    .line 361
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    .line 362
    invoke-virtual {v7, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 374
    :catch_0
    move-exception v0

    .line 375
    :try_start_2
    const-string v1, "vclib"

    const-string v2, "Failed to start capture request"

    invoke-static {v1, v2, v0}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 17418
    iget-object v0, v0, Lhjk;->m:Lhjn;

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 378
    :goto_6
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 367
    :cond_4
    :try_start_3
    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lhjj;->a:Lhjg;

    iget-object v2, v2, Lhjg;->o:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 368
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 14036
    iput-object p1, v0, Lhjg;->h:Landroid/hardware/camera2/CameraCaptureSession;

    .line 369
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 15036
    iget-object v0, v0, Lhjg;->j:Ljava/util/concurrent/CountDownLatch;

    .line 369
    if-eqz v0, :cond_5

    .line 370
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 16036
    iget-object v0, v0, Lhjg;->j:Ljava/util/concurrent/CountDownLatch;

    .line 370
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 372
    :cond_5
    iget-object v0, p0, Lhjj;->a:Lhjg;

    .line 17036
    const/4 v1, 0x0

    iput-object v1, v0, Lhjg;->j:Ljava/util/concurrent/CountDownLatch;

    .line 373
    const-string v0, "vclib"

    const-string v1, "Camera capture session fully configured: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 17077
    const/4 v3, 0x3

    invoke-static {v3, v0, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :cond_6
    move-object v1, v2

    goto/16 :goto_4

    :cond_7
    move v5, v4

    goto/16 :goto_2
.end method
