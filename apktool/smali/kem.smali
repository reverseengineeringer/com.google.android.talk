.class public final Lkem;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkem;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9670
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10675
    iput-object v0, p0, Lkem;->responseHeader:Lkdp;

    .line 10676
    iput-object v0, p0, Lkem;->a:Ljava/lang/Long;

    .line 10677
    iput-object v0, p0, Lkem;->eD:Llyd;

    .line 10678
    const/4 v0, -0x1

    iput v0, p0, Lkem;->eE:I

    .line 9672
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 10713
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10714
    sparse-switch v0, :sswitch_data_0

    .line 10718
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10719
    :sswitch_0
    return-object p0

    .line 10724
    :sswitch_1
    iget-object v0, p0, Lkem;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 10725
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkem;->responseHeader:Lkdp;

    .line 10727
    :cond_1
    iget-object v0, p0, Lkem;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 10731
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkem;->a:Ljava/lang/Long;

    goto :goto_0

    .line 10714
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 9685
    iget-object v0, p0, Lkem;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 9686
    const/4 v0, 0x1

    iget-object v1, p0, Lkem;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 9688
    :cond_0
    iget-object v0, p0, Lkem;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 9689
    const/4 v0, 0x2

    iget-object v1, p0, Lkem;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 9691
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9692
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 9696
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9697
    iget-object v1, p0, Lkem;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 9698
    const/4 v1, 0x1

    iget-object v2, p0, Lkem;->responseHeader:Lkdp;

    .line 9699
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9701
    :cond_0
    iget-object v1, p0, Lkem;->a:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 9702
    const/4 v1, 0x2

    iget-object v2, p0, Lkem;->a:Ljava/lang/Long;

    .line 9703
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9705
    :cond_1
    return v0
.end method
