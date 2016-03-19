.class final Lhyp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/HttpUrlRequestListener;


# instance fields
.field final synthetic a:Lhyo;


# direct methods
.method constructor <init>(Lhyo;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lhyp;->a:Lhyo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/net/HttpUrlRequest;)V
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lhyp;->a:Lhyo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1043
    iput-wide v2, v0, Lhyo;->c:J

    .line 69
    iget-object v0, p0, Lhyp;->a:Lhyo;

    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->k()Ljava/lang/String;

    move-result-object v1

    .line 2043
    iput-object v1, v0, Lhyo;->d:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 3043
    iget-object v0, v0, Lhyo;->h:Lifg;

    .line 70
    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 4043
    iget-object v0, v0, Lhyo;->h:Lifg;

    .line 71
    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lifg;->a(J)V

    .line 73
    :cond_0
    return-void
.end method

.method public b(Lorg/chromium/net/HttpUrlRequest;)V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lhyp;->a:Lhyo;

    monitor-enter v2

    .line 78
    :try_start_0
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 5043
    iget-object v0, v0, Lhyo;->g:Lorg/chromium/net/HttpUrlRequest;

    .line 78
    if-eq p1, v0, :cond_0

    .line 79
    monitor-exit v2

    .line 151
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 6043
    const/4 v3, 0x0

    iput-object v3, v0, Lhyo;->g:Lorg/chromium/net/HttpUrlRequest;

    .line 83
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lhyp;->a:Lhyo;

    invoke-virtual {v0}, Lhyo;->g()V

    .line 86
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 7043
    iget v2, v0, Lhyo;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lhyo;->e:I

    .line 88
    const/4 v0, 0x0

    .line 89
    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->d()Ljava/io/IOException;

    move-result-object v2

    .line 90
    instance-of v3, v2, Lorg/chromium/net/ResponseTooLargeException;

    if-eqz v3, :cond_c

    .line 92
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 8043
    iget-object v0, v0, Lhyo;->a:Lhya;

    .line 92
    invoke-virtual {v0}, Lhya;->l()Ligq;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Response too large: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 9043
    iget-object v0, v0, Lhyo;->a:Lhya;

    .line 93
    invoke-virtual {v0}, Lhya;->l()Ligq;

    move-result-object v0

    check-cast v0, Ligq;

    .line 94
    iget v0, v0, Ligq;->i:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    .line 96
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 10043
    iput-boolean v4, v0, Lhyo;->i:Z

    move-object v2, v1

    move v3, v4

    .line 100
    :goto_1
    if-eqz v2, :cond_4

    .line 102
    const-string v0, "ImageResource"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 11043
    iget-object v0, v0, Lhyo;->a:Lhya;

    .line 103
    invoke-virtual {v0}, Lhya;->l()Ligq;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x19

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Network Exception: Id is:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_1
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 12043
    iget-object v1, v0, Lhyo;->a:Lhya;

    .line 105
    const-string v4, "Network exception: "

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0, v2}, Lhya;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 13043
    iget-object v1, v0, Lhyo;->a:Lhya;

    .line 106
    if-eqz v3, :cond_3

    const/4 v0, 0x5

    :goto_3
    invoke-virtual {v1, v0}, Lhya;->a(I)V

    goto/16 :goto_0

    .line 83
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 107
    :cond_3
    const/4 v0, 0x4

    goto :goto_3

    .line 111
    :cond_4
    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->b()I

    move-result v0

    .line 112
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_6

    .line 113
    iget-object v2, p0, Lhyp;->a:Lhyo;

    .line 14043
    iget-object v2, v2, Lhyo;->j:Ljava/io/File;

    .line 113
    if-eqz v2, :cond_5

    .line 114
    iget-object v2, p0, Lhyp;->a:Lhyo;

    .line 15043
    iget-object v2, v2, Lhyo;->j:Ljava/io/File;

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 116
    :cond_5
    iget-object v2, p0, Lhyp;->a:Lhyo;

    .line 16043
    iget-object v2, v2, Lhyo;->a:Lhya;

    .line 116
    invoke-virtual {v2, v0, v1}, Lhya;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 118
    :cond_6
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 17043
    iget-object v0, v0, Lhyo;->a:Lhya;

    .line 118
    invoke-virtual {v0}, Lhya;->m()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    .line 123
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 18043
    iput-boolean v4, v0, Lhyo;->i:Z

    .line 126
    :cond_7
    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->a()J

    move-result-wide v2

    .line 127
    cmp-long v0, v2, v6

    if-nez v0, :cond_8

    .line 128
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 19043
    iput-wide v6, v0, Lhyo;->f:J

    .line 133
    :goto_4
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 22043
    iget-object v0, v0, Lhyo;->a:Lhya;

    .line 133
    invoke-virtual {v0}, Lhya;->l()Ligq;

    move-result-object v0

    check-cast v0, Ligq;

    .line 140
    iget-object v2, p0, Lhyp;->a:Lhyo;

    .line 23043
    iget-object v2, v2, Lhyo;->h:Lifg;

    .line 140
    if-eqz v2, :cond_9

    .line 141
    iget-object v0, p0, Lhyp;->a:Lhyo;

    .line 24043
    iget-object v0, v0, Lhyo;->h:Lifg;

    .line 141
    invoke-virtual {v0}, Lifg;->a()Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/ChunkedWritableByteChannel;

    .line 142
    invoke-virtual {v0}, Lorg/chromium/net/ChunkedWritableByteChannel;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 150
    :goto_5
    iget-object v1, p0, Lhyp;->a:Lhyo;

    .line 25043
    iget-object v1, v1, Lhyo;->b:Lhye;

    .line 150
    iget-object v2, p0, Lhyp;->a:Lhyo;

    .line 26043
    iget-object v2, v2, Lhyo;->a:Lhya;

    .line 150
    invoke-interface {v1, v2, v0}, Lhye;->a(Ligp;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 130
    :cond_8
    iget-object v0, p0, Lhyp;->a:Lhyo;

    iget-object v4, p0, Lhyp;->a:Lhyo;

    .line 20043
    iget-wide v4, v4, Lhyo;->f:J

    .line 130
    add-long/2addr v2, v4

    .line 21043
    iput-wide v2, v0, Lhyo;->f:J

    goto :goto_4

    .line 144
    :cond_9
    iget v0, v0, Ligq;->i:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->e()Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_5

    :cond_a
    move-object v0, v1

    goto :goto_5

    :cond_b
    move v3, v4

    goto/16 :goto_1

    :cond_c
    move v3, v0

    goto/16 :goto_1
.end method
