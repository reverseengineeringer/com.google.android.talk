.class final Liek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/HttpUrlRequestListener;


# instance fields
.field final synthetic a:Liej;


# direct methods
.method constructor <init>(Liej;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Liek;->a:Liej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/net/HttpUrlRequest;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Liek;->a:Liej;

    invoke-virtual {v0, p1}, Liej;->a(Lorg/chromium/net/HttpUrlRequest;)V

    .line 33
    return-void
.end method

.method public b(Lorg/chromium/net/HttpUrlRequest;)V
    .locals 4

    .prologue
    .line 38
    :try_start_0
    iget-object v0, p0, Liek;->a:Liej;

    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->b()I

    move-result v1

    .line 1015
    iput v1, v0, Liej;->b:I

    .line 39
    iget-object v0, p0, Liek;->a:Liej;

    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->a()J

    move-result-wide v2

    .line 2015
    iput-wide v2, v0, Liej;->c:J

    .line 40
    iget-object v0, p0, Liek;->a:Liej;

    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->f()[B

    move-result-object v1

    .line 3015
    iput-object v1, v0, Liej;->d:[B

    .line 41
    iget-object v0, p0, Liek;->a:Liej;

    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->d()Ljava/io/IOException;

    move-result-object v1

    .line 4015
    iput-object v1, v0, Liej;->e:Ljava/io/IOException;

    .line 42
    iget-object v0, p0, Liek;->a:Liej;

    invoke-interface {p1}, Lorg/chromium/net/HttpUrlRequest;->j()Z

    move-result v1

    .line 5015
    iput-boolean v1, v0, Liej;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-object v0, p0, Liek;->a:Liej;

    .line 6015
    iget-object v0, v0, Liej;->a:Landroid/os/ConditionVariable;

    .line 44
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v0

    iget-object v1, p0, Liek;->a:Liej;

    .line 7015
    iget-object v1, v1, Liej;->a:Landroid/os/ConditionVariable;

    .line 44
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
