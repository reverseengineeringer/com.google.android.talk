.class public final Liwm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwm;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Liwm;


# instance fields
.field public a:Lixc;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9465
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10470
    iput-object v0, p0, Liwm;->a:Lixc;

    .line 10471
    iput-object v0, p0, Liwm;->b:Ljava/lang/Integer;

    .line 10472
    iput-object v0, p0, Liwm;->c:Ljava/lang/Boolean;

    .line 10473
    iput-object v0, p0, Liwm;->eD:Llyd;

    .line 10474
    const/4 v0, -0x1

    iput v0, p0, Liwm;->eE:I

    .line 9467
    return-void
.end method

.method public static d()[Liwm;
    .locals 2

    .prologue
    .line 9443
    sget-object v0, Liwm;->d:[Liwm;

    if-nez v0, :cond_1

    .line 9444
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 9446
    :try_start_0
    sget-object v0, Liwm;->d:[Liwm;

    if-nez v0, :cond_0

    .line 9447
    const/4 v0, 0x0

    new-array v0, v0, [Liwm;

    sput-object v0, Liwm;->d:[Liwm;

    .line 9449
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9451
    :cond_1
    sget-object v0, Liwm;->d:[Liwm;

    return-object v0

    .line 9449
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
    .line 11516
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 11517
    sparse-switch v0, :sswitch_data_0

    .line 11521
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11522
    :sswitch_0
    return-object p0

    .line 11527
    :sswitch_1
    iget-object v0, p0, Liwm;->a:Lixc;

    if-nez v0, :cond_1

    .line 11528
    new-instance v0, Lixc;

    invoke-direct {v0}, Lixc;-><init>()V

    iput-object v0, p0, Liwm;->a:Lixc;

    .line 11530
    :cond_1
    iget-object v0, p0, Liwm;->a:Lixc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 11534
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 11535
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 11540
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Liwm;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 11546
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Liwm;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 11517
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch

    .line 11535
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 9481
    iget-object v0, p0, Liwm;->a:Lixc;

    if-eqz v0, :cond_0

    .line 9482
    const/4 v0, 0x1

    iget-object v1, p0, Liwm;->a:Lixc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9484
    :cond_0
    iget-object v0, p0, Liwm;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 9485
    const/4 v0, 0x4

    iget-object v1, p0, Liwm;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9487
    :cond_1
    iget-object v0, p0, Liwm;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 9488
    const/4 v0, 0x5

    iget-object v1, p0, Liwm;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 9490
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9491
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 9495
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9496
    iget-object v1, p0, Liwm;->a:Lixc;

    if-eqz v1, :cond_0

    .line 9497
    const/4 v1, 0x1

    iget-object v2, p0, Liwm;->a:Lixc;

    .line 9498
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9500
    :cond_0
    iget-object v1, p0, Liwm;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 9501
    const/4 v1, 0x4

    iget-object v2, p0, Liwm;->b:Ljava/lang/Integer;

    .line 9502
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9504
    :cond_1
    iget-object v1, p0, Liwm;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 9505
    const/4 v1, 0x5

    iget-object v2, p0, Liwm;->c:Ljava/lang/Boolean;

    .line 9506
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 9506
    add-int/2addr v0, v1

    .line 9508
    :cond_2
    return v0
.end method
