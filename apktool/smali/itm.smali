.class public final Litm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Litm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 522
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1527
    iput-object v0, p0, Litm;->a:Ljava/lang/Long;

    .line 1528
    iput-object v0, p0, Litm;->b:Ljava/lang/Long;

    .line 1529
    iput-object v0, p0, Litm;->c:Ljava/lang/Long;

    .line 1530
    iput-object v0, p0, Litm;->d:Ljava/lang/Long;

    .line 1531
    iput-object v0, p0, Litm;->eD:Llyd;

    .line 1532
    const/4 v0, -0x1

    iput v0, p0, Litm;->eE:I

    .line 524
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1581
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1582
    sparse-switch v0, :sswitch_data_0

    .line 1586
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1587
    :sswitch_0
    return-object p0

    .line 1592
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Litm;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1596
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Litm;->b:Ljava/lang/Long;

    goto :goto_0

    .line 1600
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Litm;->c:Ljava/lang/Long;

    goto :goto_0

    .line 1604
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Litm;->d:Ljava/lang/Long;

    goto :goto_0

    .line 1582
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 539
    iget-object v0, p0, Litm;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x1

    iget-object v1, p0, Litm;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 542
    :cond_0
    iget-object v0, p0, Litm;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 543
    const/4 v0, 0x2

    iget-object v1, p0, Litm;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 545
    :cond_1
    iget-object v0, p0, Litm;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 546
    const/4 v0, 0x3

    iget-object v1, p0, Litm;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 548
    :cond_2
    iget-object v0, p0, Litm;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 549
    const/4 v0, 0x4

    iget-object v1, p0, Litm;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 551
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 552
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 556
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 557
    iget-object v1, p0, Litm;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 558
    const/4 v1, 0x1

    iget-object v2, p0, Litm;->a:Ljava/lang/Long;

    .line 559
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 561
    :cond_0
    iget-object v1, p0, Litm;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 562
    const/4 v1, 0x2

    iget-object v2, p0, Litm;->b:Ljava/lang/Long;

    .line 563
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 565
    :cond_1
    iget-object v1, p0, Litm;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 566
    const/4 v1, 0x3

    iget-object v2, p0, Litm;->c:Ljava/lang/Long;

    .line 567
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 569
    :cond_2
    iget-object v1, p0, Litm;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 570
    const/4 v1, 0x4

    iget-object v2, p0, Litm;->d:Ljava/lang/Long;

    .line 571
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 573
    :cond_3
    return v0
.end method
