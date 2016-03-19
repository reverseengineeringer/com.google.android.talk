.class public final Llkg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llkg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llkh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1496
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2501
    iput-object v0, p0, Llkg;->a:Llkh;

    .line 2502
    iput-object v0, p0, Llkg;->eD:Llyd;

    .line 2503
    const/4 v0, -0x1

    iput v0, p0, Llkg;->eE:I

    .line 1498
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2531
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2532
    sparse-switch v0, :sswitch_data_0

    .line 2536
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2537
    :sswitch_0
    return-object p0

    .line 2542
    :sswitch_1
    iget-object v0, p0, Llkg;->a:Llkh;

    if-nez v0, :cond_1

    .line 2543
    new-instance v0, Llkh;

    invoke-direct {v0}, Llkh;-><init>()V

    iput-object v0, p0, Llkg;->a:Llkh;

    .line 2545
    :cond_1
    iget-object v0, p0, Llkg;->a:Llkh;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2532
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1510
    iget-object v0, p0, Llkg;->a:Llkh;

    if-eqz v0, :cond_0

    .line 1511
    const/4 v0, 0x2

    iget-object v1, p0, Llkg;->a:Llkh;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1513
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1514
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1518
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1519
    iget-object v1, p0, Llkg;->a:Llkh;

    if-eqz v1, :cond_0

    .line 1520
    const/4 v1, 0x2

    iget-object v2, p0, Llkg;->a:Llkh;

    .line 1521
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1523
    :cond_0
    return v0
.end method
