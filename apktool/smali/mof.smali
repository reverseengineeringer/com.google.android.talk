.class public final Lmof;
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
    .line 117
    iput-object p1, p0, Lmof;->a:Lorg/chromium/net/CronetUploadDataStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 120
    iget-object v0, p0, Lmof;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 1027
    iget-object v1, v0, Lorg/chromium/net/CronetUploadDataStream;->c:Ljava/lang/Object;

    .line 120
    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lmof;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 2027
    iget-wide v2, v0, Lorg/chromium/net/CronetUploadDataStream;->d:J

    .line 121
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 122
    monitor-exit v1

    .line 139
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lmof;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 3027
    iget-boolean v0, v0, Lorg/chromium/net/CronetUploadDataStream;->e:Z

    .line 124
    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected rewind call. Already reading"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 128
    :cond_1
    :try_start_1
    iget-object v0, p0, Lmof;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 4027
    iget-boolean v0, v0, Lorg/chromium/net/CronetUploadDataStream;->f:Z

    .line 128
    if-eqz v0, :cond_2

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected rewind call. Already rewinding"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2
    iget-object v0, p0, Lmof;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 5027
    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/chromium/net/CronetUploadDataStream;->f:Z

    .line 133
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :try_start_2
    iget-object v0, p0, Lmof;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 6027
    iget-object v0, v0, Lorg/chromium/net/CronetUploadDataStream;->a:Lorg/chromium/net/UploadDataProvider;

    .line 135
    iget-object v1, p0, Lmof;->a:Lorg/chromium/net/CronetUploadDataStream;

    invoke-virtual {v0, v1}, Lorg/chromium/net/UploadDataProvider;->a(Lorg/chromium/net/UploadDataSink;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    iget-object v1, p0, Lmof;->a:Lorg/chromium/net/CronetUploadDataStream;

    .line 7027
    invoke-virtual {v1, v0}, Lorg/chromium/net/CronetUploadDataStream;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
