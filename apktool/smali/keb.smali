.class public final Lkeb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkeb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17556
    invoke-direct {p0}, Llyb;-><init>()V

    .line 18561
    iput-object v0, p0, Lkeb;->responseHeader:Lkdp;

    .line 18562
    iput-object v0, p0, Lkeb;->a:Ljava/lang/Integer;

    .line 18563
    iput-object v0, p0, Lkeb;->b:Ljava/lang/Long;

    .line 18564
    iput-object v0, p0, Lkeb;->c:Ljava/lang/Long;

    .line 18565
    iput-object v0, p0, Lkeb;->eD:Llyd;

    .line 18566
    const/4 v0, -0x1

    iput v0, p0, Lkeb;->eE:I

    .line 17558
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 18615
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 18616
    sparse-switch v0, :sswitch_data_0

    .line 18620
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18621
    :sswitch_0
    return-object p0

    .line 18626
    :sswitch_1
    iget-object v0, p0, Lkeb;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 18627
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkeb;->responseHeader:Lkdp;

    .line 18629
    :cond_1
    iget-object v0, p0, Lkeb;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 18633
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 18634
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 18636
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkeb;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 18642
    :sswitch_3
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkeb;->b:Ljava/lang/Long;

    goto :goto_0

    .line 18646
    :sswitch_4
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkeb;->c:Ljava/lang/Long;

    goto :goto_0

    .line 18616
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    .line 18634
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 17573
    iget-object v0, p0, Lkeb;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 17574
    const/4 v0, 0x1

    iget-object v1, p0, Lkeb;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 17576
    :cond_0
    iget-object v0, p0, Lkeb;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 17577
    const/4 v0, 0x2

    iget-object v1, p0, Lkeb;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 17579
    :cond_1
    iget-object v0, p0, Lkeb;->b:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 17580
    const/4 v0, 0x3

    iget-object v1, p0, Lkeb;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 17582
    :cond_2
    iget-object v0, p0, Lkeb;->c:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 17583
    const/4 v0, 0x4

    iget-object v1, p0, Lkeb;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 17585
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 17586
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 17590
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 17591
    iget-object v1, p0, Lkeb;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 17592
    const/4 v1, 0x1

    iget-object v2, p0, Lkeb;->responseHeader:Lkdp;

    .line 17593
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17595
    :cond_0
    iget-object v1, p0, Lkeb;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 17596
    const/4 v1, 0x2

    iget-object v2, p0, Lkeb;->a:Ljava/lang/Integer;

    .line 17597
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17599
    :cond_1
    iget-object v1, p0, Lkeb;->b:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 17600
    const/4 v1, 0x3

    iget-object v2, p0, Lkeb;->b:Ljava/lang/Long;

    .line 17601
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17603
    :cond_2
    iget-object v1, p0, Lkeb;->c:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 17604
    const/4 v1, 0x4

    iget-object v2, p0, Lkeb;->c:Ljava/lang/Long;

    .line 17605
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17607
    :cond_3
    return v0
.end method
