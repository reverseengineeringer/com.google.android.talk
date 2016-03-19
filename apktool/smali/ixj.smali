.class public final Lixj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lixj;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6502
    invoke-direct {p0}, Llyb;-><init>()V

    .line 7507
    iput-object v0, p0, Lixj;->a:Lixc;

    .line 7508
    iput-object v0, p0, Lixj;->b:Ljava/lang/String;

    .line 7509
    iput-object v0, p0, Lixj;->c:Ljava/lang/String;

    .line 7510
    iput-object v0, p0, Lixj;->eD:Llyd;

    .line 7511
    const/4 v0, -0x1

    iput v0, p0, Lixj;->eE:I

    .line 6504
    return-void
.end method

.method public static d()[Lixj;
    .locals 2

    .prologue
    .line 6480
    sget-object v0, Lixj;->d:[Lixj;

    if-nez v0, :cond_1

    .line 6481
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 6483
    :try_start_0
    sget-object v0, Lixj;->d:[Lixj;

    if-nez v0, :cond_0

    .line 6484
    const/4 v0, 0x0

    new-array v0, v0, [Lixj;

    sput-object v0, Lixj;->d:[Lixj;

    .line 6486
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6488
    :cond_1
    sget-object v0, Lixj;->d:[Lixj;

    return-object v0

    .line 6486
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
    .line 7553
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 7554
    sparse-switch v0, :sswitch_data_0

    .line 7558
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7559
    :sswitch_0
    return-object p0

    .line 7564
    :sswitch_1
    iget-object v0, p0, Lixj;->a:Lixc;

    if-nez v0, :cond_1

    .line 7565
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Lixj;->a:Lixc;

    .line 7567
    :cond_1
    iget-object v0, p0, Lixj;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 7571
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixj;->b:Ljava/lang/String;

    goto :goto_0

    .line 7575
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixj;->c:Ljava/lang/String;

    goto :goto_0

    .line 7554
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 6518
    iget-object v0, p0, Lixj;->a:Lixc;

    if-eqz v0, :cond_0

    .line 6519
    const/4 v0, 0x1

    iget-object v1, p0, Lixj;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 6521
    :cond_0
    iget-object v0, p0, Lixj;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6522
    const/4 v0, 0x2

    iget-object v1, p0, Lixj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6524
    :cond_1
    iget-object v0, p0, Lixj;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6525
    const/4 v0, 0x3

    iget-object v1, p0, Lixj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 6527
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 6528
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 6532
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 6533
    iget-object v1, p0, Lixj;->a:Lixc;

    if-eqz v1, :cond_0

    .line 6534
    const/4 v1, 0x1

    iget-object v2, p0, Lixj;->a:Lixc;

    .line 6535
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6537
    :cond_0
    iget-object v1, p0, Lixj;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6538
    const/4 v1, 0x2

    iget-object v2, p0, Lixj;->b:Ljava/lang/String;

    .line 6539
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6541
    :cond_1
    iget-object v1, p0, Lixj;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 6542
    const/4 v1, 0x3

    iget-object v2, p0, Lixj;->c:Ljava/lang/String;

    .line 6543
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6545
    :cond_2
    return v0
.end method
