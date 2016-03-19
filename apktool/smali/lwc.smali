.class public abstract Llwc;
.super Llvy;
.source "SourceFile"

# interfaces
.implements Llwr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Llwc",
        "<TMessageType;TBuilderType;>;BuilderType:",
        "Llwb",
        "<TMessageType;TBuilderType;>;>",
        "Llvy",
        "<TMessageType;TBuilderType;>;",
        "Llwr;"
    }
.end annotation


# instance fields
.field public d:Llvv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llvv",
            "<",
            "Llvx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 385
    invoke-direct {p0}, Llvy;-><init>()V

    .line 1068
    new-instance v0, Llvv;

    invoke-direct {v0}, Llvv;-><init>()V

    .line 395
    iput-object v0, p0, Llwc;->d:Llvv;

    return-void
.end method


# virtual methods
.method public a(Llwp;Llvp;Llvt;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Llwp;",
            ">(TMessageType;",
            "Llvp;",
            "Llvt;",
            "I)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2034
    and-int/lit8 v2, p4, 0x7

    .line 2039
    ushr-int/lit8 v3, p4, 0x3

    .line 421
    invoke-virtual {p3, p1, v3}, Llvt;->a(Llwp;I)Llvs;

    move-result-object v4

    .line 426
    if-eqz v4, :cond_1

    .line 428
    iget-object v5, v4, Llvs;->d:Llvx;

    .line 429
    invoke-virtual {v5}, Llvx;->b()Llxo;

    move-result-object v5

    .line 428
    invoke-static {v5, v0}, Llvv;->a(Llxo;Z)I

    move-result v5

    if-ne v2, v5, :cond_0

    move v2, v0

    .line 442
    :goto_0
    if-eqz v2, :cond_2

    .line 443
    invoke-virtual {p0, p4, p2}, Llwc;->a(ILlvp;)Z

    move-result v0

    .line 525
    :goto_1
    return v0

    .line 432
    :cond_0
    iget-object v5, v4, Llvs;->d:Llvx;

    iget-boolean v5, v5, Llvx;->d:Z

    if-eqz v5, :cond_1

    iget-object v5, v4, Llvs;->d:Llvx;

    iget-object v5, v5, Llvx;->c:Llxo;

    .line 433
    invoke-virtual {v5}, Llxo;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Llvs;->d:Llvx;

    .line 435
    invoke-virtual {v5}, Llvx;->b()Llxo;

    move-result-object v5

    .line 434
    invoke-static {v5, v1}, Llvv;->a(Llxo;Z)I

    move-result v5

    if-ne v2, v5, :cond_1

    move v2, v0

    move v0, v1

    .line 437
    goto :goto_0

    :cond_1
    move v2, v1

    .line 439
    goto :goto_0

    .line 446
    :cond_2
    if-eqz v0, :cond_6

    .line 447
    invoke-virtual {p2}, Llvp;->s()I

    move-result v0

    .line 448
    invoke-virtual {p2, v0}, Llvp;->b(I)I

    move-result v0

    .line 449
    iget-object v2, v4, Llvs;->d:Llvx;

    invoke-virtual {v2}, Llvx;->b()Llxo;

    move-result-object v2

    sget-object v3, Llxo;->n:Llxo;

    if-ne v2, v3, :cond_4

    .line 450
    :goto_2
    invoke-virtual {p2}, Llvp;->t()I

    move-result v2

    if-lez v2, :cond_5

    .line 451
    invoke-virtual {p2}, Llvp;->n()I

    move-result v2

    .line 452
    iget-object v3, v4, Llvs;->d:Llvx;

    .line 453
    invoke-virtual {v3}, Llvx;->f()Llwi;

    move-result-object v3

    invoke-virtual {v3, v2}, Llwi;->a(I)Llwh;

    move-result-object v2

    .line 454
    if-nez v2, :cond_3

    move v0, v1

    .line 457
    goto :goto_1

    .line 459
    :cond_3
    iget-object v3, p0, Llwc;->d:Llvv;

    iget-object v5, v4, Llvs;->d:Llvx;

    .line 460
    invoke-virtual {v4, v2}, Llvs;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 459
    invoke-virtual {v3, v5, v2}, Llvv;->b(Llvx;Ljava/lang/Object;)V

    goto :goto_2

    .line 463
    :cond_4
    :goto_3
    invoke-virtual {p2}, Llvp;->t()I

    move-result v2

    if-lez v2, :cond_5

    .line 464
    iget-object v2, v4, Llvs;->d:Llvx;

    .line 466
    invoke-virtual {v2}, Llvx;->b()Llxo;

    move-result-object v2

    .line 465
    invoke-static {p2, v2}, Llvv;->a(Llvp;Llxo;)Ljava/lang/Object;

    move-result-object v2

    .line 468
    iget-object v3, p0, Llwc;->d:Llvv;

    iget-object v5, v4, Llvs;->d:Llvx;

    invoke-virtual {v3, v5, v2}, Llvv;->b(Llvx;Ljava/lang/Object;)V

    goto :goto_3

    .line 471
    :cond_5
    invoke-virtual {p2, v0}, Llvp;->c(I)V

    :goto_4
    move v0, v1

    .line 525
    goto :goto_1

    .line 474
    :cond_6
    sget-object v0, Llvz;->a:[I

    iget-object v2, v4, Llvs;->d:Llvx;

    invoke-virtual {v2}, Llvx;->c()Llxt;

    move-result-object v2

    invoke-virtual {v2}, Llxt;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 510
    iget-object v0, v4, Llvs;->d:Llvx;

    .line 511
    invoke-virtual {v0}, Llvx;->b()Llxo;

    move-result-object v0

    .line 510
    invoke-static {p2, v0}, Llvv;->a(Llvp;Llxo;)Ljava/lang/Object;

    move-result-object v0

    .line 516
    :cond_7
    :goto_5
    iget-object v2, v4, Llvs;->d:Llvx;

    invoke-virtual {v2}, Llvx;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 517
    iget-object v2, p0, Llwc;->d:Llvv;

    iget-object v3, v4, Llvs;->d:Llvx;

    .line 518
    invoke-virtual {v4, v0}, Llvs;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 517
    invoke-virtual {v2, v3, v0}, Llvv;->b(Llvx;Ljava/lang/Object;)V

    goto :goto_4

    .line 476
    :pswitch_0
    const/4 v2, 0x0

    .line 477
    iget-object v0, v4, Llvs;->d:Llvx;

    invoke-virtual {v0}, Llvx;->d()Z

    move-result v0

    if-nez v0, :cond_b

    .line 478
    iget-object v0, p0, Llwc;->d:Llvv;

    iget-object v3, v4, Llvs;->d:Llvx;

    .line 479
    invoke-virtual {v0, v3}, Llvv;->a(Llvx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llwp;

    .line 480
    if-eqz v0, :cond_b

    .line 481
    invoke-interface {v0}, Llwp;->h()Llwq;

    move-result-object v0

    .line 484
    :goto_6
    if-nez v0, :cond_8

    .line 485
    invoke-virtual {v4}, Llvs;->b()Llwp;

    move-result-object v0

    .line 486
    invoke-interface {v0}, Llwp;->i()Llwq;

    move-result-object v0

    .line 488
    :cond_8
    iget-object v2, v4, Llvs;->d:Llvx;

    invoke-virtual {v2}, Llvx;->b()Llxo;

    move-result-object v2

    sget-object v3, Llxo;->j:Llxo;

    if-ne v2, v3, :cond_9

    .line 490
    invoke-virtual {v4}, Llvs;->a()I

    move-result v2

    invoke-virtual {p2, v2, v0, p3}, Llvp;->a(ILlwq;Llvt;)V

    .line 495
    :goto_7
    invoke-interface {v0}, Llwq;->i()Llwp;

    move-result-object v0

    goto :goto_5

    .line 493
    :cond_9
    invoke-virtual {p2, v0, p3}, Llvp;->a(Llwq;Llvt;)V

    goto :goto_7

    .line 499
    :pswitch_1
    invoke-virtual {p2}, Llvp;->n()I

    move-result v2

    .line 500
    iget-object v0, v4, Llvs;->d:Llvx;

    invoke-virtual {v0}, Llvx;->f()Llwi;

    move-result-object v0

    .line 501
    invoke-virtual {v0, v2}, Llwi;->a(I)Llwh;

    move-result-object v0

    .line 504
    if-nez v0, :cond_7

    .line 505
    invoke-virtual {p0, v3, v2}, Llwc;->a(II)V

    move v0, v1

    .line 506
    goto/16 :goto_1

    .line 520
    :cond_a
    iget-object v2, p0, Llwc;->d:Llvv;

    iget-object v3, v4, Llvs;->d:Llvx;

    .line 521
    invoke-virtual {v4, v0}, Llvs;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 520
    invoke-virtual {v2, v3, v0}, Llvv;->a(Llvx;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_b
    move-object v0, v2

    goto :goto_6

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 599
    invoke-super {p0}, Llvy;->e()V

    .line 601
    iget-object v0, p0, Llwc;->d:Llvv;

    invoke-virtual {v0}, Llvv;->a()V

    .line 602
    return-void
.end method

.method public synthetic h()Llwq;
    .locals 1

    .prologue
    .line 385
    invoke-super {p0}, Llvy;->g()Llwa;

    move-result-object v0

    return-object v0
.end method

.method public synthetic i()Llwq;
    .locals 1

    .prologue
    .line 385
    invoke-super {p0}, Llvy;->d()Llwa;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Llwc;->d:Llvv;

    invoke-virtual {v0}, Llvv;->e()Z

    move-result v0

    return v0
.end method

.method public k()Llwd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llwd;"
        }
    .end annotation

    .prologue
    .line 651
    new-instance v0, Llwd;

    .line 2610
    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Llwd;-><init>(Llwc;Z)V

    .line 651
    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Llwc;->d:Llvv;

    invoke-virtual {v0}, Llvv;->f()I

    move-result v0

    return v0
.end method
