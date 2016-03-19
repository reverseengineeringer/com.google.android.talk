.class public final Lkfv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkfv;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Integer;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30684
    invoke-direct {p0}, Llyb;-><init>()V

    .line 31689
    iput-object v0, p0, Lkfv;->requestHeader:Lkdo;

    .line 31690
    iput-object v0, p0, Lkfv;->a:Ljxw;

    .line 31691
    iput-object v0, p0, Lkfv;->b:Ljava/lang/Long;

    .line 31692
    iput-object v0, p0, Lkfv;->c:Ljava/lang/Integer;

    .line 31693
    iput-object v0, p0, Lkfv;->eD:Llyd;

    .line 31694
    const/4 v0, -0x1

    iput v0, p0, Lkfv;->eE:I

    .line 30686
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 31743
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 31744
    sparse-switch v0, :sswitch_data_0

    .line 31748
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31749
    :sswitch_0
    return-object p0

    .line 31754
    :sswitch_1
    iget-object v0, p0, Lkfv;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 31755
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkfv;->requestHeader:Lkdo;

    .line 31757
    :cond_1
    iget-object v0, p0, Lkfv;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 31761
    :sswitch_2
    iget-object v0, p0, Lkfv;->a:Ljxw;

    if-nez v0, :cond_2

    .line 31762
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkfv;->a:Ljxw;

    .line 31764
    :cond_2
    iget-object v0, p0, Lkfv;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 31768
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkfv;->b:Ljava/lang/Long;

    goto :goto_0

    .line 31772
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 31773
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 31776
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkfv;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 31744
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 31773
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 30701
    iget-object v0, p0, Lkfv;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 30702
    const/4 v0, 0x1

    iget-object v1, p0, Lkfv;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 30704
    :cond_0
    iget-object v0, p0, Lkfv;->a:Ljxw;

    if-eqz v0, :cond_1

    .line 30705
    const/4 v0, 0x2

    iget-object v1, p0, Lkfv;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 30707
    :cond_1
    iget-object v0, p0, Lkfv;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 30708
    const/4 v0, 0x3

    iget-object v1, p0, Lkfv;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 30710
    :cond_2
    iget-object v0, p0, Lkfv;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 30711
    const/4 v0, 0x4

    iget-object v1, p0, Lkfv;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 30713
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 30714
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 30718
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 30719
    iget-object v1, p0, Lkfv;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 30720
    const/4 v1, 0x1

    iget-object v2, p0, Lkfv;->requestHeader:Lkdo;

    .line 30721
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30723
    :cond_0
    iget-object v1, p0, Lkfv;->a:Ljxw;

    if-eqz v1, :cond_1

    .line 30724
    const/4 v1, 0x2

    iget-object v2, p0, Lkfv;->a:Ljxw;

    .line 30725
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30727
    :cond_1
    iget-object v1, p0, Lkfv;->b:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 30728
    const/4 v1, 0x3

    iget-object v2, p0, Lkfv;->b:Ljava/lang/Long;

    .line 30729
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 30731
    :cond_2
    iget-object v1, p0, Lkfv;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 30732
    const/4 v1, 0x4

    iget-object v2, p0, Lkfv;->c:Ljava/lang/Integer;

    .line 30733
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 30735
    :cond_3
    return v0
.end method
