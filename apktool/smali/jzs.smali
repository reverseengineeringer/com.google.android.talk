.class public final Ljzs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljzt;

.field public b:Ljzu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3623
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4628
    iput-object v0, p0, Ljzs;->a:Ljzt;

    .line 4629
    iput-object v0, p0, Ljzs;->b:Ljzu;

    .line 4630
    iput-object v0, p0, Ljzs;->eD:Llyd;

    .line 4631
    const/4 v0, -0x1

    iput v0, p0, Ljzs;->eE:I

    .line 3625
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4666
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4667
    sparse-switch v0, :sswitch_data_0

    .line 4671
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4672
    :sswitch_0
    return-object p0

    .line 4677
    :sswitch_1
    iget-object v0, p0, Ljzs;->b:Ljzu;

    if-nez v0, :cond_1

    .line 4678
    new-instance v0, Ljzu;

    invoke-direct {v0}, Ljzu;-><init>()V

    iput-object v0, p0, Ljzs;->b:Ljzu;

    .line 4680
    :cond_1
    iget-object v0, p0, Ljzs;->b:Ljzu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4684
    :sswitch_2
    iget-object v0, p0, Ljzs;->a:Ljzt;

    if-nez v0, :cond_2

    .line 4685
    new-instance v0, Ljzt;

    invoke-direct {v0}, Ljzt;-><init>()V

    iput-object v0, p0, Ljzs;->a:Ljzt;

    .line 4687
    :cond_2
    iget-object v0, p0, Ljzs;->a:Ljzt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 4667
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
    .line 3638
    iget-object v0, p0, Ljzs;->b:Ljzu;

    if-eqz v0, :cond_0

    .line 3639
    const/4 v0, 0x1

    iget-object v1, p0, Ljzs;->b:Ljzu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3641
    :cond_0
    iget-object v0, p0, Ljzs;->a:Ljzt;

    if-eqz v0, :cond_1

    .line 3642
    const/4 v0, 0x2

    iget-object v1, p0, Ljzs;->a:Ljzt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3644
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3645
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3649
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3650
    iget-object v1, p0, Ljzs;->b:Ljzu;

    if-eqz v1, :cond_0

    .line 3651
    const/4 v1, 0x1

    iget-object v2, p0, Ljzs;->b:Ljzu;

    .line 3652
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3654
    :cond_0
    iget-object v1, p0, Ljzs;->a:Ljzt;

    if-eqz v1, :cond_1

    .line 3655
    const/4 v1, 0x2

    iget-object v2, p0, Ljzs;->a:Ljzt;

    .line 3656
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3658
    :cond_1
    return v0
.end method
