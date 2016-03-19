.class public final Lity;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lity;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 616
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1621
    iput-object v0, p0, Lity;->a:Ljava/lang/Long;

    .line 1622
    iput-object v0, p0, Lity;->b:Ljava/lang/String;

    .line 1623
    iput-object v0, p0, Lity;->c:Ljava/lang/Long;

    .line 1624
    iput-object v0, p0, Lity;->eD:Llyd;

    .line 1625
    const/4 v0, -0x1

    iput v0, p0, Lity;->eE:I

    .line 618
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1667
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1668
    sparse-switch v0, :sswitch_data_0

    .line 1672
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1673
    :sswitch_0
    return-object p0

    .line 1678
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lity;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1682
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lity;->b:Ljava/lang/String;

    goto :goto_0

    .line 1686
    :sswitch_3
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lity;->c:Ljava/lang/Long;

    goto :goto_0

    .line 1668
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 632
    iget-object v0, p0, Lity;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 633
    const/4 v0, 0x1

    iget-object v1, p0, Lity;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 635
    :cond_0
    iget-object v0, p0, Lity;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 636
    const/4 v0, 0x2

    iget-object v1, p0, Lity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 638
    :cond_1
    iget-object v0, p0, Lity;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 639
    const/4 v0, 0x3

    iget-object v1, p0, Lity;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 641
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 642
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 646
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 647
    iget-object v1, p0, Lity;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 648
    const/4 v1, 0x1

    iget-object v2, p0, Lity;->a:Ljava/lang/Long;

    .line 649
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 651
    :cond_0
    iget-object v1, p0, Lity;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 652
    const/4 v1, 0x2

    iget-object v2, p0, Lity;->b:Ljava/lang/String;

    .line 653
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 655
    :cond_1
    iget-object v1, p0, Lity;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 656
    const/4 v1, 0x3

    iget-object v2, p0, Lity;->c:Ljava/lang/Long;

    .line 657
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 659
    :cond_2
    return v0
.end method
