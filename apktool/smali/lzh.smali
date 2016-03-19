.class public final Llzh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llzh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llyz;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1594
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2599
    iput-object v0, p0, Llzh;->a:Llyz;

    .line 2600
    iput-object v0, p0, Llzh;->eD:Llyd;

    .line 2601
    const/4 v0, -0x1

    iput v0, p0, Llzh;->eE:I

    .line 1596
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2629
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2630
    sparse-switch v0, :sswitch_data_0

    .line 2634
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2635
    :sswitch_0
    return-object p0

    .line 2640
    :sswitch_1
    iget-object v0, p0, Llzh;->a:Llyz;

    if-nez v0, :cond_1

    .line 2641
    new-instance v0, Llyz;

    invoke-direct {v0}, Llyz;-><init>()V

    iput-object v0, p0, Llzh;->a:Llyz;

    .line 2643
    :cond_1
    iget-object v0, p0, Llzh;->a:Llyz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2630
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
    .line 1608
    iget-object v0, p0, Llzh;->a:Llyz;

    if-eqz v0, :cond_0

    .line 1609
    const/4 v0, 0x1

    iget-object v1, p0, Llzh;->a:Llyz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1611
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1612
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1616
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1617
    iget-object v1, p0, Llzh;->a:Llyz;

    if-eqz v1, :cond_0

    .line 1618
    const/4 v1, 0x1

    iget-object v2, p0, Llzh;->a:Llyz;

    .line 1619
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1621
    :cond_0
    return v0
.end method
