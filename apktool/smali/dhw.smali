.class Ldhw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/CharSequence;

.field final d:Z

.field e:I

.field final synthetic f:Ldhy;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    sget v0, Ldhx;->b:I

    iput v0, p0, Ldhw;->a:I

    return-void
.end method

.method protected constructor <init>(Ldhu;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 2479
    invoke-direct {p0}, Ldhw;-><init>()V

    .line 2447
    const/4 v0, 0x0

    iput v0, p0, Ldhw;->e:I

    .line 3374
    iget-boolean v0, p1, Ldhu;->a:Z

    .line 2450
    iput-boolean v0, p0, Ldhw;->d:Z

    .line 2451
    iput-object p2, p0, Ldhw;->c:Ljava/lang/CharSequence;

    .line 2452
    return-void
.end method

.method constructor <init>(Ldhy;Ldhu;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 4396
    iput-object p1, p0, Ldhw;->f:Ldhy;

    invoke-direct {p0, p2, p3}, Ldhw;-><init>(Ldhu;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 6

    .prologue
    .line 2399
    iget-object v0, p0, Ldhw;->f:Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2402
    iget-object v0, p0, Ldhw;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v3, v0, v2

    move v0, p1

    :goto_0
    if-gt v0, v3, :cond_1

    .line 2403
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 2404
    iget-object v4, p0, Ldhw;->c:Ljava/lang/CharSequence;

    add-int v5, v1, v0

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget-object v5, p0, Ldhw;->f:Ldhy;

    iget-object v5, v5, Ldhy;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 2403
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2402
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2410
    :cond_1
    const/4 v0, -0x1

    :cond_2
    return v0
.end method

.method protected synthetic a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1439
    invoke-virtual {p0}, Ldhw;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)I
    .locals 1

    .prologue
    .line 2415
    iget-object v0, p0, Ldhw;->f:Ldhy;

    iget-object v0, v0, Ldhy;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 515
    sget v0, Ldhx;->d:I

    iput v0, p0, Ldhw;->a:I

    .line 516
    invoke-virtual {p0}, Ldhw;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldhw;->b:Ljava/lang/Object;

    .line 517
    iget v0, p0, Ldhw;->a:I

    sget v1, Ldhx;->c:I

    if-eq v0, v1, :cond_0

    .line 518
    sget v0, Ldhx;->a:I

    iput v0, p0, Ldhw;->a:I

    .line 519
    const/4 v0, 0x1

    .line 521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3456
    :cond_0
    iget v0, p0, Ldhw;->e:I

    if-eq v0, v3, :cond_3

    .line 3457
    iget v1, p0, Ldhw;->e:I

    .line 3460
    iget v0, p0, Ldhw;->e:I

    invoke-virtual {p0, v0}, Ldhw;->a(I)I

    move-result v0

    .line 3461
    if-ne v0, v3, :cond_2

    .line 3462
    iget-object v0, p0, Ldhw;->c:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3463
    iput v3, p0, Ldhw;->e:I

    .line 3469
    :goto_0
    iget-boolean v2, p0, Ldhw;->d:Z

    if-eqz v2, :cond_1

    if-eq v1, v0, :cond_0

    .line 3473
    :cond_1
    iget-object v2, p0, Ldhw;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3475
    :goto_1
    return-object v0

    .line 3466
    :cond_2
    invoke-virtual {p0, v0}, Ldhw;->b(I)I

    move-result v2

    iput v2, p0, Ldhw;->e:I

    goto :goto_0

    .line 3494
    :cond_3
    sget v0, Ldhx;->c:I

    iput v0, p0, Ldhw;->a:I

    .line 3475
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 500
    iget v0, p0, Ldhw;->a:I

    sget v1, Ldhx;->d:I

    if-ne v0, v1, :cond_0

    .line 501
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 504
    :cond_0
    sget-object v0, Ldhs;->a:[I

    iget v1, p0, Ldhw;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 511
    invoke-virtual {p0}, Ldhw;->b()Z

    move-result v0

    :goto_0
    return v0

    .line 506
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 508
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0}, Ldhw;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 529
    :cond_0
    sget v0, Ldhx;->b:I

    iput v0, p0, Ldhw;->a:I

    .line 530
    iget-object v0, p0, Ldhw;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 535
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
