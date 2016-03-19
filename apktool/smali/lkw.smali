.class public final Llkw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llkw;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile h:[Llkw;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Llky;

.field public d:Llkz;

.field public e:Llla;

.field public f:Lllb;

.field public g:Llkx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3524
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4529
    iput-object v0, p0, Llkw;->a:Ljava/lang/Integer;

    .line 4530
    iput-object v0, p0, Llkw;->b:Ljava/lang/String;

    .line 4531
    iput-object v0, p0, Llkw;->c:Llky;

    .line 4532
    iput-object v0, p0, Llkw;->d:Llkz;

    .line 4533
    iput-object v0, p0, Llkw;->e:Llla;

    .line 4534
    iput-object v0, p0, Llkw;->f:Lllb;

    .line 4535
    iput-object v0, p0, Llkw;->g:Llkx;

    .line 4536
    iput-object v0, p0, Llkw;->eD:Llyd;

    .line 4537
    const/4 v0, -0x1

    iput v0, p0, Llkw;->eE:I

    .line 3526
    return-void
.end method

.method public static d()[Llkw;
    .locals 2

    .prologue
    .line 3490
    sget-object v0, Llkw;->h:[Llkw;

    if-nez v0, :cond_1

    .line 3491
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 3493
    :try_start_0
    sget-object v0, Llkw;->h:[Llkw;

    if-nez v0, :cond_0

    .line 3494
    const/4 v0, 0x0

    new-array v0, v0, [Llkw;

    sput-object v0, Llkw;->h:[Llkw;

    .line 3496
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3498
    :cond_1
    sget-object v0, Llkw;->h:[Llkw;

    return-object v0

    .line 3496
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
    .line 4607
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4608
    sparse-switch v0, :sswitch_data_0

    .line 4612
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4613
    :sswitch_0
    return-object p0

    .line 4618
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 4619
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4634
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llkw;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 4640
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llkw;->b:Ljava/lang/String;

    goto :goto_0

    .line 4644
    :sswitch_3
    iget-object v0, p0, Llkw;->c:Llky;

    if-nez v0, :cond_1

    .line 4645
    new-instance v0, Llky;

    invoke-direct {v0}, Llky;-><init>()V

    iput-object v0, p0, Llkw;->c:Llky;

    .line 4647
    :cond_1
    iget-object v0, p0, Llkw;->c:Llky;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4651
    :sswitch_4
    iget-object v0, p0, Llkw;->d:Llkz;

    if-nez v0, :cond_2

    .line 4652
    new-instance v0, Llkz;

    invoke-direct {v0}, Llkz;-><init>()V

    iput-object v0, p0, Llkw;->d:Llkz;

    .line 4654
    :cond_2
    iget-object v0, p0, Llkw;->d:Llkz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4658
    :sswitch_5
    iget-object v0, p0, Llkw;->e:Llla;

    if-nez v0, :cond_3

    .line 4659
    new-instance v0, Llla;

    invoke-direct {v0}, Llla;-><init>()V

    iput-object v0, p0, Llkw;->e:Llla;

    .line 4661
    :cond_3
    iget-object v0, p0, Llkw;->e:Llla;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4665
    :sswitch_6
    iget-object v0, p0, Llkw;->f:Lllb;

    if-nez v0, :cond_4

    .line 4666
    new-instance v0, Lllb;

    invoke-direct {v0}, Lllb;-><init>()V

    iput-object v0, p0, Llkw;->f:Lllb;

    .line 4668
    :cond_4
    iget-object v0, p0, Llkw;->f:Lllb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4672
    :sswitch_7
    iget-object v0, p0, Llkw;->g:Llkx;

    if-nez v0, :cond_5

    .line 4673
    new-instance v0, Llkx;

    invoke-direct {v0}, Llkx;-><init>()V

    iput-object v0, p0, Llkw;->g:Llkx;

    .line 4675
    :cond_5
    iget-object v0, p0, Llkw;->g:Llkx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4608
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

    .line 4619
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
    .line 3544
    iget-object v0, p0, Llkw;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 3545
    const/4 v0, 0x1

    iget-object v1, p0, Llkw;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3547
    :cond_0
    iget-object v0, p0, Llkw;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3548
    const/4 v0, 0x2

    iget-object v1, p0, Llkw;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3550
    :cond_1
    iget-object v0, p0, Llkw;->c:Llky;

    if-eqz v0, :cond_2

    .line 3551
    const/4 v0, 0x3

    iget-object v1, p0, Llkw;->c:Llky;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3553
    :cond_2
    iget-object v0, p0, Llkw;->d:Llkz;

    if-eqz v0, :cond_3

    .line 3554
    const/4 v0, 0x4

    iget-object v1, p0, Llkw;->d:Llkz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3556
    :cond_3
    iget-object v0, p0, Llkw;->e:Llla;

    if-eqz v0, :cond_4

    .line 3557
    const/4 v0, 0x5

    iget-object v1, p0, Llkw;->e:Llla;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3559
    :cond_4
    iget-object v0, p0, Llkw;->f:Lllb;

    if-eqz v0, :cond_5

    .line 3560
    const/4 v0, 0x6

    iget-object v1, p0, Llkw;->f:Lllb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3562
    :cond_5
    iget-object v0, p0, Llkw;->g:Llkx;

    if-eqz v0, :cond_6

    .line 3563
    const/4 v0, 0x7

    iget-object v1, p0, Llkw;->g:Llkx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3565
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3566
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3570
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3571
    iget-object v1, p0, Llkw;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3572
    const/4 v1, 0x1

    iget-object v2, p0, Llkw;->a:Ljava/lang/Integer;

    .line 3573
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3575
    :cond_0
    iget-object v1, p0, Llkw;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3576
    const/4 v1, 0x2

    iget-object v2, p0, Llkw;->b:Ljava/lang/String;

    .line 3577
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3579
    :cond_1
    iget-object v1, p0, Llkw;->c:Llky;

    if-eqz v1, :cond_2

    .line 3580
    const/4 v1, 0x3

    iget-object v2, p0, Llkw;->c:Llky;

    .line 3581
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3583
    :cond_2
    iget-object v1, p0, Llkw;->d:Llkz;

    if-eqz v1, :cond_3

    .line 3584
    const/4 v1, 0x4

    iget-object v2, p0, Llkw;->d:Llkz;

    .line 3585
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3587
    :cond_3
    iget-object v1, p0, Llkw;->e:Llla;

    if-eqz v1, :cond_4

    .line 3588
    const/4 v1, 0x5

    iget-object v2, p0, Llkw;->e:Llla;

    .line 3589
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3591
    :cond_4
    iget-object v1, p0, Llkw;->f:Lllb;

    if-eqz v1, :cond_5

    .line 3592
    const/4 v1, 0x6

    iget-object v2, p0, Llkw;->f:Lllb;

    .line 3593
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3595
    :cond_5
    iget-object v1, p0, Llkw;->g:Llkx;

    if-eqz v1, :cond_6

    .line 3596
    const/4 v1, 0x7

    iget-object v2, p0, Llkw;->g:Llkx;

    .line 3597
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3599
    :cond_6
    return v0
.end method
