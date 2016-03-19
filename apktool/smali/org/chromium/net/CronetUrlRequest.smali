.class public final Lorg/chromium/net/CronetUrlRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/UrlRequest;


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static final g:Lorg/chromium/net/CronetEngine$UrlRequestMetrics;


# instance fields
.field public a:J

.field public b:Z

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Lorg/chromium/net/UrlRequest$Callback;

.field public f:Lorg/chromium/net/UrlResponseInfo;

.field private h:Z

.field private i:Z

.field private j:Z

.field private final k:Lorg/chromium/net/CronetUrlRequestContext;

.field private final l:Ljava/util/concurrent/Executor;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private final o:Ljava/lang/String;

.field private final p:I

.field private q:Ljava/lang/String;

.field private final r:Lorg/chromium/net/CronetUrlRequest$HeadersList;

.field private final s:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lmon;

.field private u:Lorg/chromium/net/CronetUploadDataStream;

.field private v:Lmom;

.field private w:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v0, Lorg/chromium/net/CronetEngine$UrlRequestMetrics;

    invoke-direct {v0, v1, v1, v1}, Lorg/chromium/net/CronetEngine$UrlRequestMetrics;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lorg/chromium/net/CronetUrlRequest;->g:Lorg/chromium/net/CronetEngine$UrlRequestMetrics;

    return-void
.end method

