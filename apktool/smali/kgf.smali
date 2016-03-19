.class public final Lkgf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkgf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 559
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1564
    iput-object v0, p0, Lkgf;->a:Ljava/lang/String;

    .line 1565
    iput-object v0, p0, Lkgf;->b:Ljava/lang/Long;

    .line 1566
    iput-object v0, p0, Lkgf;->c:Ljava/lang/String;

    .line 1567
    iput-object v0, p0, Lkgf;->d:Ljava/lang/String;

    .line 1568
    iput-object v0, p0, Lkgf;->eD:Llyd;

    .line 1569
    const/4 v0, -0x1

    iput v0, p0, Lkgf;->eE:I

    .line 561
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1618
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1619
    sparse-switch v0, :sswitch_data_0

    .line 1623
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1624
    :sswitch_0
    return-object p0

    .line 1629
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkgf;->a:Ljava/lang/String;

    goto :goto_0

    .line 1633
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkgf;->b:Ljava/lang/Long;

    goto :goto_0

    .line 1637
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkgf;->c:Ljava/lang/String;

    goto :goto_0

    .line 1641
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkgf;->d:Ljava/lang/String;

    goto :goto_0

    .line 1619
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 576
    iget-object v0, p0, Lkgf;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 577
    const/4 v0, 0x1

    iget-object v1, p0, Lkgf;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 579
    :cond_0
    iget-object v0, p0, Lkgf;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 580
    const/4 v0, 0x2

    iget-object v1, p0, Lkgf;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 582
    :cond_1
    iget-object v0, p0, Lkgf;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 583
    const/4 v0, 0x3

    iget-object v1, p0, Lkgf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 585
    :cond_2
    iget-object v0, p0, Lkgf;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 586
    const/4 v0, 0x4

    iget-object v1, p0, Lkgf;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 588
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 589
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 593
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 594
    iget-object v1, p0, Lkgf;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 595
    const/4 v1, 0x1

    iget-object v2, p0, Lkgf;->a:Ljava/lang/String;

    .line 596
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 598
    :cond_0
    iget-object v1, p0, Lkgf;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 599
    const/4 v1, 0x2

    iget-object v2, p0, Lkgf;->b:Ljava/lang/Long;

    .line 600
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 602
    :cond_1
    iget-object v1, p0, Lkgf;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 603
    const/4 v1, 0x3

    iget-object v2, p0, Lkgf;->c:Ljava/lang/String;

    .line 604
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 606
    :cond_2
    iget-object v1, p0, Lkgf;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 607
    const/4 v1, 0x4

    iget-object v2, p0, Lkgf;->d:Ljava/lang/String;

    .line 608
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 610
    :cond_3
    return v0
.end method
