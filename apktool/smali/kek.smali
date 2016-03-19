.class public final Lkek;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkek;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Lkcr;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9784
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10789
    iput-object v0, p0, Lkek;->a:Ljxw;

    .line 10790
    iput-object v0, p0, Lkek;->b:Lkcr;

    .line 10791
    iput-object v0, p0, Lkek;->c:Ljava/lang/Long;

    .line 10792
    iput-object v0, p0, Lkek;->d:Ljava/lang/Integer;

    .line 10793
    iput-object v0, p0, Lkek;->e:Ljava/lang/Integer;

    .line 10794
    iput-object v0, p0, Lkek;->eD:Llyd;

    .line 10795
    const/4 v0, -0x1

    iput v0, p0, Lkek;->eE:I

    .line 9786
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 10851
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10852
    sparse-switch v0, :sswitch_data_0

    .line 10856
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10857
    :sswitch_0
    return-object p0

    .line 10862
    :sswitch_1
    iget-object v0, p0, Lkek;->a:Ljxw;

    if-nez v0, :cond_1

    .line 10863
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkek;->a:Ljxw;

    .line 10865
    :cond_1
    iget-object v0, p0, Lkek;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10869
    :sswitch_2
    iget-object v0, p0, Lkek;->b:Lkcr;

    if-nez v0, :cond_2

    .line 10870
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Lkek;->b:Lkcr;

    .line 10872
    :cond_2
    iget-object v0, p0, Lkek;->b:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10876
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkek;->c:Ljava/lang/Long;

    goto :goto_0

    .line 10880
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 10881
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 10884
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkek;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 10890
    :sswitch_5
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkek;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 10852
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 10881
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 9802
    iget-object v0, p0, Lkek;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 9803
    const/4 v0, 0x1

    iget-object v1, p0, Lkek;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9805
    :cond_0
    iget-object v0, p0, Lkek;->b:Lkcr;

    if-eqz v0, :cond_1

    .line 9806
    const/4 v0, 0x2

    iget-object v1, p0, Lkek;->b:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9808
    :cond_1
    iget-object v0, p0, Lkek;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 9809
    const/4 v0, 0x3

    iget-object v1, p0, Lkek;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 9811
    :cond_2
    iget-object v0, p0, Lkek;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 9812
    const/4 v0, 0x4

    iget-object v1, p0, Lkek;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 9814
    :cond_3
    iget-object v0, p0, Lkek;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 9815
    const/4 v0, 0x5

    iget-object v1, p0, Lkek;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 9817
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9818
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 9822
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9823
    iget-object v1, p0, Lkek;->a:Ljxw;

    if-eqz v1, :cond_0

    .line 9824
    const/4 v1, 0x1

    iget-object v2, p0, Lkek;->a:Ljxw;

    .line 9825
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9827
    :cond_0
    iget-object v1, p0, Lkek;->b:Lkcr;

    if-eqz v1, :cond_1

    .line 9828
    const/4 v1, 0x2

    iget-object v2, p0, Lkek;->b:Lkcr;

    .line 9829
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9831
    :cond_1
    iget-object v1, p0, Lkek;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 9832
    const/4 v1, 0x3

    iget-object v2, p0, Lkek;->c:Ljava/lang/Long;

    .line 9833
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9835
    :cond_2
    iget-object v1, p0, Lkek;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 9836
    const/4 v1, 0x4

    iget-object v2, p0, Lkek;->d:Ljava/lang/Integer;

    .line 9837
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9839
    :cond_3
    iget-object v1, p0, Lkek;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 9840
    const/4 v1, 0x5

    iget-object v2, p0, Lkek;->e:Ljava/lang/Integer;

    .line 9841
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9843
    :cond_4
    return v0
.end method
