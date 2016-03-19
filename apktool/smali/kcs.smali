.class public final Lkcs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcs;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile g:[Lkcs;


# instance fields
.field public a:Llcf;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25468
    invoke-direct {p0}, Llyb;-><init>()V

    .line 26473
    iput-object v0, p0, Lkcs;->a:Llcf;

    .line 26474
    iput-object v0, p0, Lkcs;->b:Ljava/lang/Boolean;

    .line 26475
    iput-object v0, p0, Lkcs;->c:Ljava/lang/Integer;

    .line 26476
    iput-object v0, p0, Lkcs;->d:Ljava/lang/Boolean;

    .line 26477
    iput-object v0, p0, Lkcs;->e:Ljava/lang/Integer;

    .line 26478
    iput-object v0, p0, Lkcs;->f:Ljava/lang/Boolean;

    .line 26479
    iput-object v0, p0, Lkcs;->eD:Llyd;

    .line 26480
    const/4 v0, -0x1

    iput v0, p0, Lkcs;->eE:I

    .line 25470
    return-void
.end method

.method public static d()[Lkcs;
    .locals 2

    .prologue
    .line 25437
    sget-object v0, Lkcs;->g:[Lkcs;

    if-nez v0, :cond_1

    .line 25438
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 25440
    :try_start_0
    sget-object v0, Lkcs;->g:[Lkcs;

    if-nez v0, :cond_0

    .line 25441
    const/4 v0, 0x0

    new-array v0, v0, [Lkcs;

    sput-object v0, Lkcs;->g:[Lkcs;

    .line 25443
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25445
    :cond_1
    sget-object v0, Lkcs;->g:[Lkcs;

    return-object v0

    .line 25443
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
    .line 29543
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 29544
    sparse-switch v0, :sswitch_data_0

    .line 29548
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29549
    :sswitch_0
    return-object p0

    .line 29554
    :sswitch_1
    iget-object v0, p0, Lkcs;->a:Llcf;

    if-nez v0, :cond_1

    .line 29555
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Lkcs;->a:Llcf;

    .line 29557
    :cond_1
    iget-object v0, p0, Lkcs;->a:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 29561
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkcs;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 29565
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 29566
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 29569
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkcs;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 29575
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkcs;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 29579
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 29580
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 29585
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkcs;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 29591
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkcs;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 29544
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch

    .line 29566
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 29580
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 25487
    iget-object v0, p0, Lkcs;->a:Llcf;

    if-eqz v0, :cond_0

    .line 25488
    const/4 v0, 0x1

    iget-object v1, p0, Lkcs;->a:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 25490
    :cond_0
    iget-object v0, p0, Lkcs;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 25491
    const/4 v0, 0x2

    iget-object v1, p0, Lkcs;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 25493
    :cond_1
    iget-object v0, p0, Lkcs;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 25494
    const/4 v0, 0x3

    iget-object v1, p0, Lkcs;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 25496
    :cond_2
    iget-object v0, p0, Lkcs;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 25497
    const/4 v0, 0x4

    iget-object v1, p0, Lkcs;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 25499
    :cond_3
    iget-object v0, p0, Lkcs;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 25500
    const/4 v0, 0x5

    iget-object v1, p0, Lkcs;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 25502
    :cond_4
    iget-object v0, p0, Lkcs;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 25503
    const/4 v0, 0x6

    iget-object v1, p0, Lkcs;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 25505
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 25506
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 25510
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 25511
    iget-object v1, p0, Lkcs;->a:Llcf;

    if-eqz v1, :cond_0

    .line 25512
    const/4 v1, 0x1

    iget-object v2, p0, Lkcs;->a:Llcf;

    .line 25513
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 25515
    :cond_0
    iget-object v1, p0, Lkcs;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 25516
    const/4 v1, 0x2

    iget-object v2, p0, Lkcs;->b:Ljava/lang/Boolean;

    .line 25517
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 25517
    add-int/2addr v0, v1

    .line 25519
    :cond_1
    iget-object v1, p0, Lkcs;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 25520
    const/4 v1, 0x3

    iget-object v2, p0, Lkcs;->c:Ljava/lang/Integer;

    .line 25521
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25523
    :cond_2
    iget-object v1, p0, Lkcs;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 25524
    const/4 v1, 0x4

    iget-object v2, p0, Lkcs;->d:Ljava/lang/Boolean;

    .line 25525
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 25525
    add-int/2addr v0, v1

    .line 25527
    :cond_3
    iget-object v1, p0, Lkcs;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 25528
    const/4 v1, 0x5

    iget-object v2, p0, Lkcs;->e:Ljava/lang/Integer;

    .line 25529
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25531
    :cond_4
    iget-object v1, p0, Lkcs;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 25532
    const/4 v1, 0x6

    iget-object v2, p0, Lkcs;->f:Ljava/lang/Boolean;

    .line 25533
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 25533
    add-int/2addr v0, v1

    .line 25535
    :cond_5
    return v0
.end method
