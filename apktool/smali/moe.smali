.class public final Lmoe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/chromium/net/CronetUploadDataStream;


# direct methods
.method public constructor <init>(Lorg/chromium/net/CronetUploadDataStream;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lmoe;->a:Lorg/chromium/net/CronetUploadDataStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 38
    iget-object v0, p0, Lmoe;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 1027
    iget-object v1, v0, Lorg/chromium/net/CronetUploadDataStream;->c:Ljava/lang/Object;

    .line 38
    monitor-enter v1

    .line 39
    :try_start_0
    iget-object v0, p0, Lmoe;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 2027
    iget-wide v2, v0, Lorg/chromium/net/CronetUploadDataStream;->d:J

    .line 39
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 40
    monitor-exit v1

    .line 61
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lmoe;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 3027
    iget-boolean v0, v0, Lorg/chromium/net/CronetUploadDataStream;->e:Z

    .line 42
    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected readData call. Already reading."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 46
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmoe;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 4027
    iget-boolean v0, v0, Lorg/chromium/net/CronetUploadDataStream;->f:Z

    .line 46
    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected readData call. Already rewinding."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_2
    iget-object v0, p0, Lmoe;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 5027
    iget-object v0, v0, Lorg/chromium/net/CronetUploadDataStream;->b:Ljava/nio/ByteBuffer;

    .line 50
    if-nez v0, :cond_3

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected readData call. Buffer is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_3
    iget-object v0, p0, Lmoe;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 6027
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/chromium/net/CronetUploadDataStream;->e:Z

    .line 55
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    iget-object v0, p0, Lmoe;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 7027
    iget-object v0, v0, Lorg/chromium/net/CronetUploadDataStream;->a:Lorg/chromium/net/UploadDataProvider;

    .line 57
    iget-object v1, p0, Lmoe;->a:Lorg/chromium/net/CronetUploadDataStream;

    iget-object v2, p0, Lmoe;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 8027
    iget-object v2, v2, Lorg/chromium/net/CronetUploadDataStream;->b:Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v0, v1, v2}, Lorg/chromium/net/UploadDataProvider;->a(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    iget-object v1, p0, Lmoe;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 9027
    invoke-virtual {v1, v0}, Lorg/chromium/net/CronetUploadDataStream;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
