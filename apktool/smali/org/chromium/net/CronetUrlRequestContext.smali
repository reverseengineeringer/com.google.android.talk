.class public Lorg/chromium/net/CronetUrlRequestContext;
.super Lorg/chromium/net/CronetEngine;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation

.annotation build Lorg/chromium/base/annotations/UsedByReflection;
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:J

.field public final c:Ljava/lang/Object;

.field public final d:Lmnp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmnp",
            "<",
            "Lorg/chromium/net/NetworkQualityRttListener;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lmnp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmnp",
            "<",
            "Lorg/chromium/net/NetworkQualityThroughputListener;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lmnp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmnp",
            "<",
            "Lorg/chromium/net/CronetEngine$RequestFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/os/ConditionVariable;

.field private final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:Ljava/lang/Thread;

.field private j:Ljava/util/concurrent/Executor;

.field private k:Z


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetEngine$Builder;)V
    .locals 6
    .annotation build Lorg/chromium/base/annotations/UsedByReflection;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x3

    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Lorg/chromium/net/CronetEngine;-><init>()V

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/chromium/net/CronetUrlRequestContext;->a:Ljava/lang/Object;

    .line 51
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Lorg/chromium/net/CronetUrlRequestContext;->g:Landroid/os/ConditionVariable;

    .line 52
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lorg/chromium/net/CronetUrlRequestContext;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    iput-wide v4, p0, Lorg/chromium/net/CronetUrlRequestContext;->b:J

    .line 63
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/chromium/net/CronetUrlRequestContext;->c:Ljava/lang/Object;

    .line 65
    new-instance v1, Lmnp;

    invoke-direct {v1}, Lmnp;-><init>()V

    iput-object v1, p0, Lorg/chromium/net/CronetUrlRequestContext;->d:Lmnp;

    .line 69
    new-instance v1, Lmnp;

    invoke-direct {v1}, Lmnp;-><init>()V

    iput-object v1, p0, Lorg/chromium/net/CronetUrlRequestContext;->e:Lmnp;

    .line 73
    new-instance v1, Lmnp;

    invoke-direct {v1}, Lmnp;-><init>()V

    iput-object v1, p0, Lorg/chromium/net/CronetUrlRequestContext;->f:Lmnp;

    .line 79
    invoke-virtual {p1}, Lorg/chromium/net/CronetEngine$Builder;->w()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/chromium/net/CronetLibraryLoader;->a(Landroid/content/Context;Lorg/chromium/net/CronetEngine$Builder;)V

    .line 1382
    const-string v1, "ChromiumNetwork"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1383
    const/4 v0, -0x2

    .line 80
    :cond_0
    :goto_0
    invoke-static {v0}, Lorg/chromium/net/CronetUrlRequestContext;->nativeSetMinLogLevel(I)I

    .line 81
    invoke-static {p1}, Lorg/chromium/net/CronetUrlRequestContext;->b(Lorg/chromium/net/CronetEngine$Builder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/chromium/net/CronetUrlRequestContext;->nativeCreateRequestContextAdapter(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/net/CronetUrlRequestContext;->b:J

    .line 83
    iget-wide v0, p0, Lorg/chromium/net/CronetUrlRequestContext;->b:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context Adapter creation failed."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1384
    :cond_1
    const-string v1, "ChromiumNetwork"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1385
    const/4 v0, -0x1

    goto :goto_0

    .line 88
    :cond_2
    new-instance v0, Lmoo;

    invoke-direct {v0, p0}, Lmoo;-><init>(Lorg/chromium/net/CronetUrlRequestContext;)V

    .line 100
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 101
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 105
    :goto_1
    return-void

    .line 103
    :cond_3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public static synthetic a(Lorg/chromium/net/CronetUrlRequestContext;J)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/chromium/net/CronetUrlRequestContext;->nativeInitRequestContextOnMainThread(J)V

    return-void
.end method

.method static b(Lorg/chromium/net/CronetEngine$Builder;)J
    .locals 16

    .prologue
    .line 108
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->g()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->i()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->k()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->p()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->r()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->q()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->u()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->v()J

    move-result-wide v14

    invoke-static/range {v0 .. v15}, Lorg/chromium/net/CronetUrlRequestContext;->nativeCreateRequestContextConfig(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJLjava/lang/String;J)J

    move-result-wide v0

    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->s()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmoc;

    .line 116
    iget-object v4, v2, Lmoc;->a:Ljava/lang/String;

    iget v5, v2, Lmoc;->b:I

    iget v2, v2, Lmoc;->c:I

    invoke-static {v0, v1, v4, v5, v2}, Lorg/chromium/net/CronetUrlRequestContext;->nativeAddQuicHint(JLjava/lang/String;II)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/CronetEngine$Builder;->t()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;

    .line 120
    iget-object v2, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->a:Ljava/lang/String;

    iget-object v3, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->b:[[B

    iget-boolean v4, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->c:Z

    iget-object v5, v5, Lorg/chromium/net/CronetEngine$Builder$Pkp;->d:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lorg/chromium/net/CronetUrlRequestContext;->nativeAddPkp(JLjava/lang/String;[[BZJ)V

    goto :goto_1

    .line 123
    :cond_1
    return-wide v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 2373
    iget-wide v0, p0, Lorg/chromium/net/CronetUrlRequestContext;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 367
    :goto_0
    if-nez v0, :cond_1

    .line 368
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine is shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 370
    :cond_1
    return-void
.end method

.method private initNetworkThread()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 395
    iget-object v1, p0, Lorg/chromium/net/CronetUrlRequestContext;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/CronetUrlRequestContext;->i:Ljava/lang/Thread;

    .line 397
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequestContext;->g:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 398
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "ChromiumNet"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 400
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 401
    return-void

    .line 398
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static native nativeAddPkp(JLjava/lang/String;[[BZJ)V
.end method

.method private static native nativeAddQuicHint(JLjava/lang/String;II)V
.end method

.method private static native nativeCreateRequestContextAdapter(J)J
.end method

.method private static native nativeCreateRequestContextConfig(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJLjava/lang/String;J)J
.end method

.method private native nativeDestroy(J)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeEnableNetworkQualityEstimator(JZZ)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private static native nativeGetHistogramDeltas()[B
.end method

.method private native nativeInitRequestContextOnMainThread(J)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeProvideRTTObservations(JZ)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeProvideThroughputObservations(JZ)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private static native nativeSetMinLogLevel(I)I
.end method

.method private native nativeStartNetLogToFile(JLjava/lang/String;Z)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeStopNetLog(J)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private onRttObservation(IJI)V
    .locals 8
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 406
    new-instance v1, Lmop;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lmop;-><init>(Lorg/chromium/net/CronetUrlRequestContext;IJI)V

    .line 416
    invoke-virtual {p0, v1}, Lorg/chromium/net/CronetUrlRequestContext;->a(Ljava/lang/Runnable;)V

    .line 417
    return-void
.end method

.method private onThroughputObservation(IJI)V
    .locals 8
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 423
    new-instance v1, Lmoq;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lmoq;-><init>(Lorg/chromium/net/CronetUrlRequestContext;IJI)V

    .line 433
    invoke-virtual {p0, v1}, Lorg/chromium/net/CronetUrlRequestContext;->a(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;ILjava/util/Collection;)Lorg/chromium/net/UrlRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/net/UrlRequest$Callback;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/chromium/net/UrlRequest;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v8, p0, Lorg/chromium/net/CronetUrlRequestContext;->a:Ljava/lang/Object;

    monitor-enter v8

    .line 130
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/CronetUrlRequestContext;->f()V

    .line 131
    iget-boolean v7, p0, Lorg/chromium/net/CronetUrlRequestContext;->k:Z

    .line 132
    if-eqz v7, :cond_0

    .line 133
    iget-object v1, p0, Lorg/chromium/net/CronetUrlRequestContext;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequestContext;->f:Lmnp;

    invoke-virtual {v0}, Lmnp;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v7, 0x1

    .line 135
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :cond_0
    :try_start_2
    new-instance v0, Lorg/chromium/net/CronetUrlRequest;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/chromium/net/CronetUrlRequest;-><init>(Lorg/chromium/net/CronetUrlRequestContext;Ljava/lang/String;ILorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;Ljava/util/Collection;Z)V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 134
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 139
    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 455
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequestContext;->j:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    const-string v1, "ChromiumNetwork"

    const-string v2, "Exception posting task to executor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method a(Lorg/chromium/net/CronetUrlRequest;)V
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lorg/chromium/net/CronetUrlRequestContext;->k:Z

    if-eqz v0, :cond_0

    .line 438
    new-instance v0, Lmor;

    invoke-direct {v0, p0, p1}, Lmor;-><init>(Lorg/chromium/net/CronetUrlRequestContext;Lorg/chromium/net/CronetUrlRequest;)V

    .line 449
    invoke-virtual {p0, v0}, Lorg/chromium/net/CronetUrlRequestContext;->a(Ljava/lang/Runnable;)V

    .line 451
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cronet/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/net/Version;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequestContext;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 348
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequestContext;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 356
    return-void
.end method

.method e()J
    .locals 4

    .prologue
    .line 360
    iget-object v1, p0, Lorg/chromium/net/CronetUrlRequestContext;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/CronetUrlRequestContext;->f()V

    .line 362
    iget-wide v2, p0, Lorg/chromium/net/CronetUrlRequestContext;->b:J

    monitor-exit v1

    return-wide v2

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
