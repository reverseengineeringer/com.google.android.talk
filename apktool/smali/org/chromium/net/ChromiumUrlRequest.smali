.class public Lorg/chromium/net/ChromiumUrlRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/HttpUrlRequest;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:J

.field private F:I

.field private G:Ljava/lang/String;

.field private final H:Ljava/lang/Object;

.field private a:J

.field private final b:Lorg/chromium/net/ChromiumUrlRequestContext;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/nio/channels/WritableByteChannel;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:[B

.field private k:Ljava/nio/channels/ReadableByteChannel;

.field private l:Z

.field private m:Ljava/io/IOException;

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Z

.field private q:Z

.field private r:J

.field private final s:Lorg/chromium/net/HttpUrlRequestListener;

.field private t:Z

.field private u:J

.field private v:J

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>(Lorg/chromium/net/ChromiumUrlRequestContext;Ljava/lang/String;ILjava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/ChromiumUrlRequestContext;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/channels/WritableByteChannel;",
            "Lorg/chromium/net/HttpUrlRequestListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->B:I

    .line 80
    iput v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->F:I

    .line 86
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->H:Ljava/lang/Object;

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    if-nez p2, :cond_1

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "URL is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_1
    iput-object p1, p0, Lorg/chromium/net/ChromiumUrlRequest;->b:Lorg/chromium/net/ChromiumUrlRequestContext;

    .line 116
    iput-object p2, p0, Lorg/chromium/net/ChromiumUrlRequest;->c:Ljava/lang/String;

    .line 1466
    packed-switch p3, :pswitch_data_0

    move v0, v1

    .line 117
    :goto_0
    :pswitch_0
    iput v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->d:I

    .line 118
    iput-object p4, p0, Lorg/chromium/net/ChromiumUrlRequest;->e:Ljava/util/Map;

    .line 119
    iput-object p5, p0, Lorg/chromium/net/ChromiumUrlRequest;->f:Ljava/nio/channels/WritableByteChannel;

    .line 120
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->b:Lorg/chromium/net/ChromiumUrlRequestContext;

    invoke-virtual {v0}, Lorg/chromium/net/ChromiumUrlRequestContext;->a()J

    move-result-wide v0

    iget-object v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->c:Ljava/lang/String;

    iget v3, p0, Lorg/chromium/net/ChromiumUrlRequest;->d:I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/net/ChromiumUrlRequest;->nativeCreateRequestAdapter(JLjava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    .line 122
    iput-object p6, p0, Lorg/chromium/net/ChromiumUrlRequest;->s:Lorg/chromium/net/HttpUrlRequestListener;

    .line 123
    return-void

    .line 1470
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1472
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1474
    goto :goto_0

    .line 1476
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 1466
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

.method public constructor <init>(Lorg/chromium/net/ChromiumUrlRequestContext;Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/ChromiumUrlRequestContext;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/chromium/net/HttpUrlRequestListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v5, Lorg/chromium/net/ChunkedWritableByteChannel;

    invoke-direct {v5}, Lorg/chromium/net/ChunkedWritableByteChannel;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/chromium/net/ChromiumUrlRequest;-><init>(Lorg/chromium/net/ChromiumUrlRequestContext;Ljava/lang/String;ILjava/util/Map;Ljava/nio/channels/WritableByteChannel;Lorg/chromium/net/HttpUrlRequestListener;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->t:Z

    .line 94
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 536
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CalledByNative method has thrown an exception"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->m:Ljava/io/IOException;

    .line 538
    const-string v0, "ChromiumNetwork"

    const-string v1, "Exception in CalledByNative method"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/net/ChromiumUrlRequest;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    const-string v1, "ChromiumNetwork"

    const-string v2, "Exception trying to cancel request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 524
    if-nez p0, :cond_0

    .line 525
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contentType is required"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_0
    return-void
.end method

.method private finish()V
    .locals 6
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 642
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->H:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :try_start_1
    iget-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->A:Z

    if-eqz v0, :cond_0

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->q:Z

    .line 646
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->p:Z

    .line 648
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 649
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    :goto_0
    return-void

    .line 652
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->f:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 657
    :goto_1
    :try_start_3
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->k:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->k:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->k:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2491
    :cond_2
    :goto_2
    :try_start_4
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/net/ChromiumUrlRequest;->nativeGetErrorCode(J)I

    move-result v0

    iput v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->F:I

    .line 2492
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/net/ChromiumUrlRequest;->nativeGetErrorString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->G:Ljava/lang/String;

    .line 2498
    iget v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->F:I

    if-eqz v0, :cond_3

    .line 2499
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/net/ChromiumUrlRequest;->nativeGetHttpStatusCode(J)I

    move-result v0

    iput v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->B:I

    .line 2500
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/net/ChromiumUrlRequest;->nativeGetHttpStatusText(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->C:Ljava/lang/String;

    .line 2502
    :cond_3
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->s:Lorg/chromium/net/HttpUrlRequestListener;

    invoke-interface {v0, p0}, Lorg/chromium/net/HttpUrlRequestListener;->b(Lorg/chromium/net/HttpUrlRequest;)V

    .line 664
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/net/ChromiumUrlRequest;->nativeDestroyRequestAdapter(J)V

    .line 665
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    .line 666
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception in finish"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->m:Ljava/io/IOException;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private native nativeAddHeader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeAppendChunk(JLjava/nio/ByteBuffer;IZ)V
.end method

.method private native nativeCancel(J)V
.end method

.method private native nativeCreateRequestAdapter(JLjava/lang/String;I)J
.end method

.method private native nativeDestroyRequestAdapter(J)V
.end method

.method private native nativeDisableRedirects(J)V
.end method

.method private native nativeEnableChunkedUpload(JLjava/lang/String;)V
.end method

.method private native nativeGetAllHeaders(JLorg/chromium/net/ChromiumUrlRequest$ResponseHeadersMap;)V
.end method

.method private native nativeGetContentLength(J)J
.end method

.method private native nativeGetContentType(J)Ljava/lang/String;
.end method

.method private native nativeGetErrorCode(J)I
.end method

.method private native nativeGetErrorString(J)Ljava/lang/String;
.end method

.method private native nativeGetHeader(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetHttpStatusCode(J)I
.end method

.method private native nativeGetHttpStatusText(J)Ljava/lang/String;
.end method

.method private native nativeGetNegotiatedProtocol(J)Ljava/lang/String;
.end method

.method private native nativeGetWasCached(J)Z
.end method

.method private native nativeSetMethod(JLjava/lang/String;)V
.end method

.method private native nativeSetUploadChannel(JLjava/lang/String;J)V
.end method

.method private native nativeSetUploadData(JLjava/lang/String;[B)V
.end method

.method private native nativeStart(J)V
.end method

.method private o()V
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->x:Z

    .line 484
    invoke-virtual {p0}, Lorg/chromium/net/ChromiumUrlRequest;->i()V

    .line 485
    return-void
.end method

.method private onAppendResponseHeader(Lorg/chromium/net/ChromiumUrlRequest$ResponseHeadersMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 680
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/chromium/net/ChromiumUrlRequest$ResponseHeadersMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2, v0}, Lorg/chromium/net/ChromiumUrlRequest$ResponseHeadersMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    :cond_0
    invoke-virtual {p1, p2}, Lorg/chromium/net/ChromiumUrlRequest$ResponseHeadersMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :goto_0
    return-void

    .line 684
    :catch_0
    move-exception v0

    .line 685
    invoke-direct {p0, v0}, Lorg/chromium/net/ChromiumUrlRequest;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private onBytesRead(Ljava/nio/ByteBuffer;)V
    .locals 8
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 603
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->x:Z

    if-eqz v1, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 608
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->z:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->z:J

    .line 609
    iget-boolean v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->y:Z

    if-eqz v2, :cond_2

    .line 610
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->z:J

    iget-wide v4, p0, Lorg/chromium/net/ChromiumUrlRequest;->u:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 613
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->y:Z

    .line 614
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->u:J

    iget-wide v4, p0, Lorg/chromium/net/ChromiumUrlRequest;->z:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 618
    :cond_2
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->v:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->z:J

    iget-wide v4, p0, Lorg/chromium/net/ChromiumUrlRequest;->v:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    const/4 v0, 0x1

    .line 620
    :cond_3
    if-eqz v0, :cond_4

    .line 621
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->z:J

    iget-wide v4, p0, Lorg/chromium/net/ChromiumUrlRequest;->v:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 624
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 625
    iget-object v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->f:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 630
    :catch_0
    move-exception v0

    .line 631
    invoke-direct {p0, v0}, Lorg/chromium/net/ChromiumUrlRequest;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 627
    :cond_5
    if-eqz v0, :cond_0

    .line 628
    :try_start_1
    invoke-direct {p0}, Lorg/chromium/net/ChromiumUrlRequest;->o()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private onResponseStarted()V
    .locals 8
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 554
    :try_start_0
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/net/ChromiumUrlRequest;->nativeGetHttpStatusCode(J)I

    move-result v0

    iput v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->B:I

    .line 555
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/net/ChromiumUrlRequest;->nativeGetHttpStatusText(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->C:Ljava/lang/String;

    .line 556
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/net/ChromiumUrlRequest;->nativeGetContentType(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->D:Ljava/lang/String;

    .line 557
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/net/ChromiumUrlRequest;->nativeGetContentLength(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->E:J

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->q:Z

    .line 560
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->v:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->E:J

    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->v:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->w:Z

    if-eqz v0, :cond_0

    .line 563
    invoke-direct {p0}, Lorg/chromium/net/ChromiumUrlRequest;->o()V

    .line 591
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->t:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->E:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->x:Z

    if-nez v0, :cond_1

    .line 569
    invoke-virtual {p0}, Lorg/chromium/net/ChromiumUrlRequest;->g()Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/ChunkedWritableByteChannel;

    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->E:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/chromium/net/ChunkedWritableByteChannel;->a(I)V

    .line 573
    :cond_1
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->u:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_3

    .line 577
    iget v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->B:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4

    .line 579
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->E:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 580
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->E:J

    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->u:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->E:J

    .line 582
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->y:Z

    .line 587
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->s:Lorg/chromium/net/HttpUrlRequestListener;

    invoke-interface {v0, p0}, Lorg/chromium/net/HttpUrlRequestListener;->a(Lorg/chromium/net/HttpUrlRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    invoke-direct {p0, v0}, Lorg/chromium/net/ChromiumUrlRequest;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 584
    :cond_4
    :try_start_1
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->u:J

    iput-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->z:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private p()V
    .locals 4

    .prologue
    .line 506
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adapter has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 512
    iget-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->n:Z

    if-eqz v0, :cond_0

    .line 513
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Request already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 518
    iget-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->q:Z

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Response headers not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_0
    return-void
.end method

.method private readFromUploadChannel(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 699
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->k:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->k:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 709
    :cond_1
    :goto_0
    return v0

    .line 700
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->k:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 701
    if-gez v0, :cond_1

    .line 702
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->k:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    const/4 v0, 0x0

    goto :goto_0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    invoke-direct {p0, v0}, Lorg/chromium/net/ChromiumUrlRequest;->a(Ljava/lang/Exception;)V

    move v0, v1

    .line 709
    goto :goto_0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->E:J

    return-wide v0
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 127
    iput-wide p1, p0, Lorg/chromium/net/ChromiumUrlRequest;->u:J

    .line 128
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bytes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/net/ChromiumUrlRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public a(JZ)V
    .locals 1

    .prologue
    .line 147
    iput-wide p1, p0, Lorg/chromium/net/ChromiumUrlRequest;->v:J

    .line 148
    iput-boolean p3, p0, Lorg/chromium/net/ChromiumUrlRequest;->w:Z

    .line 149
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Lorg/chromium/net/ChromiumUrlRequest;->q()V

    .line 328
    iput-object p1, p0, Lorg/chromium/net/ChromiumUrlRequest;->i:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 221
    iget-object v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->H:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/ChromiumUrlRequest;->q()V

    .line 223
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->g:Ljava/util/Map;

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/nio/channels/ReadableByteChannel;J)V
    .locals 3

    .prologue
    .line 262
    iget-object v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->H:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/ChromiumUrlRequest;->q()V

    .line 264
    invoke-static {p1}, Lorg/chromium/net/ChromiumUrlRequest;->b(Ljava/lang/String;)V

    .line 265
    iput-object p1, p0, Lorg/chromium/net/ChromiumUrlRequest;->h:Ljava/lang/String;

    .line 266
    iput-object p2, p0, Lorg/chromium/net/ChromiumUrlRequest;->k:Ljava/nio/channels/ReadableByteChannel;

    .line 267
    iput-wide p3, p0, Lorg/chromium/net/ChromiumUrlRequest;->r:J

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->j:[B

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->l:Z

    .line 270
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 240
    iget-object v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->H:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/ChromiumUrlRequest;->q()V

    .line 242
    invoke-static {p1}, Lorg/chromium/net/ChromiumUrlRequest;->b(Ljava/lang/String;)V

    .line 243
    iput-object p1, p0, Lorg/chromium/net/ChromiumUrlRequest;->h:Ljava/lang/String;

    .line 244
    iput-object p2, p0, Lorg/chromium/net/ChromiumUrlRequest;->j:[B

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->k:Ljava/nio/channels/ReadableByteChannel;

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->l:Z

    .line 247
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 157
    iget v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->B:I

    const/16 v1, 0xce

    if-ne v0, v1, :cond_0

    .line 158
    const/16 v0, 0xc8

    .line 160
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->B:I

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->C:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/io/IOException;
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->m:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->m:Ljava/io/IOException;

    .line 199
    :goto_0
    return-object v0

    .line 178
    :cond_0
    iget v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->F:I

    packed-switch v0, :pswitch_data_0

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :pswitch_0
    iget-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->x:Z

    if-eqz v0, :cond_1

    .line 181
    new-instance v0, Lorg/chromium/net/ResponseTooLargeException;

    invoke-direct {v0}, Lorg/chromium/net/ResponseTooLargeException;-><init>()V

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :pswitch_1
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->G:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :pswitch_2
    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_3
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "Connection timed out"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :pswitch_4
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 197
    :goto_1
    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->c:Ljava/lang/String;

    goto :goto_1

    .line 199
    :pswitch_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Request failed because there were too many redirects or redirects have been disabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public e()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lorg/chromium/net/ChromiumUrlRequest;->g()Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/ChunkedWritableByteChannel;

    invoke-virtual {v0}, Lorg/chromium/net/ChunkedWritableByteChannel;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public f()[B
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/chromium/net/ChromiumUrlRequest;->g()Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/ChunkedWritableByteChannel;

    invoke-virtual {v0}, Lorg/chromium/net/ChunkedWritableByteChannel;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/nio/channels/WritableByteChannel;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->f:Ljava/nio/channels/WritableByteChannel;

    return-object v0
.end method

.method public h()V
    .locals 7

    .prologue
    .line 347
    iget-object v6, p0, Lorg/chromium/net/ChromiumUrlRequest;->H:Ljava/lang/Object;

    monitor-enter v6

    .line 348
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->o:Z

    if-eqz v0, :cond_0

    .line 349
    monitor-exit v6

    .line 391
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-direct {p0}, Lorg/chromium/net/ChromiumUrlRequest;->q()V

    .line 353
    invoke-direct {p0}, Lorg/chromium/net/ChromiumUrlRequest;->p()V

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->n:Z

    .line 357
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->e:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 359
    iget-wide v4, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v4, v5, v1, v0}, Lorg/chromium/net/ChromiumUrlRequest;->nativeAddHeader(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 364
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->g:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 367
    iget-wide v4, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v4, v5, v1, v0}, Lorg/chromium/net/ChromiumUrlRequest;->nativeAddHeader(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 372
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->j:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->j:[B

    array-length v0, v0

    if-lez v0, :cond_5

    .line 373
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    iget-object v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->h:Ljava/lang/String;

    iget-object v3, p0, Lorg/chromium/net/ChromiumUrlRequest;->j:[B

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/chromium/net/ChromiumUrlRequest;->nativeSetUploadData(JLjava/lang/String;[B)V

    .line 386
    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 387
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    iget-object v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/net/ChromiumUrlRequest;->nativeSetMethod(JLjava/lang/String;)V

    .line 390
    :cond_4
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/net/ChromiumUrlRequest;->nativeStart(J)V

    .line 391
    monitor-exit v6

    goto/16 :goto_0

    .line 375
    :cond_5
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->k:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_6

    .line 376
    iget-wide v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    iget-object v3, p0, Lorg/chromium/net/ChromiumUrlRequest;->h:Ljava/lang/String;

    iget-wide v4, p0, Lorg/chromium/net/ChromiumUrlRequest;->r:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/chromium/net/ChromiumUrlRequest;->nativeSetUploadChannel(JLjava/lang/String;J)V

    goto :goto_3

    .line 378
    :cond_6
    iget-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->l:Z

    if-eqz v0, :cond_3

    .line 379
    iget-wide v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    iget-object v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->h:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lorg/chromium/net/ChromiumUrlRequest;->nativeEnableChunkedUpload(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public i()V
    .locals 6

    .prologue
    .line 396
    iget-object v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->H:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->o:Z

    if-eqz v0, :cond_0

    .line 398
    monitor-exit v1

    .line 406
    :goto_0
    return-void

    .line 401
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->o:Z

    .line 403
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 404
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/net/ChromiumUrlRequest;->nativeCancel(J)V

    .line 406
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 411
    iget-object v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->H:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_0
    iget-boolean v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->o:Z

    monitor-exit v1

    return v0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k()Ljava/lang/String;
    .locals 4

    .prologue
    .line 418
    iget-object v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->H:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/ChromiumUrlRequest;->p()V

    .line 420
    invoke-direct {p0}, Lorg/chromium/net/ChromiumUrlRequest;->r()V

    .line 421
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-direct {p0, v2, v3}, Lorg/chromium/net/ChromiumUrlRequest;->nativeGetNegotiatedProtocol(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->D:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v1, p0, Lorg/chromium/net/ChromiumUrlRequest;->H:Ljava/lang/Object;

    monitor-enter v1

    .line 452
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/ChromiumUrlRequest;->p()V

    .line 453
    invoke-direct {p0}, Lorg/chromium/net/ChromiumUrlRequest;->r()V

    .line 454
    new-instance v0, Lorg/chromium/net/ChromiumUrlRequest$ResponseHeadersMap;

    .line 1764
    invoke-direct {v0}, Lorg/chromium/net/ChromiumUrlRequest$ResponseHeadersMap;-><init>()V

    .line 455
    iget-wide v2, p0, Lorg/chromium/net/ChromiumUrlRequest;->a:J

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/net/ChromiumUrlRequest;->nativeGetAllHeaders(JLorg/chromium/net/ChromiumUrlRequest$ResponseHeadersMap;)V

    .line 456
    monitor-exit v1

    return-object v0

    .line 457
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lorg/chromium/net/ChromiumUrlRequest;->c:Ljava/lang/String;

    return-object v0
.end method
