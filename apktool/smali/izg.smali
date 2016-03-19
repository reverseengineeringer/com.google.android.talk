.class public final Lizg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lizg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lmlm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 532
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1537
    iput-object v0, p0, Lizg;->a:Lmlm;

    .line 1538
    iput-object v0, p0, Lizg;->eD:Llyd;

    .line 1539
    const/4 v0, -0x1

    iput v0, p0, Lizg;->eE:I

    .line 534
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1567
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1568
    sparse-switch v0, :sswitch_data_0

    .line 1572
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1573
    :sswitch_0
    return-object p0

    .line 1578
    :sswitch_1
    iget-object v0, p0, Lizg;->a:Lmlm;

    if-nez v0, :cond_1

    .line 1579
    new-instance v0, Lmlm;

    invoke-direct {v0}, Lmlm;-><init>()V

    iput-object v0, p0, Lizg;->a:Lmlm;

    .line 1581
    :cond_1
    iget-object v0, p0, Lizg;->a:Lmlm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1568
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
    .line 546
    iget-object v0, p0, Lizg;->a:Lmlm;

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x1

    iget-object v1, p0, Lizg;->a:Lmlm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 549
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 550
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 554
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 555
    iget-object v1, p0, Lizg;->a:Lmlm;

    if-eqz v1, :cond_0

    .line 556
    const/4 v1, 0x1

    iget-object v2, p0, Lizg;->a:Lmlm;

    .line 557
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_0
    return v0
.end method
