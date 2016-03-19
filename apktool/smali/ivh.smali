.class public final Livh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Livh;",
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

    .line 387
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1392
    iput-object v0, p0, Livh;->a:Ljava/lang/Integer;

    .line 1393
    iput-object v0, p0, Livh;->eD:Llyd;

    .line 1394
    const/4 v0, -0x1

    iput v0, p0, Livh;->eE:I

    .line 389
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1422
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1423
    sparse-switch v0, :sswitch_data_0

    .line 1427
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1428
    :sswitch_0
    return-object p0

    .line 1433
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1434
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1437
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Livh;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1423
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    .line 1434
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Livh;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 402
    const/4 v0, 0x1

    iget-object v1, p0, Livh;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 404
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 405
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 409
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 410
    iget-object v1, p0, Livh;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 411
    const/4 v1, 0x1

    iget-object v2, p0, Livh;->a:Ljava/lang/Integer;

    .line 412
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 414
    :cond_0
    return v0
.end method
