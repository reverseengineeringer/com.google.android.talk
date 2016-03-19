.class public final Liwn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwn;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Liwn;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7369
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8374
    iput-object v0, p0, Liwn;->a:Lixc;

    .line 8375
    iput-object v0, p0, Liwn;->b:Ljava/lang/String;

    .line 8376
    iput-object v0, p0, Liwn;->eD:Llyd;

    .line 8377
    const/4 v0, -0x1

    iput v0, p0, Liwn;->eE:I

    .line 7371
    return-void
.end method

.method public static d()[Liwn;
    .locals 2

    .prologue
    .line 7350
    sget-object v0, Liwn;->c:[Liwn;

    if-nez v0, :cond_1

    .line 7351
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 7353
    :try_start_0
    sget-object v0, Liwn;->c:[Liwn;

    if-nez v0, :cond_0

    .line 7354
    const/4 v0, 0x0

    new-array v0, v0, [Liwn;

    sput-object v0, Liwn;->c:[Liwn;

    .line 7356
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7358
    :cond_1
    sget-object v0, Liwn;->c:[Liwn;

    return-object v0

    .line 7356
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 8412
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8413
    sparse-switch v0, :sswitch_data_0

    .line 8417
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8418
    :sswitch_0
    return-object p0

    .line 8423
    :sswitch_1
    iget-object v0, p0, Liwn;->a:Lixc;

    if-nez v0, :cond_1

    .line 8424
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Liwn;->a:Lixc;

    .line 8426
    :cond_1
    iget-object v0, p0, Liwn;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8430
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liwn;->b:Ljava/lang/String;

    goto :goto_0

    .line 8413
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 7384
    iget-object v0, p0, Liwn;->a:Lixc;

    if-eqz v0, :cond_0

    .line 7385
    const/4 v0, 0x1

    iget-object v1, p0, Liwn;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7387
    :cond_0
    iget-object v0, p0, Liwn;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7388
    const/4 v0, 0x2

    iget-object v1, p0, Liwn;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7390
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7391
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 7395
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7396
    iget-object v1, p0, Liwn;->a:Lixc;

    if-eqz v1, :cond_0

    .line 7397
    const/4 v1, 0x1

    iget-object v2, p0, Liwn;->a:Lixc;

    .line 7398
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7400
    :cond_0
    iget-object v1, p0, Liwn;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7401
    const/4 v1, 0x2

    iget-object v2, p0, Liwn;->b:Ljava/lang/String;

    .line 7402
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7404
    :cond_1
    return v0
.end method
