.class public final Lixe;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixe;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile h:[Lixe;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lixw;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5477
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6482
    iput-object v0, p0, Lixe;->a:Lixc;

    .line 6483
    iput-object v0, p0, Lixe;->b:Ljava/lang/String;

    .line 6484
    iput-object v0, p0, Lixe;->c:Ljava/lang/String;

    .line 6485
    iput-object v0, p0, Lixe;->d:Ljava/lang/String;

    .line 6486
    iput-object v0, p0, Lixe;->e:Ljava/lang/String;

    .line 6487
    iput-object v0, p0, Lixe;->f:Ljava/lang/String;

    .line 6488
    iput-object v0, p0, Lixe;->g:Lixw;

    .line 6489
    iput-object v0, p0, Lixe;->eD:Llyd;

    .line 6490
    const/4 v0, -0x1

    iput v0, p0, Lixe;->eE:I

    .line 5479
    return-void
.end method

.method public static d()[Lixe;
    .locals 2

    .prologue
    .line 5443
    sget-object v0, Lixe;->h:[Lixe;

    if-nez v0, :cond_1

    .line 5444
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5446
    :try_start_0
    sget-object v0, Lixe;->h:[Lixe;

    if-nez v0, :cond_0

    .line 5447
    const/4 v0, 0x0

    new-array v0, v0, [Lixe;

    sput-object v0, Lixe;->h:[Lixe;

    .line 5449
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5451
    :cond_1
    sget-object v0, Lixe;->h:[Lixe;

    return-object v0

    .line 5449
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
    .line 6560
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6561
    sparse-switch v0, :sswitch_data_0

    .line 6565
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6566
    :sswitch_0
    return-object p0

    .line 6571
    :sswitch_1
    iget-object v0, p0, Lixe;->a:Lixc;

    if-nez v0, :cond_1

    .line 6572
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Lixe;->a:Lixc;

    .line 6574
    :cond_1
    iget-object v0, p0, Lixe;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6578
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixe;->b:Ljava/lang/String;

    goto :goto_0

    .line 6582
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixe;->c:Ljava/lang/String;

    goto :goto_0

    .line 6586
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixe;->e:Ljava/lang/String;

    goto :goto_0

    .line 6590
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixe;->d:Ljava/lang/String;

    goto :goto_0

    .line 6594
    :sswitch_6
    iget-object v0, p0, Lixe;->g:Lixw;

    if-nez v0, :cond_2

    .line 6595
    new-instance v0, Lixw;

    invoke-direct {v0}, Lixw;-><init>()V

    iput-object v0, p0, Lixe;->g:Lixw;

    .line 6597
    :cond_2
    iget-object v0, p0, Lixe;->g:Lixw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6601
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixe;->f:Ljava/lang/String;

    goto :goto_0

    .line 6561
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 5497
    iget-object v0, p0, Lixe;->a:Lixc;

    if-eqz v0, :cond_0

    .line 5498
    const/4 v0, 0x1

    iget-object v1, p0, Lixe;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5500
    :cond_0
    iget-object v0, p0, Lixe;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5501
    const/4 v0, 0x2

    iget-object v1, p0, Lixe;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5503
    :cond_1
    iget-object v0, p0, Lixe;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5504
    const/4 v0, 0x3

    iget-object v1, p0, Lixe;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5506
    :cond_2
    iget-object v0, p0, Lixe;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5507
    const/4 v0, 0x4

    iget-object v1, p0, Lixe;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5509
    :cond_3
    iget-object v0, p0, Lixe;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 5510
    const/4 v0, 0x5

    iget-object v1, p0, Lixe;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5512
    :cond_4
    iget-object v0, p0, Lixe;->g:Lixw;

    if-eqz v0, :cond_5

    .line 5513
    const/4 v0, 0x6

    iget-object v1, p0, Lixe;->g:Lixw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5515
    :cond_5
    iget-object v0, p0, Lixe;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 5516
    const/4 v0, 0x7

    iget-object v1, p0, Lixe;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5518
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5519
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 5523
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5524
    iget-object v1, p0, Lixe;->a:Lixc;

    if-eqz v1, :cond_0

    .line 5525
    const/4 v1, 0x1

    iget-object v2, p0, Lixe;->a:Lixc;

    .line 5526
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5528
    :cond_0
    iget-object v1, p0, Lixe;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5529
    const/4 v1, 0x2

    iget-object v2, p0, Lixe;->b:Ljava/lang/String;

    .line 5530
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5532
    :cond_1
    iget-object v1, p0, Lixe;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5533
    const/4 v1, 0x3

    iget-object v2, p0, Lixe;->c:Ljava/lang/String;

    .line 5534
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5536
    :cond_2
    iget-object v1, p0, Lixe;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 5537
    const/4 v1, 0x4

    iget-object v2, p0, Lixe;->e:Ljava/lang/String;

    .line 5538
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5540
    :cond_3
    iget-object v1, p0, Lixe;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 5541
    const/4 v1, 0x5

    iget-object v2, p0, Lixe;->d:Ljava/lang/String;

    .line 5542
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5544
    :cond_4
    iget-object v1, p0, Lixe;->g:Lixw;

    if-eqz v1, :cond_5

    .line 5545
    const/4 v1, 0x6

    iget-object v2, p0, Lixe;->g:Lixw;

    .line 5546
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5548
    :cond_5
    iget-object v1, p0, Lixe;->f:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 5549
    const/4 v1, 0x7

    iget-object v2, p0, Lixe;->f:Ljava/lang/String;

    .line 5550
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5552
    :cond_6
    return v0
.end method
