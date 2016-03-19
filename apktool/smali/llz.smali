.class public final Lllz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lllz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llmr;

.field public b:Llly;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1604
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2609
    iput-object v0, p0, Lllz;->a:Llmr;

    .line 2610
    iput-object v0, p0, Lllz;->b:Llly;

    .line 2611
    iput-object v0, p0, Lllz;->eD:Llyd;

    .line 2612
    const/4 v0, -0x1

    iput v0, p0, Lllz;->eE:I

    .line 1606
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2647
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2648
    sparse-switch v0, :sswitch_data_0

    .line 2652
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2653
    :sswitch_0
    return-object p0

    .line 2658
    :sswitch_1
    iget-object v0, p0, Lllz;->a:Llmr;

    if-nez v0, :cond_1

    .line 2659
    new-instance v0, Llmr;

    invoke-direct {v0}, Llmr;-><init>()V

    iput-object v0, p0, Lllz;->a:Llmr;

    .line 2661
    :cond_1
    iget-object v0, p0, Lllz;->a:Llmr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2665
    :sswitch_2
    iget-object v0, p0, Lllz;->b:Llly;

    if-nez v0, :cond_2

    .line 2666
    new-instance v0, Llly;

    invoke-direct {v0}, Llly;-><init>()V

    iput-object v0, p0, Lllz;->b:Llly;

    .line 2668
    :cond_2
    iget-object v0, p0, Lllz;->b:Llly;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2648
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
    .line 1619
    iget-object v0, p0, Lllz;->a:Llmr;

    if-eqz v0, :cond_0

    .line 1620
    const/4 v0, 0x1

    iget-object v1, p0, Lllz;->a:Llmr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1622
    :cond_0
    iget-object v0, p0, Lllz;->b:Llly;

    if-eqz v0, :cond_1

    .line 1623
    const/4 v0, 0x2

    iget-object v1, p0, Lllz;->b:Llly;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1625
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1626
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1630
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1631
    iget-object v1, p0, Lllz;->a:Llmr;

    if-eqz v1, :cond_0

    .line 1632
    const/4 v1, 0x1

    iget-object v2, p0, Lllz;->a:Llmr;

    .line 1633
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1635
    :cond_0
    iget-object v1, p0, Lllz;->b:Llly;

    if-eqz v1, :cond_1

    .line 1636
    const/4 v1, 0x2

    iget-object v2, p0, Lllz;->b:Llly;

    .line 1637
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1639
    :cond_1
    return v0
.end method
