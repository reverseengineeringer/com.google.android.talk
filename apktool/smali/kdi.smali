.class public final Lkdi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkdi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljzl;

.field public b:Ljxr;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/String;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8607
    invoke-direct {p0}, Llyb;-><init>()V

    .line 9612
    iput-object v0, p0, Lkdi;->responseHeader:Lkdp;

    .line 9613
    iput-object v0, p0, Lkdi;->a:Ljzl;

    .line 9614
    iput-object v0, p0, Lkdi;->b:Ljxr;

    .line 9615
    iput-object v0, p0, Lkdi;->c:Ljava/lang/Long;

    .line 9616
    iput-object v0, p0, Lkdi;->d:Ljava/lang/String;

    .line 9617
    iput-object v0, p0, Lkdi;->eD:Llyd;

    .line 9618
    const/4 v0, -0x1

    iput v0, p0, Lkdi;->eE:I

    .line 8609
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 9674
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 9675
    sparse-switch v0, :sswitch_data_0

    .line 9679
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9680
    :sswitch_0
    return-object p0

    .line 9685
    :sswitch_1
    iget-object v0, p0, Lkdi;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 9686
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkdi;->responseHeader:Lkdp;

    .line 9688
    :cond_1
    iget-object v0, p0, Lkdi;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9692
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkdi;->c:Ljava/lang/Long;

    goto :goto_0

    .line 9696
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkdi;->d:Ljava/lang/String;

    goto :goto_0

    .line 9700
    :sswitch_4
    iget-object v0, p0, Lkdi;->a:Ljzl;

    if-nez v0, :cond_2

    .line 9701
    new-instance v0, Ljzl;

    invoke-direct {v0}, Ljzl;-><init>()V

    iput-object v0, p0, Lkdi;->a:Ljzl;

    .line 9703
    :cond_2
    iget-object v0, p0, Lkdi;->a:Ljzl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9707
    :sswitch_5
    iget-object v0, p0, Lkdi;->b:Ljxr;

    if-nez v0, :cond_3

    .line 9708
    new-instance v0, Ljxr;

    invoke-direct {v0}, Ljxr;-><init>()V

    iput-object v0, p0, Lkdi;->b:Ljxr;

    .line 9710
    :cond_3
    iget-object v0, p0, Lkdi;->b:Ljxr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 9675
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 8625
    iget-object v0, p0, Lkdi;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 8626
    const/4 v0, 0x1

    iget-object v1, p0, Lkdi;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8628
    :cond_0
    iget-object v0, p0, Lkdi;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 8629
    const/4 v0, 0x2

    iget-object v1, p0, Lkdi;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 8631
    :cond_1
    iget-object v0, p0, Lkdi;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 8632
    const/4 v0, 0x3

    iget-object v1, p0, Lkdi;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 8634
    :cond_2
    iget-object v0, p0, Lkdi;->a:Ljzl;

    if-eqz v0, :cond_3

    .line 8635
    const/4 v0, 0x4

    iget-object v1, p0, Lkdi;->a:Ljzl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8637
    :cond_3
    iget-object v0, p0, Lkdi;->b:Ljxr;

    if-eqz v0, :cond_4

    .line 8638
    const/4 v0, 0x5

    iget-object v1, p0, Lkdi;->b:Ljxr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 8640
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 8641
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 8645
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 8646
    iget-object v1, p0, Lkdi;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 8647
    const/4 v1, 0x1

    iget-object v2, p0, Lkdi;->responseHeader:Lkdp;

    .line 8648
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8650
    :cond_0
    iget-object v1, p0, Lkdi;->c:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 8651
    const/4 v1, 0x2

    iget-object v2, p0, Lkdi;->c:Ljava/lang/Long;

    .line 8652
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8654
    :cond_1
    iget-object v1, p0, Lkdi;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8655
    const/4 v1, 0x3

    iget-object v2, p0, Lkdi;->d:Ljava/lang/String;

    .line 8656
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8658
    :cond_2
    iget-object v1, p0, Lkdi;->a:Ljzl;

    if-eqz v1, :cond_3

    .line 8659
    const/4 v1, 0x4

    iget-object v2, p0, Lkdi;->a:Ljzl;

    .line 8660
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8662
    :cond_3
    iget-object v1, p0, Lkdi;->b:Ljxr;

    if-eqz v1, :cond_4

    .line 8663
    const/4 v1, 0x5

    iget-object v2, p0, Lkdi;->b:Ljxr;

    .line 8664
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8666
    :cond_4
    return v0
.end method
