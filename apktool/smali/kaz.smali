.class public final Lkaz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkaz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19614
    invoke-direct {p0}, Llyb;-><init>()V

    .line 20619
    iput-object v0, p0, Lkaz;->a:Ljava/lang/Integer;

    .line 20620
    iput-object v0, p0, Lkaz;->eD:Llyd;

    .line 20621
    const/4 v0, -0x1

    iput v0, p0, Lkaz;->eE:I

    .line 19616
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 20649
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 20650
    sparse-switch v0, :sswitch_data_0

    .line 20654
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20655
    :sswitch_0
    return-object p0

    .line 20660
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 20661
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 20665
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkaz;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 20650
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 20661
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 19628
    iget-object v0, p0, Lkaz;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 19629
    const/4 v0, 0x1

    iget-object v1, p0, Lkaz;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 19631
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 19632
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 19636
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 19637
    iget-object v1, p0, Lkaz;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 19638
    const/4 v1, 0x1

    iget-object v2, p0, Lkaz;->a:Ljava/lang/Integer;

    .line 19639
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19641
    :cond_0
    return v0
.end method
