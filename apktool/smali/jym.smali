.class public final Ljym;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljym;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Ljyl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31588
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32593
    iput-object v0, p0, Ljym;->a:Ljxw;

    .line 32594
    iput-object v0, p0, Ljym;->b:Ljyl;

    .line 32595
    iput-object v0, p0, Ljym;->eD:Llyd;

    .line 32596
    const/4 v0, -0x1

    iput v0, p0, Ljym;->eE:I

    .line 31590
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 32631
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 32632
    sparse-switch v0, :sswitch_data_0

    .line 32636
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32637
    :sswitch_0
    return-object p0

    .line 32642
    :sswitch_1
    iget-object v0, p0, Ljym;->a:Ljxw;

    if-nez v0, :cond_1

    .line 32643
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Ljym;->a:Ljxw;

    .line 32645
    :cond_1
    iget-object v0, p0, Ljym;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 32649
    :sswitch_2
    iget-object v0, p0, Ljym;->b:Ljyl;

    if-nez v0, :cond_2

    .line 32650
    new-instance v0, Ljyl;

    invoke-direct {v0}, Ljyl;-><init>()V

    iput-object v0, p0, Ljym;->b:Ljyl;

    .line 32652
    :cond_2
    iget-object v0, p0, Ljym;->b:Ljyl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 32632
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
    .line 31603
    iget-object v0, p0, Ljym;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 31604
    const/4 v0, 0x1

    iget-object v1, p0, Ljym;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 31606
    :cond_0
    iget-object v0, p0, Ljym;->b:Ljyl;

    if-eqz v0, :cond_1

    .line 31607
    const/4 v0, 0x2

    iget-object v1, p0, Ljym;->b:Ljyl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 31609
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 31610
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 31614
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 31615
    iget-object v1, p0, Ljym;->a:Ljxw;

    if-eqz v1, :cond_0

    .line 31616
    const/4 v1, 0x1

    iget-object v2, p0, Ljym;->a:Ljxw;

    .line 31617
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31619
    :cond_0
    iget-object v1, p0, Ljym;->b:Ljyl;

    if-eqz v1, :cond_1

    .line 31620
    const/4 v1, 0x2

    iget-object v2, p0, Ljym;->b:Ljyl;

    .line 31621
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 31623
    :cond_1
    return v0
.end method
