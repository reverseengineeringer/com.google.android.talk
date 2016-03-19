.class public final Lixa;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixa;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Lixa;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7480
    invoke-direct {p0}, Llyb;-><init>()V

    .line 8485
    iput-object v0, p0, Lixa;->a:Lixc;

    .line 8486
    iput-object v0, p0, Lixa;->b:Ljava/lang/String;

    .line 8487
    iput-object v0, p0, Lixa;->c:Ljava/lang/String;

    .line 8488
    iput-object v0, p0, Lixa;->d:Ljava/lang/String;

    .line 8489
    iput-object v0, p0, Lixa;->eD:Llyd;

    .line 8490
    const/4 v0, -0x1

    iput v0, p0, Lixa;->eE:I

    .line 7482
    return-void
.end method

.method public static d()[Lixa;
    .locals 2

    .prologue
    .line 7455
    sget-object v0, Lixa;->e:[Lixa;

    if-nez v0, :cond_1

    .line 7456
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 7458
    :try_start_0
    sget-object v0, Lixa;->e:[Lixa;

    if-nez v0, :cond_0

    .line 7459
    const/4 v0, 0x0

    new-array v0, v0, [Lixa;

    sput-object v0, Lixa;->e:[Lixa;

    .line 7461
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7463
    :cond_1
    sget-object v0, Lixa;->e:[Lixa;

    return-object v0

    .line 7461
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
    .line 8539
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 8540
    sparse-switch v0, :sswitch_data_0

    .line 8544
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8545
    :sswitch_0
    return-object p0

    .line 8550
    :sswitch_1
    iget-object v0, p0, Lixa;->a:Lixc;

    if-nez v0, :cond_1

    .line 8551
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Lixa;->a:Lixc;

    .line 8553
    :cond_1
    iget-object v0, p0, Lixa;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 8557
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixa;->b:Ljava/lang/String;

    goto :goto_0

    .line 8561
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixa;->c:Ljava/lang/String;

    goto :goto_0

    .line 8565
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixa;->d:Ljava/lang/String;

    goto :goto_0

    .line 8540
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 7497
    iget-object v0, p0, Lixa;->a:Lixc;

    if-eqz v0, :cond_0

    .line 7498
    const/4 v0, 0x1

    iget-object v1, p0, Lixa;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 7500
    :cond_0
    iget-object v0, p0, Lixa;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7501
    const/4 v0, 0x2

    iget-object v1, p0, Lixa;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7503
    :cond_1
    iget-object v0, p0, Lixa;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 7504
    const/4 v0, 0x3

    iget-object v1, p0, Lixa;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7506
    :cond_2
    iget-object v0, p0, Lixa;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 7507
    const/4 v0, 0x4

    iget-object v1, p0, Lixa;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 7509
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 7510
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 7514
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 7515
    iget-object v1, p0, Lixa;->a:Lixc;

    if-eqz v1, :cond_0

    .line 7516
    const/4 v1, 0x1

    iget-object v2, p0, Lixa;->a:Lixc;

    .line 7517
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7519
    :cond_0
    iget-object v1, p0, Lixa;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 7520
    const/4 v1, 0x2

    iget-object v2, p0, Lixa;->b:Ljava/lang/String;

    .line 7521
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7523
    :cond_1
    iget-object v1, p0, Lixa;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7524
    const/4 v1, 0x3

    iget-object v2, p0, Lixa;->c:Ljava/lang/String;

    .line 7525
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7527
    :cond_2
    iget-object v1, p0, Lixa;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 7528
    const/4 v1, 0x4

    iget-object v2, p0, Lixa;->d:Ljava/lang/String;

    .line 7529
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7531
    :cond_3
    return v0
.end method
