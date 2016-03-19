.class public final Ljuw;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljuw;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3471
    invoke-direct {p0}, Llyb;-><init>()V

    .line 4476
    iput-object v0, p0, Ljuw;->a:Ljava/lang/String;

    .line 4477
    iput-object v0, p0, Ljuw;->b:Ljava/lang/String;

    .line 4478
    iput-object v0, p0, Ljuw;->c:Ljava/lang/String;

    .line 4479
    iput-object v0, p0, Ljuw;->d:Ljava/lang/Integer;

    .line 4480
    iput-object v0, p0, Ljuw;->e:Ljava/lang/Integer;

    .line 4481
    iput-object v0, p0, Ljuw;->eD:Llyd;

    .line 4482
    const/4 v0, -0x1

    iput v0, p0, Ljuw;->eE:I

    .line 3473
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 4538
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 4539
    sparse-switch v0, :sswitch_data_0

    .line 4543
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4544
    :sswitch_0
    return-object p0

    .line 4549
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljuw;->a:Ljava/lang/String;

    goto :goto_0

    .line 4553
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljuw;->b:Ljava/lang/String;

    goto :goto_0

    .line 4557
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljuw;->c:Ljava/lang/String;

    goto :goto_0

    .line 4561
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljuw;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 4565
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljuw;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 4539
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 3489
    iget-object v0, p0, Ljuw;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3490
    const/4 v0, 0x1

    iget-object v1, p0, Ljuw;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3492
    :cond_0
    iget-object v0, p0, Ljuw;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3493
    const/4 v0, 0x2

    iget-object v1, p0, Ljuw;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3495
    :cond_1
    iget-object v0, p0, Ljuw;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3496
    const/4 v0, 0x3

    iget-object v1, p0, Ljuw;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 3498
    :cond_2
    iget-object v0, p0, Ljuw;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 3499
    const/4 v0, 0x4

    iget-object v1, p0, Ljuw;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3501
    :cond_3
    iget-object v0, p0, Ljuw;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 3502
    const/4 v0, 0x5

    iget-object v1, p0, Ljuw;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 3504
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 3505
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 3509
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 3510
    iget-object v1, p0, Ljuw;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3511
    const/4 v1, 0x1

    iget-object v2, p0, Ljuw;->a:Ljava/lang/String;

    .line 3512
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3514
    :cond_0
    iget-object v1, p0, Ljuw;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 3515
    const/4 v1, 0x2

    iget-object v2, p0, Ljuw;->b:Ljava/lang/String;

    .line 3516
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3518
    :cond_1
    iget-object v1, p0, Ljuw;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3519
    const/4 v1, 0x3

    iget-object v2, p0, Ljuw;->c:Ljava/lang/String;

    .line 3520
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3522
    :cond_2
    iget-object v1, p0, Ljuw;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 3523
    const/4 v1, 0x4

    iget-object v2, p0, Ljuw;->d:Ljava/lang/Integer;

    .line 3524
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3526
    :cond_3
    iget-object v1, p0, Ljuw;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 3527
    const/4 v1, 0x5

    iget-object v2, p0, Ljuw;->e:Ljava/lang/Integer;

    .line 3528
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3530
    :cond_4
    return v0
.end method
