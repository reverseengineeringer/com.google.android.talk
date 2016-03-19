.class public final Lkcg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkcg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljzr;

.field public b:Ljava/lang/Integer;

.field public c:[B

.field public d:Ljava/lang/Long;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14670
    invoke-direct {p0}, Llyb;-><init>()V

    .line 15675
    iput-object v0, p0, Lkcg;->requestHeader:Lkdo;

    .line 15676
    iput-object v0, p0, Lkcg;->a:Ljzr;

    .line 15677
    iput-object v0, p0, Lkcg;->b:Ljava/lang/Integer;

    .line 15678
    iput-object v0, p0, Lkcg;->c:[B

    .line 15679
    iput-object v0, p0, Lkcg;->d:Ljava/lang/Long;

    .line 15680
    iput-object v0, p0, Lkcg;->eD:Llyd;

    .line 15681
    const/4 v0, -0x1

    iput v0, p0, Lkcg;->eE:I

    .line 14672
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 15737
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 15738
    sparse-switch v0, :sswitch_data_0

    .line 15742
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15743
    :sswitch_0
    return-object p0

    .line 15748
    :sswitch_1
    iget-object v0, p0, Lkcg;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 15749
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkcg;->requestHeader:Lkdo;

    .line 15751
    :cond_1
    iget-object v0, p0, Lkcg;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 15755
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkcg;->c:[B

    goto :goto_0

    .line 15759
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 15760
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 15763
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkcg;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 15769
    :sswitch_4
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkcg;->d:Ljava/lang/Long;

    goto :goto_0

    .line 15773
    :sswitch_5
    iget-object v0, p0, Lkcg;->a:Ljzr;

    if-nez v0, :cond_2

    .line 15774
    new-instance v0, Ljzr;

    invoke-direct {v0}, Ljzr;-><init>()V

    iput-object v0, p0, Lkcg;->a:Ljzr;

    .line 15776
    :cond_2
    iget-object v0, p0, Lkcg;->a:Ljzr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 15738
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch

    .line 15760
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 14688
    iget-object v0, p0, Lkcg;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 14689
    const/4 v0, 0x1

    iget-object v1, p0, Lkcg;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 14691
    :cond_0
    iget-object v0, p0, Lkcg;->c:[B

    if-eqz v0, :cond_1

    .line 14692
    const/4 v0, 0x2

    iget-object v1, p0, Lkcg;->c:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 14694
    :cond_1
    iget-object v0, p0, Lkcg;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 14695
    const/4 v0, 0x3

    iget-object v1, p0, Lkcg;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 14697
    :cond_2
    iget-object v0, p0, Lkcg;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 14698
    const/4 v0, 0x4

    iget-object v1, p0, Lkcg;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 14700
    :cond_3
    iget-object v0, p0, Lkcg;->a:Ljzr;

    if-eqz v0, :cond_4

    .line 14701
    const/4 v0, 0x5

    iget-object v1, p0, Lkcg;->a:Ljzr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 14703
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 14704
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 14708
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 14709
    iget-object v1, p0, Lkcg;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 14710
    const/4 v1, 0x1

    iget-object v2, p0, Lkcg;->requestHeader:Lkdo;

    .line 14711
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14713
    :cond_0
    iget-object v1, p0, Lkcg;->c:[B

    if-eqz v1, :cond_1

    .line 14714
    const/4 v1, 0x2

    iget-object v2, p0, Lkcg;->c:[B

    .line 14715
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 14717
    :cond_1
    iget-object v1, p0, Lkcg;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 14718
    const/4 v1, 0x3

    iget-object v2, p0, Lkcg;->b:Ljava/lang/Integer;

    .line 14719
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14721
    :cond_2
    iget-object v1, p0, Lkcg;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 14722
    const/4 v1, 0x4

    iget-object v2, p0, Lkcg;->d:Ljava/lang/Long;

    .line 14723
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14725
    :cond_3
    iget-object v1, p0, Lkcg;->a:Ljzr;

    if-eqz v1, :cond_4

    .line 14726
    const/4 v1, 0x5

    iget-object v2, p0, Lkcg;->a:Ljzr;

    .line 14727
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14729
    :cond_4
    return v0
.end method
