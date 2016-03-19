.class public final Llim;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llim;",
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

    .line 2525
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3530
    iput-object v0, p0, Llim;->a:Ljava/lang/Integer;

    .line 3531
    iput-object v0, p0, Llim;->eD:Llyd;

    .line 3532
    const/4 v0, -0x1

    iput v0, p0, Llim;->eE:I

    .line 2527
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3560
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3561
    sparse-switch v0, :sswitch_data_0

    .line 3565
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3566
    :sswitch_0
    return-object p0

    .line 3571
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3572
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3579
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Llim;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3561
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 3572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2539
    iget-object v0, p0, Llim;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2540
    const/4 v0, 0x1

    iget-object v1, p0, Llim;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2542
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2543
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2547
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2548
    iget-object v1, p0, Llim;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2549
    const/4 v1, 0x1

    iget-object v2, p0, Llim;->a:Ljava/lang/Integer;

    .line 2550
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2552
    :cond_0
    return v0
.end method
