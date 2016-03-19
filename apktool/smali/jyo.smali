.class public final Ljyo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljyo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljyl;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31480
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32485
    iput-object v0, p0, Ljyo;->responseHeader:Lkdp;

    .line 32486
    iput-object v0, p0, Ljyo;->a:Ljyl;

    .line 32487
    iput-object v0, p0, Ljyo;->eD:Llyd;

    .line 32488
    const/4 v0, -0x1

    iput v0, p0, Ljyo;->eE:I

    .line 31482
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 32523
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 32524
    sparse-switch v0, :sswitch_data_0

    .line 32528
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32529
    :sswitch_0
    return-object p0

    .line 32534
    :sswitch_1
    iget-object v0, p0, Ljyo;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 32535
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Ljyo;->responseHeader:Lkdp;

    .line 32537
    :cond_1
    iget-object v0, p0, Ljyo;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 32541
    :sswitch_2
    iget-object v0, p0, Ljyo;->a:Ljyl;

    if-nez v0, :cond_2

    .line 32542
    new-instance v0, Ljyl;

    invoke-direct {v0}, Ljyl;-><init>()V

    iput-object v0, p0, Ljyo;->a:Ljyl;

    .line 32544
    :cond_2
    iget-object v0, p0, Ljyo;->a:Ljyl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 32524
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 31495
    iget-object v0, p0, Ljyo;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 31496
    const/4 v0, 0x1

    iget-object v1, p0, Ljyo;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 31498
    :cond_0
    iget-object v0, p0, Ljyo;->a:Ljyl;

    if-eqz v0, :cond_1

    .line 31499
    const/4 v0, 0x2

    iget-object v1, p0, Ljyo;->a:Ljyl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 31501
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 31502
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 31506
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 31507
    iget-object v1, p0, Ljyo;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 31508
    const/4 v1, 0x1

    iget-object v2, p0, Ljyo;->responseHeader:Lkdp;

    .line 31509
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31511
    :cond_0
    iget-object v1, p0, Ljyo;->a:Ljyl;

    if-eqz v1, :cond_1

    .line 31512
    const/4 v1, 0x2

    iget-object v2, p0, Ljyo;->a:Ljyl;

    .line 31513
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31515
    :cond_1
    return v0
.end method
