.class public final Lmen;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmen;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 670
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1675
    iput-object v0, p0, Lmen;->a:Ljava/lang/Long;

    .line 1676
    iput-object v0, p0, Lmen;->b:Ljava/lang/String;

    .line 1677
    iput-object v0, p0, Lmen;->c:Ljava/lang/String;

    .line 1678
    iput-object v0, p0, Lmen;->eD:Llyd;

    .line 1679
    const/4 v0, -0x1

    iput v0, p0, Lmen;->eE:I

    .line 672
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 1721
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1722
    sparse-switch v0, :sswitch_data_0

    .line 1726
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1727
    :sswitch_0
    return-object p0

    .line 1732
    :sswitch_1
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lmen;->a:Ljava/lang/Long;

    goto :goto_0

    .line 1736
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmen;->b:Ljava/lang/String;

    goto :goto_0

    .line 1740
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmen;->c:Ljava/lang/String;

    goto :goto_0

    .line 1722
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 686
    iget-object v0, p0, Lmen;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 687
    const/4 v0, 0x1

    iget-object v1, p0, Lmen;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 689
    :cond_0
    iget-object v0, p0, Lmen;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 690
    const/4 v0, 0x2

    iget-object v1, p0, Lmen;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 692
    :cond_1
    iget-object v0, p0, Lmen;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 693
    const/4 v0, 0x3

    iget-object v1, p0, Lmen;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 695
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 696
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 700
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 701
    iget-object v1, p0, Lmen;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 702
    const/4 v1, 0x1

    iget-object v2, p0, Lmen;->a:Ljava/lang/Long;

    .line 703
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 705
    :cond_0
    iget-object v1, p0, Lmen;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 706
    const/4 v1, 0x2

    iget-object v2, p0, Lmen;->b:Ljava/lang/String;

    .line 707
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 709
    :cond_1
    iget-object v1, p0, Lmen;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 710
    const/4 v1, 0x3

    iget-object v2, p0, Lmen;->c:Ljava/lang/String;

    .line 711
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 713
    :cond_2
    return v0
.end method
