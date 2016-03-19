.class public final Lkkz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkkz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 435
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1440
    iput-object v0, p0, Lkkz;->a:Ljava/lang/Boolean;

    .line 1441
    iput-object v0, p0, Lkkz;->b:Ljava/lang/Integer;

    .line 1442
    iput-object v0, p0, Lkkz;->eD:Llyd;

    .line 1443
    const/4 v0, -0x1

    iput v0, p0, Lkkz;->eE:I

    .line 437
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2478
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2479
    sparse-switch v0, :sswitch_data_0

    .line 2483
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2484
    :sswitch_0
    return-object p0

    .line 2489
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkkz;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2493
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2494
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2499
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkkz;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 2479
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 2494
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lkkz;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x1

    iget-object v1, p0, Lkkz;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 453
    :cond_0
    iget-object v0, p0, Lkkz;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 454
    const/4 v0, 0x2

    iget-object v1, p0, Lkkz;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 456
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 457
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 461
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 462
    iget-object v1, p0, Lkkz;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 463
    const/4 v1, 0x1

    iget-object v2, p0, Lkkz;->a:Ljava/lang/Boolean;

    .line 464
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 464
    add-int/2addr v0, v1

    .line 466
    :cond_0
    iget-object v1, p0, Lkkz;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 467
    const/4 v1, 0x2

    iget-object v2, p0, Lkkz;->b:Ljava/lang/Integer;

    .line 468
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    :cond_1
    return v0
.end method
