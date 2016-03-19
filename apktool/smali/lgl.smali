.class public final Llgl;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llgl;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile h:[Llgl;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Llgn;

.field public d:Llgo;

.field public e:Llgp;

.field public f:Llgq;

.field public g:Llgm;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 531
    invoke-direct {p0}, Llyb;-><init>()V

    .line 532
    const/high16 v0, -0x80000000

    iput v0, p0, Llgl;->a:I

    .line 533
    iput-object v1, p0, Llgl;->b:Ljava/lang/String;

    .line 534
    iput-object v1, p0, Llgl;->c:Llgn;

    .line 535
    iput-object v1, p0, Llgl;->d:Llgo;

    .line 536
    iput-object v1, p0, Llgl;->e:Llgp;

    .line 537
    iput-object v1, p0, Llgl;->f:Llgq;

    .line 538
    iput-object v1, p0, Llgl;->g:Llgm;

    .line 539
    iput-object v1, p0, Llgl;->eD:Llyd;

    .line 540
    const/4 v0, -0x1

    iput v0, p0, Llgl;->eE:I

    .line 541
    return-void
.end method

.method public static d()[Llgl;
    .locals 2

    .prologue
    .line 497
    sget-object v0, Llgl;->h:[Llgl;

    if-nez v0, :cond_1

    .line 498
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 500
    :try_start_0
    sget-object v0, Llgl;->h:[Llgl;

    if-nez v0, :cond_0

    .line 501
    const/4 v0, 0x0

    new-array v0, v0, [Llgl;

    sput-object v0, Llgl;->h:[Llgl;

    .line 503
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    :cond_1
    sget-object v0, Llgl;->h:[Llgl;

    return-object v0

    .line 503
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
    .line 1609
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1610
    sparse-switch v0, :sswitch_data_0

    .line 1614
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1615
    :sswitch_0
    return-object p0

    .line 1620
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1621
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1636
    :pswitch_0
    iput v0, p0, Llgl;->a:I

    goto :goto_0

    .line 1642
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llgl;->b:Ljava/lang/String;

    goto :goto_0

    .line 1646
    :sswitch_3
    iget-object v0, p0, Llgl;->c:Llgn;

    if-nez v0, :cond_1

    .line 1647
    new-instance v0, Llgn;

    invoke-direct {v0}, Llgn;-><init>()V

    iput-object v0, p0, Llgl;->c:Llgn;

    .line 1649
    :cond_1
    iget-object v0, p0, Llgl;->c:Llgn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1653
    :sswitch_4
    iget-object v0, p0, Llgl;->d:Llgo;

    if-nez v0, :cond_2

    .line 1654
    new-instance v0, Llgo;

    invoke-direct {v0}, Llgo;-><init>()V

    iput-object v0, p0, Llgl;->d:Llgo;

    .line 1656
    :cond_2
    iget-object v0, p0, Llgl;->d:Llgo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1660
    :sswitch_5
    iget-object v0, p0, Llgl;->e:Llgp;

    if-nez v0, :cond_3

    .line 1661
    new-instance v0, Llgp;

    invoke-direct {v0}, Llgp;-><init>()V

    iput-object v0, p0, Llgl;->e:Llgp;

    .line 1663
    :cond_3
    iget-object v0, p0, Llgl;->e:Llgp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1667
    :sswitch_6
    iget-object v0, p0, Llgl;->f:Llgq;

    if-nez v0, :cond_4

    .line 1668
    new-instance v0, Llgq;

    invoke-direct {v0}, Llgq;-><init>()V

    iput-object v0, p0, Llgl;->f:Llgq;

    .line 1670
    :cond_4
    iget-object v0, p0, Llgl;->f:Llgq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1674
    :sswitch_7
    iget-object v0, p0, Llgl;->g:Llgm;

    if-nez v0, :cond_5

    .line 1675
    new-instance v0, Llgm;

    invoke-direct {v0}, Llgm;-><init>()V

    iput-object v0, p0, Llgl;->g:Llgm;

    .line 1677
    :cond_5
    iget-object v0, p0, Llgl;->g:Llgm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1610
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch

    .line 1621
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 546
    iget v0, p0, Llgl;->a:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 547
    const/4 v0, 0x1

    iget v1, p0, Llgl;->a:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 549
    :cond_0
    iget-object v0, p0, Llgl;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 550
    const/4 v0, 0x2

    iget-object v1, p0, Llgl;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 552
    :cond_1
    iget-object v0, p0, Llgl;->c:Llgn;

    if-eqz v0, :cond_2

    .line 553
    const/4 v0, 0x3

    iget-object v1, p0, Llgl;->c:Llgn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 555
    :cond_2
    iget-object v0, p0, Llgl;->d:Llgo;

    if-eqz v0, :cond_3

    .line 556
    const/4 v0, 0x4

    iget-object v1, p0, Llgl;->d:Llgo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 558
    :cond_3
    iget-object v0, p0, Llgl;->e:Llgp;

    if-eqz v0, :cond_4

    .line 559
    const/4 v0, 0x5

    iget-object v1, p0, Llgl;->e:Llgp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 561
    :cond_4
    iget-object v0, p0, Llgl;->f:Llgq;

    if-eqz v0, :cond_5

    .line 562
    const/4 v0, 0x6

    iget-object v1, p0, Llgl;->f:Llgq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 564
    :cond_5
    iget-object v0, p0, Llgl;->g:Llgm;

    if-eqz v0, :cond_6

    .line 565
    const/4 v0, 0x7

    iget-object v1, p0, Llgl;->g:Llgm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 567
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 568
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 572
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 573
    iget v1, p0, Llgl;->a:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 574
    const/4 v1, 0x1

    iget v2, p0, Llgl;->a:I

    .line 575
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 577
    :cond_0
    iget-object v1, p0, Llgl;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 578
    const/4 v1, 0x2

    iget-object v2, p0, Llgl;->b:Ljava/lang/String;

    .line 579
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 581
    :cond_1
    iget-object v1, p0, Llgl;->c:Llgn;

    if-eqz v1, :cond_2

    .line 582
    const/4 v1, 0x3

    iget-object v2, p0, Llgl;->c:Llgn;

    .line 583
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 585
    :cond_2
    iget-object v1, p0, Llgl;->d:Llgo;

    if-eqz v1, :cond_3

    .line 586
    const/4 v1, 0x4

    iget-object v2, p0, Llgl;->d:Llgo;

    .line 587
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 589
    :cond_3
    iget-object v1, p0, Llgl;->e:Llgp;

    if-eqz v1, :cond_4

    .line 590
    const/4 v1, 0x5

    iget-object v2, p0, Llgl;->e:Llgp;

    .line 591
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 593
    :cond_4
    iget-object v1, p0, Llgl;->f:Llgq;

    if-eqz v1, :cond_5

    .line 594
    const/4 v1, 0x6

    iget-object v2, p0, Llgl;->f:Llgq;

    .line 595
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 597
    :cond_5
    iget-object v1, p0, Llgl;->g:Llgm;

    if-eqz v1, :cond_6

    .line 598
    const/4 v1, 0x7

    iget-object v2, p0, Llgl;->g:Llgm;

    .line 599
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 601
    :cond_6
    return v0
.end method
