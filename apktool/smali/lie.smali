.class public final Llie;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llie;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llid;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1568
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2573
    iput-object v0, p0, Llie;->a:Llid;

    .line 2574
    iput-object v0, p0, Llie;->eD:Llyd;

    .line 2575
    const/4 v0, -0x1

    iput v0, p0, Llie;->eE:I

    .line 1570
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2603
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2604
    sparse-switch v0, :sswitch_data_0

    .line 2608
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2609
    :sswitch_0
    return-object p0

    .line 2614
    :sswitch_1
    iget-object v0, p0, Llie;->a:Llid;

    if-nez v0, :cond_1

    .line 2615
    new-instance v0, Llid;

    invoke-direct {v0}, Llid;-><init>()V

    iput-object v0, p0, Llie;->a:Llid;

    .line 2617
    :cond_1
    iget-object v0, p0, Llie;->a:Llid;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2604
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
    .line 1582
    iget-object v0, p0, Llie;->a:Llid;

    if-eqz v0, :cond_0

    .line 1583
    const/4 v0, 0x1

    iget-object v1, p0, Llie;->a:Llid;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1585
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1586
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1590
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1591
    iget-object v1, p0, Llie;->a:Llid;

    if-eqz v1, :cond_0

    .line 1592
    const/4 v1, 0x1

    iget-object v2, p0, Llie;->a:Llid;

    .line 1593
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1595
    :cond_0
    return v0
.end method
