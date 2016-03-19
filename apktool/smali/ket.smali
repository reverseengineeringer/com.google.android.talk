.class public final Lket;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lket;",
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

    .line 11846
    invoke-direct {p0}, Llyb;-><init>()V

    .line 12851
    iput-object v0, p0, Lket;->responseHeader:Lkdp;

    .line 12852
    iput-object v0, p0, Lket;->a:Ljava/lang/Long;

    .line 12853
    iput-object v0, p0, Lket;->eD:Llyd;

    .line 12854
    const/4 v0, -0x1

    iput v0, p0, Lket;->eE:I

    .line 11848
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 12889
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 12890
    sparse-switch v0, :sswitch_data_0

    .line 12894
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12895
    :sswitch_0
    return-object p0

    .line 12900
    :sswitch_1
    iget-object v0, p0, Lket;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 12901
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lket;->responseHeader:Lkdp;

    .line 12903
    :cond_1
    iget-object v0, p0, Lket;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12907
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lket;->a:Ljava/lang/Long;

    goto :goto_0

    .line 12890
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
    .line 11861
    iget-object v0, p0, Lket;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 11862
    const/4 v0, 0x1

    iget-object v1, p0, Lket;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11864
    :cond_0
    iget-object v0, p0, Lket;->a:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 11865
    const/4 v0, 0x2

    iget-object v1, p0, Lket;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 11867
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 11868
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 11872
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 11873
    iget-object v1, p0, Lket;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 11874
    const/4 v1, 0x1

    iget-object v2, p0, Lket;->responseHeader:Lkdp;

    .line 11875
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11877
    :cond_0
    iget-object v1, p0, Lket;->a:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 11878
    const/4 v1, 0x2

    iget-object v2, p0, Lket;->a:Ljava/lang/Long;

    .line 11879
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11881
    :cond_1
    return v0
.end method
