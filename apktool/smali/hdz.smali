.class final Lhdz;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field a:Landroid/os/Handler;

.field volatile b:Z

.field final synthetic c:Lhee;

.field private final d:Ljava/util/concurrent/CountDownLatch;

.field private e:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method constructor <init>(Lhee;)V
    .locals 2

    .prologue
    .line 279
    iput-object p1, p0, Lhdz;->c:Lhee;

    .line 282
    const-string v0, "GLThread.vclib"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lhdz;->d:Ljava/util/concurrent/CountDownLatch;

    .line 283
    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 287
    :try_start_0
    iget-object v0, p0, Lhdz;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    iget-object v0, p0, Lhdz;->a:Landroid/os/Handler;

    return-object v0

    .line 289
    :catch_0
    move-exception v0

    const-string v0, "vclib"

    const-string v1, "Failed to initialize gl thread handler before getting interrupted"

    .line 1089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 5

    .prologue
    .line 296
    iget-object v0, p0, Lhdz;->c:Lhee;

    .line 2039
    iget-object v0, v0, Lhee;->b:Lhdy;

    .line 296
    iget-object v0, v0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lhdz;->c:Lhee;

    .line 3039
    iget-object v1, v1, Lhee;->b:Lhdy;

    .line 297
    iget-object v1, v1, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lhdz;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lhdz;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lhdz;->c:Lhee;

    .line 4039
    iget-object v4, v4, Lhee;->b:Lhdy;

    .line 297
    iget-object v4, v4, Lhdy;->c:Ljavax/microedition/khronos/egl/EGLContext;

    .line 296
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lhdz;->a:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lhdz;->b:Z

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 310
    iget-object v0, p0, Lhdz;->c:Lhee;

    .line 5039
    iget-object v0, v0, Lhee;->b:Lhdy;

    .line 310
    invoke-virtual {v0}, Lhdy;->a()V

    .line 312
    invoke-static {}, Laal;->q()I

    move-result v0

    .line 313
    new-instance v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 314
    iget-object v0, p0, Lhdz;->c:Lhee;

    .line 6039
    iget-object v0, v0, Lhee;->b:Lhdy;

    .line 314
    iget-object v0, v0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lhdz;->c:Lhee;

    .line 7039
    iget-object v1, v1, Lhee;->b:Lhdy;

    .line 315
    iget-object v1, v1, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lhdz;->c:Lhee;

    .line 8039
    iget-object v3, v3, Lhee;->b:Lhdy;

    .line 315
    iget-object v3, v3, Lhdy;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x0

    .line 314
    invoke-interface {v0, v1, v3, v2, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lhdz;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 317
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 319
    new-instance v0, Lhea;

    invoke-direct {v0, p0}, Lhea;-><init>(Lhdz;)V

    iput-object v0, p0, Lhdz;->a:Landroid/os/Handler;

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lhdz;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const-string v0, "eglMakeCurrent failed"

    invoke-static {v0}, Laal;->B(Ljava/lang/String;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lhdz;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 376
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    iget-object v0, p0, Lhdz;->c:Lhee;

    .line 9039
    iget-object v0, v0, Lhee;->b:Lhdy;

    .line 378
    iget-object v0, v0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lhdz;->c:Lhee;

    .line 10039
    iget-object v1, v1, Lhee;->b:Lhdy;

    .line 378
    iget-object v1, v1, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lhdz;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 379
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 380
    iget-object v0, p0, Lhdz;->c:Lhee;

    .line 11039
    iget-object v0, v0, Lhee;->a:Ljava/util/List;

    .line 380
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhec;

    .line 381
    invoke-virtual {v0}, Lhec;->a()V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lhdz;->c:Lhee;

    .line 12039
    iget-object v0, v0, Lhee;->a:Ljava/util/List;

    .line 383
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 384
    iget-object v0, p0, Lhdz;->c:Lhee;

    .line 13039
    iget-object v0, v0, Lhee;->b:Lhdy;

    .line 384
    invoke-virtual {v0}, Lhdy;->b()V

    .line 385
    return-void

    .line 378
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lhdz;->c:Lhee;

    .line 14039
    iget-object v0, v0, Lhee;->b:Lhdy;

    .line 378
    iget-object v0, v0, Lhdy;->a:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lhdz;->c:Lhee;

    .line 15039
    iget-object v3, v3, Lhee;->b:Lhdy;

    .line 378
    iget-object v3, v3, Lhdy;->b:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lhdz;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 379
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 380
    iget-object v0, p0, Lhdz;->c:Lhee;

    .line 16039
    iget-object v0, v0, Lhee;->a:Ljava/util/List;

    .line 380
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhec;

    .line 381
    invoke-virtual {v0}, Lhec;->a()V

    goto :goto_1

    .line 383
    :cond_2
    iget-object v0, p0, Lhdz;->c:Lhee;

    .line 17039
    iget-object v0, v0, Lhee;->a:Ljava/util/List;

    .line 383
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 384
    iget-object v0, p0, Lhdz;->c:Lhee;

    .line 18039
    iget-object v0, v0, Lhee;->b:Lhdy;

    .line 384
    invoke-virtual {v0}, Lhdy;->b()V

    throw v1
.end method
