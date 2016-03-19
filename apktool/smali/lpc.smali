.class public final Llpc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llpc;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Llpc;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 502
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1507
    iput-object v0, p0, Llpc;->a:Ljava/lang/Integer;

    .line 1508
    iput-object v0, p0, Llpc;->b:Ljava/lang/Integer;

    .line 1509
    iput-object v0, p0, Llpc;->c:Ljava/lang/Integer;

    .line 1510
    iput-object v0, p0, Llpc;->eD:Llyd;

    .line 1511
    const/4 v0, -0x1

    iput v0, p0, Llpc;->eE:I

    .line 504
    return-void
.end method

.method public static d()[Llpc;
    .locals 2

    .prologue
    .line 480
    sget-object v0, Llpc;->d:[Llpc;

    if-nez v0, :cond_1

    .line 481
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_0
    sget-object v0, Llpc;->d:[Llpc;

    if-nez v0, :cond_0

    .line 484
    const/4 v0, 0x0

    new-array v0, v0, [Llpc;

    sput-object v0, Llpc;->d:[Llpc;

    .line 486
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :cond_1
    sget-object v0, Llpc;->d:[Llpc;

    return-object v0

    .line 486
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
    .line 1553
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1554
    sparse-switch v0, :sswitch_data_0

    .line 1558
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1559
    :sswitch_0
    return-object p0

    .line 1564
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1565
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1568
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llpc;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1574
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1575
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1579
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llpc;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1585
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1586
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 1591
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llpc;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1554
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 1565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1575
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1586
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Llpc;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 519
    const/4 v0, 0x1

    iget-object v1, p0, Llpc;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 521
    :cond_0
    iget-object v0, p0, Llpc;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 522
    const/4 v0, 0x2

    iget-object v1, p0, Llpc;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 524
    :cond_1
    iget-object v0, p0, Llpc;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 525
    const/4 v0, 0x3

    iget-object v1, p0, Llpc;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 527
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 528
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 532
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 533
    iget-object v1, p0, Llpc;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 534
    const/4 v1, 0x1

    iget-object v2, p0, Llpc;->a:Ljava/lang/Integer;

    .line 535
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 537
    :cond_0
    iget-object v1, p0, Llpc;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 538
    const/4 v1, 0x2

    iget-object v2, p0, Llpc;->b:Ljava/lang/Integer;

    .line 539
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 541
    :cond_1
    iget-object v1, p0, Llpc;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 542
    const/4 v1, 0x3

    iget-object v2, p0, Llpc;->c:Ljava/lang/Integer;

    .line 543
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 545
    :cond_2
    return v0
.end method
