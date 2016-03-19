.class public final Lmom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field final synthetic b:Lorg/chromium/net/CronetUrlRequest;


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetUrlRequest;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lmom;->b:Lorg/chromium/net/CronetUrlRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 104
    iget-object v0, p0, Lmom;->b:Lorg/chromium/net/CronetUrlRequest;

    invoke-virtual {v0}, Lorg/chromium/net/CronetUrlRequest;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 108
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmom;->b:Lorg/chromium/net/CronetUrlRequest;

    .line 1042
    iget-object v1, v0, Lorg/chromium/net/CronetUrlRequest;->d:Ljava/lang/Object;

    .line 108
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :try_start_1
    iget-object v0, p0, Lmom;->b:Lorg/chromium/net/CronetUrlRequest;

    .line 2042
    iget-wide v2, v0, Lorg/chromium/net/CronetUrlRequest;->a:J

    .line 109
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 110
    monitor-exit v1

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    iget-object v1, p0, Lmom;->b:Lorg/chromium/net/CronetUrlRequest;

    .line 6042
    invoke-virtual {v1, v0}, Lorg/chromium/net/CronetUrlRequest;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 112
    :cond_1
    :try_start_3
    iget-object v0, p0, Lmom;->b:Lorg/chromium/net/CronetUrlRequest;

    .line 3042
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/chromium/net/CronetUrlRequest;->c:Z

    .line 113
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    :try_start_4
    iget-object v0, p0, Lmom;->a:Ljava/nio/ByteBuffer;

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lmom;->a:Ljava/nio/ByteBuffer;

    .line 119
    iget-object v1, p0, Lmom;->b:Lorg/chromium/net/CronetUrlRequest;

    .line 4042
    iget-object v1, v1, Lorg/chromium/net/CronetUrlRequest;->e:Lorg/chromium/net/UrlRequest$Callback;

    .line 119
    iget-object v2, p0, Lmom;->b:Lorg/chromium/net/CronetUrlRequest;

    iget-object v3, p0, Lmom;->b:Lorg/chromium/net/CronetUrlRequest;

    .line 5042
    iget-object v3, v3, Lorg/chromium/net/CronetUrlRequest;->f:Lorg/chromium/net/UrlResponseInfo;

    .line 119
    invoke-virtual {v1, v2, v0}, Lorg/chromium/net/UrlRequest$Callback;->a(Lorg/chromium/net/UrlRequest;Ljava/nio/ByteBuffer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method
