.class public final Llpz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llpz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llqd;

.field public b:Llqb;

.field public c:Llqc;

.field public d:Llpx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 584
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1589
    iput-object v0, p0, Llpz;->a:Llqd;

    .line 1590
    iput-object v0, p0, Llpz;->b:Llqb;

    .line 1591
    iput-object v0, p0, Llpz;->c:Llqc;

    .line 1592
    iput-object v0, p0, Llpz;->d:Llpx;

    .line 1593
    iput-object v0, p0, Llpz;->eD:Llyd;

    .line 1594
    const/4 v0, -0x1

    iput v0, p0, Llpz;->eE:I

    .line 586
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1643
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1644
    sparse-switch v0, :sswitch_data_0

    .line 1648
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1649
    :sswitch_0
    return-object p0

    .line 1654
    :sswitch_1
    iget-object v0, p0, Llpz;->a:Llqd;

    if-nez v0, :cond_1

    .line 1655
    new-instance v0, Llqd;

    invoke-direct {v0}, Llqd;-><init>()V

    iput-object v0, p0, Llpz;->a:Llqd;

    .line 1657
    :cond_1
    iget-object v0, p0, Llpz;->a:Llqd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1661
    :sswitch_2
    iget-object v0, p0, Llpz;->b:Llqb;

    if-nez v0, :cond_2

    .line 1662
    new-instance v0, Llqb;

    invoke-direct {v0}, Llqb;-><init>()V

    iput-object v0, p0, Llpz;->b:Llqb;

    .line 1664
    :cond_2
    iget-object v0, p0, Llpz;->b:Llqb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1668
    :sswitch_3
    iget-object v0, p0, Llpz;->c:Llqc;

    if-nez v0, :cond_3

    .line 1669
    new-instance v0, Llqc;

    invoke-direct {v0}, Llqc;-><init>()V

    iput-object v0, p0, Llpz;->c:Llqc;

    .line 1671
    :cond_3
    iget-object v0, p0, Llpz;->c:Llqc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1675
    :sswitch_4
    iget-object v0, p0, Llpz;->d:Llpx;

    if-nez v0, :cond_4

    .line 1676
    new-instance v0, Llpx;

    invoke-direct {v0}, Llpx;-><init>()V

    iput-object v0, p0, Llpz;->d:Llpx;

    .line 1678
    :cond_4
    iget-object v0, p0, Llpz;->d:Llpx;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1644
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Llpz;->a:Llqd;

    if-eqz v0, :cond_0

    .line 602
    const/4 v0, 0x1

    iget-object v1, p0, Llpz;->a:Llqd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 604
    :cond_0
    iget-object v0, p0, Llpz;->b:Llqb;

    if-eqz v0, :cond_1

    .line 605
    const/4 v0, 0x2

    iget-object v1, p0, Llpz;->b:Llqb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 607
    :cond_1
    iget-object v0, p0, Llpz;->c:Llqc;

    if-eqz v0, :cond_2

    .line 608
    const/4 v0, 0x3

    iget-object v1, p0, Llpz;->c:Llqc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 610
    :cond_2
    iget-object v0, p0, Llpz;->d:Llpx;

    if-eqz v0, :cond_3

    .line 611
    const/4 v0, 0x4

    iget-object v1, p0, Llpz;->d:Llpx;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 613
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 614
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 618
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 619
    iget-object v1, p0, Llpz;->a:Llqd;

    if-eqz v1, :cond_0

    .line 620
    const/4 v1, 0x1

    iget-object v2, p0, Llpz;->a:Llqd;

    .line 621
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 623
    :cond_0
    iget-object v1, p0, Llpz;->b:Llqb;

    if-eqz v1, :cond_1

    .line 624
    const/4 v1, 0x2

    iget-object v2, p0, Llpz;->b:Llqb;

    .line 625
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 627
    :cond_1
    iget-object v1, p0, Llpz;->c:Llqc;

    if-eqz v1, :cond_2

    .line 628
    const/4 v1, 0x3

    iget-object v2, p0, Llpz;->c:Llqc;

    .line 629
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 631
    :cond_2
    iget-object v1, p0, Llpz;->d:Llpx;

    if-eqz v1, :cond_3

    .line 632
    const/4 v1, 0x4

    iget-object v2, p0, Llpz;->d:Llpx;

    .line 633
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 635
    :cond_3
    return v0
.end method
