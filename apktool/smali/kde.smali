.class public final Lkde;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkde;",
        ">;"
    }
.end annotation


# instance fields
.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11623
    invoke-direct {p0}, Llyb;-><init>()V

    .line 12628
    iput-object v0, p0, Lkde;->responseHeader:Lkdp;

    .line 12629
    iput-object v0, p0, Lkde;->eD:Llyd;

    .line 12630
    const/4 v0, -0x1

    iput v0, p0, Lkde;->eE:I

    .line 11625
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 12658
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 12659
    sparse-switch v0, :sswitch_data_0

    .line 12663
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12664
    :sswitch_0
    return-object p0

    .line 12669
    :sswitch_1
    iget-object v0, p0, Lkde;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 12670
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkde;->responseHeader:Lkdp;

    .line 12672
    :cond_1
    iget-object v0, p0, Lkde;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12659
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 11637
    iget-object v0, p0, Lkde;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 11638
    const/4 v0, 0x1

    iget-object v1, p0, Lkde;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11640
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 11641
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 11645
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 11646
    iget-object v1, p0, Lkde;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 11647
    const/4 v1, 0x1

    iget-object v2, p0, Lkde;->responseHeader:Lkdp;

    .line 11648
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11650
    :cond_0
    return v0
.end method
