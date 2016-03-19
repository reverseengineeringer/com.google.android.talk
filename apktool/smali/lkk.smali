.class public final Llkk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llkk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Llkr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3467
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4472
    iput-object v0, p0, Llkk;->a:Ljava/lang/Boolean;

    .line 4473
    iput-object v0, p0, Llkk;->b:Llkr;

    .line 4474
    iput-object v0, p0, Llkk;->eD:Llyd;

    .line 4475
    const/4 v0, -0x1

    iput v0, p0, Llkk;->eE:I

    .line 3469
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 5510
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 5511
    sparse-switch v0, :sswitch_data_0

    .line 5515
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5516
    :sswitch_0
    return-object p0

    .line 5521
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Llkk;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 5525
    :sswitch_2
    iget-object v0, p0, Llkk;->b:Llkr;

    if-nez v0, :cond_1

    .line 5526
    new-instance v0, Llkr;

    invoke-direct {v0}, Llkr;-><init>()V

    iput-object v0, p0, Llkk;->b:Llkr;

    .line 5528
    :cond_1
    iget-object v0, p0, Llkk;->b:Llkr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 5511
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3482
    iget-object v0, p0, Llkk;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 3483
    const/4 v0, 0x1

    iget-object v1, p0, Llkk;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 3485
    :cond_0
    iget-object v0, p0, Llkk;->b:Llkr;

    if-eqz v0, :cond_1

    .line 3486
    const/4 v0, 0x2

    iget-object v1, p0, Llkk;->b:Llkr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 3488
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3489
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3493
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3494
    iget-object v1, p0, Llkk;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 3495
    const/4 v1, 0x1

    iget-object v2, p0, Llkk;->a:Ljava/lang/Boolean;

    .line 3496
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3496
    add-int/2addr v0, v1

    .line 3498
    :cond_0
    iget-object v1, p0, Llkk;->b:Llkr;

    if-eqz v1, :cond_1

    .line 3499
    const/4 v1, 0x2

    iget-object v2, p0, Llkk;->b:Llkr;

    .line 3500
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3502
    :cond_1
    return v0
.end method
