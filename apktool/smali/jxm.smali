.class public final Ljxm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljxm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1471
    iput-object v0, p0, Ljxm;->a:Ljava/lang/Integer;

    .line 1472
    iput-object v0, p0, Ljxm;->b:Ljava/lang/Integer;

    .line 1473
    iput-object v0, p0, Ljxm;->c:Ljava/lang/String;

    .line 1474
    iput-object v0, p0, Ljxm;->d:Ljava/lang/Long;

    .line 1475
    iput-object v0, p0, Ljxm;->e:Ljava/lang/String;

    .line 1476
    iput-object v0, p0, Ljxm;->f:Ljava/lang/String;

    .line 1477
    iput-object v0, p0, Ljxm;->eD:Llyd;

    .line 1478
    const/4 v0, -0x1

    iput v0, p0, Ljxm;->eE:I

    .line 468
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1541
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1542
    sparse-switch v0, :sswitch_data_0

    .line 1546
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1547
    :sswitch_0
    return-object p0

    .line 1552
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1553
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1598
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljxm;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1604
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1605
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 1610
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljxm;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 1616
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxm;->c:Ljava/lang/String;

    goto :goto_0

    .line 1620
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljxm;->d:Ljava/lang/Long;

    goto :goto_0

    .line 1624
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxm;->e:Ljava/lang/String;

    goto :goto_0

    .line 1628
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxm;->f:Ljava/lang/String;

    goto :goto_0

    .line 1542
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch

    .line 1553
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1605
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 485
    iget-object v0, p0, Ljxm;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 486
    const/4 v0, 0x1

    iget-object v1, p0, Ljxm;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 488
    :cond_0
    iget-object v0, p0, Ljxm;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 489
    const/4 v0, 0x2

    iget-object v1, p0, Ljxm;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 491
    :cond_1
    iget-object v0, p0, Ljxm;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 492
    const/4 v0, 0x3

    iget-object v1, p0, Ljxm;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 494
    :cond_2
    iget-object v0, p0, Ljxm;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 495
    const/4 v0, 0x4

    iget-object v1, p0, Ljxm;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 497
    :cond_3
    iget-object v0, p0, Ljxm;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 498
    const/4 v0, 0x5

    iget-object v1, p0, Ljxm;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 500
    :cond_4
    iget-object v0, p0, Ljxm;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 501
    const/4 v0, 0x6

    iget-object v1, p0, Ljxm;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 503
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 504
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 508
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 509
    iget-object v1, p0, Ljxm;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 510
    const/4 v1, 0x1

    iget-object v2, p0, Ljxm;->a:Ljava/lang/Integer;

    .line 511
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 513
    :cond_0
    iget-object v1, p0, Ljxm;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 514
    const/4 v1, 0x2

    iget-object v2, p0, Ljxm;->b:Ljava/lang/Integer;

    .line 515
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 517
    :cond_1
    iget-object v1, p0, Ljxm;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 518
    const/4 v1, 0x3

    iget-object v2, p0, Ljxm;->c:Ljava/lang/String;

    .line 519
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 521
    :cond_2
    iget-object v1, p0, Ljxm;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 522
    const/4 v1, 0x4

    iget-object v2, p0, Ljxm;->d:Ljava/lang/Long;

    .line 523
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 525
    :cond_3
    iget-object v1, p0, Ljxm;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 526
    const/4 v1, 0x5

    iget-object v2, p0, Ljxm;->e:Ljava/lang/String;

    .line 527
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 529
    :cond_4
    iget-object v1, p0, Ljxm;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 530
    const/4 v1, 0x6

    iget-object v2, p0, Ljxm;->f:Ljava/lang/String;

    .line 531
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 533
    :cond_5
    return v0
.end method
