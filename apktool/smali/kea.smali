.class public final Lkea;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkea;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Boolean;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17404
    invoke-direct {p0}, Llyb;-><init>()V

    .line 18409
    iput-object v0, p0, Lkea;->requestHeader:Lkdo;

    .line 18410
    iput-object v0, p0, Lkea;->a:Ljava/lang/Boolean;

    .line 18411
    iput-object v0, p0, Lkea;->b:Ljava/lang/String;

    .line 18412
    iput-object v0, p0, Lkea;->c:Ljava/lang/Integer;

    .line 18413
    iput-object v0, p0, Lkea;->d:Ljava/lang/Boolean;

    .line 18414
    iput-object v0, p0, Lkea;->eD:Llyd;

    .line 18415
    const/4 v0, -0x1

    iput v0, p0, Lkea;->eE:I

    .line 17406
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 20471
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 20472
    sparse-switch v0, :sswitch_data_0

    .line 20476
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20477
    :sswitch_0
    return-object p0

    .line 20482
    :sswitch_1
    iget-object v0, p0, Lkea;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 20483
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkea;->requestHeader:Lkdo;

    .line 20485
    :cond_1
    iget-object v0, p0, Lkea;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 20489
    :sswitch_2
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkea;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 20493
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkea;->b:Ljava/lang/String;

    goto :goto_0

    .line 20497
    :sswitch_4
    invoke-virtual {p1}, Llxy;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkea;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 20501
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkea;->d:Ljava/lang/Boolean;

    goto :goto_0

    .line 20472
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 17422
    iget-object v0, p0, Lkea;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 17423
    const/4 v0, 0x1

    iget-object v1, p0, Lkea;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 17425
    :cond_0
    iget-object v0, p0, Lkea;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 17426
    const/4 v0, 0x2

    iget-object v1, p0, Lkea;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 17428
    :cond_1
    iget-object v0, p0, Lkea;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 17429
    const/4 v0, 0x3

    iget-object v1, p0, Lkea;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 17431
    :cond_2
    iget-object v0, p0, Lkea;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 17432
    const/4 v0, 0x4

    iget-object v1, p0, Lkea;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->c(II)V

    .line 17434
    :cond_3
    iget-object v0, p0, Lkea;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 17435
    const/4 v0, 0x5

    iget-object v1, p0, Lkea;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 17437
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 17438
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 17442
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 17443
    iget-object v1, p0, Lkea;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 17444
    const/4 v1, 0x1

    iget-object v2, p0, Lkea;->requestHeader:Lkdo;

    .line 17445
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17447
    :cond_0
    iget-object v1, p0, Lkea;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 17448
    const/4 v1, 0x2

    iget-object v2, p0, Lkea;->a:Ljava/lang/Boolean;

    .line 17449
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 17449
    add-int/2addr v0, v1

    .line 17451
    :cond_1
    iget-object v1, p0, Lkea;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 17452
    const/4 v1, 0x3

    iget-object v2, p0, Lkea;->b:Ljava/lang/String;

    .line 17453
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17455
    :cond_2
    iget-object v1, p0, Lkea;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 17456
    const/4 v1, 0x4

    iget-object v2, p0, Lkea;->c:Ljava/lang/Integer;

    .line 17457
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17459
    :cond_3
    iget-object v1, p0, Lkea;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 17460
    const/4 v1, 0x5

    iget-object v2, p0, Lkea;->d:Ljava/lang/Boolean;

    .line 17461
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 17461
    add-int/2addr v0, v1

    .line 17463
    :cond_4
    return v0
.end method
