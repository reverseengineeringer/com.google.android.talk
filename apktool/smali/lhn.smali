.class public final Llhn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llhn;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lljg;

.field public b:Lljg;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1487
    iput-object v0, p0, Llhn;->a:Lljg;

    .line 1488
    iput-object v0, p0, Llhn;->b:Lljg;

    .line 1489
    iput-object v0, p0, Llhn;->eD:Llyd;

    .line 1490
    const/4 v0, -0x1

    iput v0, p0, Llhn;->eE:I

    .line 484
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1525
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1526
    sparse-switch v0, :sswitch_data_0

    .line 1530
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1531
    :sswitch_0
    return-object p0

    .line 1536
    :sswitch_1
    iget-object v0, p0, Llhn;->a:Lljg;

    if-nez v0, :cond_1

    .line 1537
    new-instance v0, Lljg;

    invoke-direct {v0}, Lljg;-><init>()V

    iput-object v0, p0, Llhn;->a:Lljg;

    .line 1539
    :cond_1
    iget-object v0, p0, Llhn;->a:Lljg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1543
    :sswitch_2
    iget-object v0, p0, Llhn;->b:Lljg;

    if-nez v0, :cond_2

    .line 1544
    new-instance v0, Lljg;

    invoke-direct {v0}, Lljg;-><init>()V

    iput-object v0, p0, Llhn;->b:Lljg;

    .line 1546
    :cond_2
    iget-object v0, p0, Llhn;->b:Lljg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1526
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
    .line 497
    iget-object v0, p0, Llhn;->a:Lljg;

    if-eqz v0, :cond_0

    .line 498
    const/4 v0, 0x1

    iget-object v1, p0, Llhn;->a:Lljg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 500
    :cond_0
    iget-object v0, p0, Llhn;->b:Lljg;

    if-eqz v0, :cond_1

    .line 501
    const/4 v0, 0x2

    iget-object v1, p0, Llhn;->b:Lljg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 503
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 504
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 508
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 509
    iget-object v1, p0, Llhn;->a:Lljg;

    if-eqz v1, :cond_0

    .line 510
    const/4 v1, 0x1

    iget-object v2, p0, Llhn;->a:Lljg;

    .line 511
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 513
    :cond_0
    iget-object v1, p0, Llhn;->b:Lljg;

    if-eqz v1, :cond_1

    .line 514
    const/4 v1, 0x2

    iget-object v2, p0, Llhn;->b:Lljg;

    .line 515
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 517
    :cond_1
    return v0
.end method
