.class final Lies;
.super Liej;
.source "SourceFile"


# instance fields
.field private final h:Landroid/content/Context;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:J

.field private final l:J

.field private final m:Ljava/io/InputStream;

.field private final n:Z

.field private final o:Lifa;

.field private p:Lorg/chromium/net/HttpUrlRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lihs;Ljava/lang/String;Ljava/lang/String;JJLjava/io/InputStream;ZLifa;)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0, p2}, Liej;-><init>(Lihs;)V

    .line 43
    iput-object p1, p0, Lies;->h:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lies;->i:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lies;->j:Ljava/lang/String;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lies;->k:J

    .line 47
    iput-wide p7, p0, Lies;->l:J

    .line 48
    iput-object p9, p0, Lies;->m:Ljava/io/InputStream;

    .line 49
    iput-boolean p10, p0, Lies;->n:Z

    .line 50
    iput-object p11, p0, Lies;->o:Lifa;

    .line 51
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    .line 55
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    .line 57
    invoke-virtual {p0}, Lies;->j()Lihs;

    move-result-object v1

    iget-object v2, p0, Lies;->i:Ljava/lang/String;

    invoke-interface {v1, v2}, Lihs;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 58
    const-string v1, "Content-Range"

    iget-wide v2, p0, Lies;->k:J

    iget-wide v4, p0, Lies;->l:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lies;->l:J

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x44

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "bytes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v1, p0, Lies;->h:Landroid/content/Context;

    iget-object v2, p0, Lies;->i:Ljava/lang/String;

    .line 62
    const/4 v3, 0x3

    iget-object v4, p0, Lies;->g:Lorg/chromium/net/HttpUrlRequestListener;

    .line 61
    invoke-static {v1, v2, v3, v0, v4}, Liff;->a(Landroid/content/Context;Ljava/lang/String;ILjava/util/Map;Lorg/chromium/net/HttpUrlRequestListener;)Lorg/chromium/net/HttpUrlRequest;

    move-result-object v0

    iput-object v0, p0, Lies;->p:Lorg/chromium/net/HttpUrlRequest;

    .line 65
    iget-object v0, p0, Lies;->p:Lorg/chromium/net/HttpUrlRequest;

    iget-object v1, p0, Lies;->j:Ljava/lang/String;

    new-instance v2, Life;

    iget-object v3, p0, Lies;->m:Ljava/io/InputStream;

    .line 66
    invoke-static {v3}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v3

    iget-object v4, p0, Lies;->o:Lifa;

    iget-wide v6, p0, Lies;->l:J

    iget-wide v8, p0, Lies;->k:J

    sub-long/2addr v6, v8

    invoke-direct {v2, v3, v4, v6, v7}, Life;-><init>(Ljava/nio/channels/ReadableByteChannel;Lifa;J)V

    iget-wide v4, p0, Lies;->l:J

    iget-wide v6, p0, Lies;->k:J

    sub-long/2addr v4, v6

    .line 65
    invoke-interface {v0, v1, v2, v4, v5}, Lorg/chromium/net/HttpUrlRequest;->a(Ljava/lang/String;Ljava/nio/channels/ReadableByteChannel;J)V

    .line 67
    iget-object v0, p0, Lies;->p:Lorg/chromium/net/HttpUrlRequest;

    const-string v1, "PUT"

    invoke-interface {v0, v1}, Lorg/chromium/net/HttpUrlRequest;->a(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method protected a(Lorg/chromium/net/HttpUrlRequest;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected b()Lorg/chromium/net/HttpUrlRequest;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lies;->p:Lorg/chromium/net/HttpUrlRequest;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lies;->p:Lorg/chromium/net/HttpUrlRequest;

    invoke-interface {v0}, Lorg/chromium/net/HttpUrlRequest;->i()V

    .line 86
    return-void
.end method