.method constructor <init>(Lorg/chromium/net/CronetUrlRequestContext;Ljava/lang/String;ILorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;Ljava/util/Collection;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->h:Z

    .line 50
    iput-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->i:Z

    .line 51
    iput-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->b:Z

    .line 52
    iput-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->c:Z

    .line 59
    iput-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->j:Z

    .line 65
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/chromium/net/CronetUrlRequest;->d:Ljava/lang/Object;

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/chromium/net/CronetUrlRequest;->m:Ljava/util/List;

    .line 81
    new-instance v2, Lorg/chromium/net/CronetUrlRequest$HeadersList;

    .line 1097
    invoke-direct {v2}, Lorg/chromium/net/CronetUrlRequest$HeadersList;-><init>()V

    .line 81
    iput-object v2, p0, Lorg/chromium/net/CronetUrlRequest;->r:Lorg/chromium/net/CronetUrlRequest$HeadersList;

    .line 129
    if-nez p2, :cond_0

    .line 130
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "URL is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    if-nez p4, :cond_1

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Listener is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    if-nez p5, :cond_2

    .line 136
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Executor is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_2
    if-nez p6, :cond_3

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestAnnotations is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_3
    iput-object p1, p0, Lorg/chromium/net/CronetUrlRequest;->k:Lorg/chromium/net/CronetUrlRequestContext;

    .line 143
    iput-object p2, p0, Lorg/chromium/net/CronetUrlRequest;->o:Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lorg/chromium/net/CronetUrlRequest;->m:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1376
    packed-switch p3, :pswitch_data_0

    move v0, v1

    .line 145
    :goto_0
    :pswitch_0
    iput v0, p0, Lorg/chromium/net/CronetUrlRequest;->p:I

    .line 146
    iput-object p4, p0, Lorg/chromium/net/CronetUrlRequest;->e:Lorg/chromium/net/UrlRequest$Callback;

    .line 147
    iput-object p5, p0, Lorg/chromium/net/CronetUrlRequest;->l:Ljava/util/concurrent/Executor;

    .line 148
    iput-object p6, p0, Lorg/chromium/net/CronetUrlRequest;->s:Ljava/util/Collection;

    .line 149
    if-eqz p7, :cond_4

    new-instance v0, Lmon;

    .line 1716
    invoke-direct {v0, p0}, Lmon;-><init>(Lorg/chromium/net/CronetUrlRequest;)V

    .line 149
    :goto_1
    iput-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->t:Lmon;

    .line 151
    return-void

    .line 1380
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1382
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1384
    goto :goto_0

    .line 1386
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 149
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1376
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(I[Ljava/lang/String;)Lorg/chromium/net/UrlResponseInfo;
    .locals 10

    .prologue
    .line 395
    iget-object v1, p0, Lorg/chromium/net/CronetUrlRequest;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_0
    iget-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 397
    const/4 v0, 0x0

    monitor-exit v1

    .line 417
    :goto_0
    return-object v0

    .line 403
    :cond_0
    iget-wide v8, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    .line 404
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    new-instance v4, Lorg/chromium/net/CronetUrlRequest$HeadersList;

    .line 4097
    invoke-direct {v4}, Lorg/chromium/net/CronetUrlRequest$HeadersList;-><init>()V

    .line 407
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 408
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    aget-object v2, p2, v0

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p2, v3

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lorg/chromium/net/CronetUrlRequest$HeadersList;->add(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 404
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 412
    :cond_1
    new-instance v0, Lorg/chromium/net/UrlResponseInfo;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/chromium/net/CronetUrlRequest;->m:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v8, v9}, Lorg/chromium/net/CronetUrlRequest;->nativeGetHttpStatusText(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v8, v9}, Lorg/chromium/net/CronetUrlRequest;->nativeGetWasCached(J)Z

    move-result v5

    invoke-direct {p0, v8, v9}, Lorg/chromium/net/CronetUrlRequest;->nativeGetNegotiatedProtocol(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v8, v9}, Lorg/chromium/net/CronetUrlRequest;->nativeGetProxyServer(J)Ljava/lang/String;

    move-result-object v7

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lorg/chromium/net/UrlResponseInfo;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 365
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->l:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3316
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    const-string v1, "ChromiumNetwork"

    const-string v2, "Exception posting task to executor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3311
    iget-object v1, p0, Lorg/chromium/net/CronetUrlRequest;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 3312
    :try_start_1
    invoke-virtual {p0}, Lorg/chromium/net/CronetUrlRequest;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->h:Z

    if-nez v0, :cond_1

    .line 3313
    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 3316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3315
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lorg/chromium/net/CronetUrlRequest;->a(Z)V

    .line 3316
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private a(Lorg/chromium/net/UrlRequestException;)V
    .locals 1

    .prologue
    .line 485
    new-instance v0, Lmog;

    invoke-direct {v0, p0, p1}, Lmog;-><init>(Lorg/chromium/net/CronetUrlRequest;Lorg/chromium/net/UrlRequestException;)V

    .line 502
    invoke-direct {p0, v0}, Lorg/chromium/net/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    .line 503
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 421
    iget-object v1, p0, Lorg/chromium/net/CronetUrlRequest;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 422
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->h:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/net/CronetUrlRequest;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Request is already started."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private native nativeAddRequestHeader(JLjava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeCreateRequestAdapter(JLjava/lang/String;I)J
.end method

.method private native nativeDestroy(JZ)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeDisableCache(J)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeFollowDeferredRedirect(J)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeGetHttpStatusText(J)Ljava/lang/String;
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeGetNegotiatedProtocol(J)Ljava/lang/String;
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeGetProxyServer(J)Ljava/lang/String;
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeGetStatus(JLorg/chromium/net/UrlRequest$StatusListener;)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeGetWasCached(J)Z
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeReadData(JLjava/nio/ByteBuffer;II)Z
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeSetHttpMethod(JLjava/lang/String;)Z
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeStart(J)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private onCanceled()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 680
    new-instance v0, Lmok;

    invoke-direct {v0, p0}, Lmok;-><init>(Lorg/chromium/net/CronetUrlRequest;)V

    .line 690
    invoke-direct {p0, v0}, Lorg/chromium/net/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    .line 691
    return-void
.end method

.method private onError(ILjava/lang/String;J)V
    .locals 5
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 664
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->f:Lorg/chromium/net/UrlResponseInfo;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->f:Lorg/chromium/net/UrlResponseInfo;

    iget-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->n:J

    add-long/2addr v2, p3

    invoke-virtual {v0, v2, v3}, Lorg/chromium/net/UrlResponseInfo;->a(J)V

    .line 668
    :cond_0
    new-instance v0, Lorg/chromium/net/UrlRequestException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in CronetUrlRequest: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/chromium/net/UrlRequestException;-><init>(Ljava/lang/String;I)V

    .line 671
    invoke-direct {p0, v0}, Lorg/chromium/net/CronetUrlRequest;->a(Lorg/chromium/net/UrlRequestException;)V

    .line 672
    return-void
.end method

.method private onReadCompleted(Ljava/nio/ByteBuffer;IIJ)V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->f:Lorg/chromium/net/UrlResponseInfo;

    iget-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->n:J

    add-long/2addr v2, p4

    invoke-virtual {v0, v2, v3}, Lorg/chromium/net/UrlResponseInfo;->a(J)V

    .line 605
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 606
    new-instance v0, Lorg/chromium/net/UrlRequestException;

    const-string v1, "ByteBuffer modified externally during read"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/net/UrlRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lorg/chromium/net/CronetUrlRequest;->a(Lorg/chromium/net/UrlRequestException;)V

    .line 620
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->v:Lmom;

    if-nez v0, :cond_1

    .line 611
    new-instance v0, Lmom;

    .line 6099
    invoke-direct {v0, p0}, Lmom;-><init>(Lorg/chromium/net/CronetUrlRequest;)V

    .line 611
    iput-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->v:Lmom;

    .line 613
    :cond_1
    iget-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->j:Z

    if-eqz v0, :cond_2

    .line 614
    add-int v0, p3, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 618
    :goto_1
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->v:Lmom;

    iput-object p1, v0, Lmom;->a:Ljava/nio/ByteBuffer;

    .line 619
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->v:Lmom;

    invoke-direct {p0, v0}, Lorg/chromium/net/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 616
    :cond_2
    add-int v0, p3, p2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method private onRedirectReceived(Ljava/lang/String;I[Ljava/lang/String;J)V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 526
    invoke-direct {p0, p2, p3}, Lorg/chromium/net/CronetUrlRequest;->a(I[Ljava/lang/String;)Lorg/chromium/net/UrlResponseInfo;

    move-result-object v0

    .line 528
    iget-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->n:J

    add-long/2addr v2, p4

    iput-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->n:J

    .line 529
    iget-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->n:J

    invoke-virtual {v0, v2, v3}, Lorg/chromium/net/UrlResponseInfo;->a(J)V

    .line 532
    iget-object v1, p0, Lorg/chromium/net/CronetUrlRequest;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    new-instance v1, Lmoh;

    invoke-direct {v1, p0, v0, p1}, Lmoh;-><init>(Lorg/chromium/net/CronetUrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, v1}, Lorg/chromium/net/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    .line 552
    return-void
.end method

.method private onResponseStarted(I[Ljava/lang/String;)V
    .locals 6
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->t:Lmon;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->t:Lmon;

    .line 5741
    iget-object v1, v0, Lmon;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lmon;->b:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 5742
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, v0, Lmon;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lmon;->b:Ljava/lang/Long;

    .line 564
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/chromium/net/CronetUrlRequest;->a(I[Ljava/lang/String;)Lorg/chromium/net/UrlResponseInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->f:Lorg/chromium/net/UrlResponseInfo;

    .line 565
    new-instance v0, Lmoi;

    invoke-direct {v0, p0}, Lmoi;-><init>(Lorg/chromium/net/CronetUrlRequest;)V

    .line 582
    invoke-direct {p0, v0}, Lorg/chromium/net/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    .line 583
    return-void
.end method

.method private onStatus(Lorg/chromium/net/UrlRequest$StatusListener;I)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 700
    new-instance v0, Lmol;

    invoke-direct {v0, p0, p1, p2}, Lmol;-><init>(Lorg/chromium/net/CronetUrlRequest;Lorg/chromium/net/UrlRequest$StatusListener;I)V

    .line 706
    invoke-direct {p0, v0}, Lorg/chromium/net/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    .line 707
    return-void
.end method

.method private onSucceeded(J)V
    .locals 5
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 631
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->f:Lorg/chromium/net/UrlResponseInfo;

    iget-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->n:J

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lorg/chromium/net/UrlResponseInfo;->a(J)V

    .line 632
    new-instance v0, Lmoj;

    invoke-direct {v0, p0}, Lmoj;-><init>(Lorg/chromium/net/CronetUrlRequest;)V

    .line 651
    invoke-direct {p0, v0}, Lorg/chromium/net/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    .line 652
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 187
    iget-object v5, p0, Lorg/chromium/net/CronetUrlRequest;->d:Ljava/lang/Object;

    monitor-enter v5

    .line 188
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/CronetUrlRequest;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->k:Lorg/chromium/net/CronetUrlRequestContext;

    invoke-virtual {v0}, Lorg/chromium/net/CronetUrlRequestContext;->e()J

    move-result-wide v0

    iget-object v3, p0, Lorg/chromium/net/CronetUrlRequest;->o:Ljava/lang/String;

    iget v6, p0, Lorg/chromium/net/CronetUrlRequest;->p:I

    invoke-direct {p0, v0, v1, v3, v6}, Lorg/chromium/net/CronetUrlRequest;->nativeCreateRequestAdapter(JLjava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    .line 193
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->k:Lorg/chromium/net/CronetUrlRequestContext;

    invoke-virtual {v0}, Lorg/chromium/net/CronetUrlRequestContext;->c()V

    .line 194
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 195
    iget-wide v0, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    iget-object v3, p0, Lorg/chromium/net/CronetUrlRequest;->q:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Lorg/chromium/net/CronetUrlRequest;->nativeSetHttpMethod(JLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid http method "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/net/CronetUrlRequest;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :catch_0
    move-exception v0

    .line 222
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v1}, Lorg/chromium/net/CronetUrlRequest;->a(Z)V

    .line 223
    throw v0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 201
    :cond_0
    :try_start_3
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->r:Lorg/chromium/net/CronetUrlRequest$HeadersList;

    invoke-virtual {v0}, Lorg/chromium/net/CronetUrlRequest$HeadersList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 202
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "Content-Type"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    move v3, v4

    .line 206
    :goto_1
    iget-wide v8, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v8, v9, v1, v2}, Lorg/chromium/net/CronetUrlRequest;->nativeAddRequestHeader(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "Invalid header "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v2, v3

    .line 211
    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->u:Lorg/chromium/net/CronetUploadDataStream;

    if-eqz v0, :cond_4

    .line 213
    if-nez v2, :cond_3

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requests with upload data must have a Content-Type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_3
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->u:Lorg/chromium/net/CronetUploadDataStream;

    iget-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    invoke-virtual {v0, p0, v2, v3}, Lorg/chromium/net/CronetUploadDataStream;->a(Lorg/chromium/net/CronetUrlRequest;J)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    :cond_4
    :try_start_4
    iget-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->i:Z

    if-eqz v0, :cond_5

    .line 226
    iget-wide v0, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/net/CronetUrlRequest;->nativeDisableCache(J)V

    .line 228
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->h:Z

    .line 229
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->t:Lmon;

    if-eqz v0, :cond_7

    .line 230
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->t:Lmon;

    .line 2728
    iget-object v1, v0, Lmon;->a:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 2729
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onRequestStarted called repeatedly"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2731
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lmon;->a:Ljava/lang/Long;

    .line 232
    :cond_7
    iget-wide v0, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/net/CronetUrlRequest;->nativeStart(J)V

    .line 233
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_8
    move v3, v2

    goto/16 :goto_1
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 452
    new-instance v0, Lorg/chromium/net/UrlRequestException;

    const-string v1, "CalledByNative method has thrown an exception"

    invoke-direct {v0, v1, p1}, Lorg/chromium/net/UrlRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 454
    const-string v1, "ChromiumNetwork"

    const-string v2, "Exception in CalledByNative method"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    iget-object v1, p0, Lorg/chromium/net/CronetUrlRequest;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 458
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/net/CronetUrlRequest;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    monitor-exit v1

    .line 469
    :goto_0
    return-void

    .line 461
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/chromium/net/CronetUrlRequest;->a(Z)V

    .line 462
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    :try_start_1
    iget-object v1, p0, Lorg/chromium/net/CronetUrlRequest;->e:Lorg/chromium/net/UrlRequest$Callback;

    iget-object v2, p0, Lorg/chromium/net/CronetUrlRequest;->f:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v1, v2, v0}, Lorg/chromium/net/UrlRequest$Callback;->a(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/UrlRequestException;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    const-string v1, "ChromiumNetwork"

    const-string v2, "Exception notifying of failed request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/chromium/net/CronetUrlRequest;->f()V

    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Method is required."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iput-object p1, p0, Lorg/chromium/net/CronetUrlRequest;->q:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 164
    invoke-direct {p0}, Lorg/chromium/net/CronetUrlRequest;->f()V

    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Invalid header name."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    if-nez p2, :cond_1

    .line 169
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Invalid header value."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->r:Lorg/chromium/net/CronetUrlRequest$HeadersList;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/chromium/net/CronetUrlRequest$HeadersList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 8

    .prologue
    .line 287
    invoke-static {p1}, Laal;->c(Ljava/nio/ByteBuffer;)V

    .line 288
    invoke-static {p1}, Laal;->b(Ljava/nio/ByteBuffer;)V

    .line 289
    iget-object v7, p0, Lorg/chromium/net/CronetUrlRequest;->d:Ljava/lang/Object;

    monitor-enter v7

    .line 290
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->c:Z

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected read attempt."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 293
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->c:Z

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->j:Z

    .line 296
    invoke-virtual {p0}, Lorg/chromium/net/CronetUrlRequest;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    monitor-exit v7

    .line 306
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/net/CronetUrlRequest;->nativeReadData(JLjava/nio/ByteBuffer;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->c:Z

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to call native read"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Invalid UploadDataProvider."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->q:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 180
    const-string v0, "POST"

    iput-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->q:Ljava/lang/String;

    .line 182
    :cond_1
    new-instance v0, Lorg/chromium/net/CronetUploadDataStream;

    invoke-direct {v0, p1, p2}, Lorg/chromium/net/CronetUploadDataStream;-><init>(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->u:Lorg/chromium/net/CronetUploadDataStream;

    .line 183
    return-void
.end method

.method public a(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 429
    iget-object v1, p0, Lorg/chromium/net/CronetUrlRequest;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 431
    monitor-exit v1

    .line 443
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->t:Lmon;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->t:Lmon;

    .line 4735
    iget-object v2, v0, Lmon;->a:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lmon;->c:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 4736
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v0, Lmon;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lmon;->c:Ljava/lang/Long;

    .line 436
    :cond_1
    iget-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    invoke-direct {p0, v2, v3, p1}, Lorg/chromium/net/CronetUrlRequest;->nativeDestroy(JZ)V

    .line 437
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->k:Lorg/chromium/net/CronetUrlRequestContext;

    invoke-virtual {v0, p0}, Lorg/chromium/net/CronetUrlRequestContext;->a(Lorg/chromium/net/CronetUrlRequest;)V

    .line 438
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->k:Lorg/chromium/net/CronetUrlRequestContext;

    invoke-virtual {v0}, Lorg/chromium/net/CronetUrlRequestContext;->d()V

    .line 439
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    .line 440
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->w:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->w:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 443
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 238
    iget-object v1, p0, Lorg/chromium/net/CronetUrlRequest;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->b:Z

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No redirect to follow."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 242
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->b:Z

    .line 244
    invoke-virtual {p0}, Lorg/chromium/net/CronetUrlRequest;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    monitor-exit v1

    .line 249
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/net/CronetUrlRequest;->nativeFollowDeferredRedirect(J)V

    .line 249
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method b(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 475
    new-instance v0, Lorg/chromium/net/UrlRequestException;

    const-string v1, "Exception received from UploadDataProvider"

    invoke-direct {v0, v1, p1}, Lorg/chromium/net/UrlRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    const-string v1, "ChromiumNetwork"

    const-string v2, "Exception in upload method"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    invoke-direct {p0, v0}, Lorg/chromium/net/CronetUrlRequest;->a(Lorg/chromium/net/UrlRequestException;)V

    .line 479
    return-void
.end method

.method public c()Z
    .locals 6

    .prologue
    .line 321
    iget-object v1, p0, Lorg/chromium/net/CronetUrlRequest;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->h:Z

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lorg/chromium/net/CronetUrlRequest;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Lorg/chromium/net/CronetUrlRequest;->f()V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/CronetUrlRequest;->i:Z

    .line 330
    return-void
.end method

.method public e()Lorg/chromium/net/CronetEngine$UrlRequestInfo;
    .locals 8

    .prologue
    .line 710
    new-instance v3, Lorg/chromium/net/CronetEngine$UrlRequestInfo;

    iget-object v4, p0, Lorg/chromium/net/CronetUrlRequest;->o:Ljava/lang/String;

    iget-object v5, p0, Lorg/chromium/net/CronetUrlRequest;->s:Ljava/util/Collection;

    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->t:Lmon;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/net/CronetUrlRequest;->t:Lmon;

    .line 6722
    new-instance v2, Lorg/chromium/net/CronetEngine$UrlRequestMetrics;

    iget-object v6, v0, Lmon;->b:Ljava/lang/Long;

    iget-object v7, v0, Lmon;->c:Ljava/lang/Long;

    iget-object v1, v0, Lmon;->d:Lorg/chromium/net/CronetUrlRequest;

    .line 7042
    iget-object v1, v1, Lorg/chromium/net/CronetUrlRequest;->f:Lorg/chromium/net/UrlResponseInfo;

    .line 6722
    if-eqz v1, :cond_0

    iget-object v0, v0, Lmon;->d:Lorg/chromium/net/CronetUrlRequest;

    .line 8042
    iget-object v0, v0, Lorg/chromium/net/CronetUrlRequest;->f:Lorg/chromium/net/UrlResponseInfo;

    .line 6722
    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->d()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, v6, v7, v0}, Lorg/chromium/net/CronetEngine$UrlRequestMetrics;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    move-object v0, v2

    .line 710
    :goto_1
    iget-object v1, p0, Lorg/chromium/net/CronetUrlRequest;->f:Lorg/chromium/net/UrlResponseInfo;

    invoke-direct {v3, v4, v5, v0, v1}, Lorg/chromium/net/CronetEngine$UrlRequestInfo;-><init>(Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/CronetEngine$UrlRequestMetrics;Lorg/chromium/net/UrlResponseInfo;)V

    return-object v3

    .line 6722
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 710
    :cond_1
    sget-object v0, Lorg/chromium/net/CronetUrlRequest;->g:Lorg/chromium/net/CronetEngine$UrlRequestMetrics;

    goto :goto_1
.end method
