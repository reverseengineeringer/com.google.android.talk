.class public final Llhm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llhm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llhl;

.field public b:Llhn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 590
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1595
    iput-object v0, p0, Llhm;->a:Llhl;

    .line 1596
    iput-object v0, p0, Llhm;->b:Llhn;

    .line 1597
    iput-object v0, p0, Llhm;->eD:Llyd;

    .line 1598
    const/4 v0, -0x1

    iput v0, p0, Llhm;->eE:I

    .line 592
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1633
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1634
    sparse-switch v0, :sswitch_data_0

    .line 1638
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1639
    :sswitch_0
    return-object p0

    .line 1644
    :sswitch_1
    iget-object v0, p0, Llhm;->a:Llhl;

    if-nez v0, :cond_1

    .line 1645
    new-instance v0, Llhl;

    invoke-direct {v0}, Llhl;-><init>()V

    iput-object v0, p0, Llhm;->a:Llhl;

    .line 1647
    :cond_1
    iget-object v0, p0, Llhm;->a:Llhl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1651
    :sswitch_2
    iget-object v0, p0, Llhm;->b:Llhn;

    if-nez v0, :cond_2

    .line 1652
    new-instance v0, Llhn;

    invoke-direct {v0}, Llhn;-><init>()V

    iput-object v0, p0, Llhm;->b:Llhn;

    .line 1654
    :cond_2
    iget-object v0, p0, Llhm;->b:Llhn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1634
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
    .line 605
    iget-object v0, p0, Llhm;->a:Llhl;

    if-eqz v0, :cond_0

    .line 606
    const/4 v0, 0x1

    iget-object v1, p0, Llhm;->a:Llhl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 608
    :cond_0
    iget-object v0, p0, Llhm;->b:Llhn;

    if-eqz v0, :cond_1

    .line 609
    const/4 v0, 0x2

    iget-object v1, p0, Llhm;->b:Llhn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 611
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 612
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 616
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 617
    iget-object v1, p0, Llhm;->a:Llhl;

    if-eqz v1, :cond_0

    .line 618
    const/4 v1, 0x1

    iget-object v2, p0, Llhm;->a:Llhl;

    .line 619
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 621
    :cond_0
    iget-object v1, p0, Llhm;->b:Llhn;

    if-eqz v1, :cond_1

    .line 622
    const/4 v1, 0x2

    iget-object v2, p0, Llhm;->b:Llhn;

    .line 623
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 625
    :cond_1
    return v0
.end method
