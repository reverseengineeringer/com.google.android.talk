.class public final Ljzu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzu;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3413
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4418
    iput-object v0, p0, Ljzu;->a:Ljava/lang/String;

    .line 4419
    iput-object v0, p0, Ljzu;->b:Ljava/lang/String;

    .line 4420
    iput-object v0, p0, Ljzu;->c:Ljava/lang/Boolean;

    .line 4421
    iput-object v0, p0, Ljzu;->d:Ljava/lang/Boolean;

    .line 4422
    iput-object v0, p0, Ljzu;->eD:Llyd;

    .line 4423
    const/4 v0, -0x1

    iput v0, p0, Ljzu;->eE:I

    .line 3415
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 6472
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6473
    sparse-switch v0, :sswitch_data_0

    .line 6477
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6478
    :sswitch_0
    return-object p0

    .line 6483
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljzu;->b:Ljava/lang/String;

    goto :goto_0

    .line 6487
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljzu;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 6491
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljzu;->a:Ljava/lang/String;

    goto :goto_0

    .line 6495
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljzu;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 6473
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3430
    iget-object v0, p0, Ljzu;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3431
    const/4 v0, 0x1

    iget-object v1, p0, Ljzu;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3433
    :cond_0
    iget-object v0, p0, Ljzu;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 3434
    const/4 v0, 0x2

    iget-object v1, p0, Ljzu;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 3436
    :cond_1
    iget-object v0, p0, Ljzu;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3437
    const/4 v0, 0x3

    iget-object v1, p0, Ljzu;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3439
    :cond_2
    iget-object v0, p0, Ljzu;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 3440
    const/4 v0, 0x4

    iget-object v1, p0, Ljzu;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 3442
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3443
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3447
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3448
    iget-object v1, p0, Ljzu;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3449
    const/4 v1, 0x1

    iget-object v2, p0, Ljzu;->b:Ljava/lang/String;

    .line 3450
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3452
    :cond_0
    iget-object v1, p0, Ljzu;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 3453
    const/4 v1, 0x2

    iget-object v2, p0, Ljzu;->c:Ljava/lang/Boolean;

    .line 3454
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3454
    add-int/2addr v0, v1

    .line 3456
    :cond_1
    iget-object v1, p0, Ljzu;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3457
    const/4 v1, 0x3

    iget-object v2, p0, Ljzu;->a:Ljava/lang/String;

    .line 3458
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3460
    :cond_2
    iget-object v1, p0, Ljzu;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 3461
    const/4 v1, 0x4

    iget-object v2, p0, Ljzu;->d:Ljava/lang/Boolean;

    .line 3462
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 5620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3462
    add-int/2addr v0, v1

    .line 3464
    :cond_3
    return v0
.end method
