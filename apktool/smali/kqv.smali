.class Lkqv;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final d:Lkqv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkqv;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lkqm;


# direct methods
.method constructor <init>(Lkqm;Ljava/lang/Object;Ljava/util/Collection;Lkqv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;",
            "Lkqv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 362
    iput-object p1, p0, Lkqv;->f:Lkqm;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 363
    iput-object p2, p0, Lkqv;->b:Ljava/lang/Object;

    .line 364
    iput-object p3, p0, Lkqv;->c:Ljava/util/Collection;

    .line 365
    iput-object p4, p0, Lkqv;->d:Lkqv;

    .line 366
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lkqv;->e:Ljava/util/Collection;

    .line 367
    return-void

    .line 366
    :cond_0
    invoke-virtual {p4}, Lkqv;->e()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lkqv;->d:Lkqv;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lkqv;->d:Lkqv;

    invoke-virtual {v0}, Lkqv;->a()V

    .line 379
    iget-object v0, p0, Lkqv;->d:Lkqv;

    invoke-virtual {v0}, Lkqv;->e()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lkqv;->e:Ljava/util/Collection;

    if-eq v0, v1, :cond_1

    .line 380
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 382
    :cond_0
    iget-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lkqv;->f:Lkqm;

    .line 1092
    iget-object v0, v0, Lkqm;->a:Ljava/util/Map;

    .line 383
    iget-object v1, p0, Lkqv;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 384
    if-eqz v0, :cond_1

    .line 385
    iput-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    .line 388
    :cond_1
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0}, Lkqv;->a()V

    .line 510
    iget-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 511
    iget-object v1, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 512
    if-eqz v1, :cond_0

    .line 513
    iget-object v2, p0, Lkqv;->f:Lkqm;

    invoke-static {v2}, Lkqm;->b(Lkqm;)I

    .line 514
    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lkqv;->d()V

    .line 518
    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 529
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    const/4 v0, 0x0

    .line 541
    :cond_0
    :goto_0
    return v0

    .line 532
    :cond_1
    invoke-virtual {p0}, Lkqv;->size()I

    move-result v1

    .line 533
    iget-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 534
    if-eqz v0, :cond_0

    .line 535
    iget-object v2, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 536
    iget-object v3, p0, Lkqv;->f:Lkqm;

    iget-object v4, p0, Lkqv;->f:Lkqm;

    .line 4092
    iget v4, v4, Lkqm;->b:I

    .line 536
    sub-int/2addr v2, v1

    add-int/2addr v2, v4

    .line 5092
    iput v2, v3, Lkqm;->b:I

    .line 537
    if-nez v1, :cond_0

    .line 538
    invoke-virtual {p0}, Lkqv;->d()V

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lkqv;->d:Lkqv;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lkqv;->d:Lkqv;

    invoke-virtual {v0}, Lkqv;->b()V

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lkqv;->f:Lkqm;

    .line 2092
    iget-object v0, v0, Lkqm;->a:Ljava/util/Map;

    .line 398
    iget-object v1, p0, Lkqv;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lkqv;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 558
    invoke-virtual {p0}, Lkqv;->size()I

    move-result v0

    .line 559
    if-nez v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v1, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 563
    iget-object v1, p0, Lkqv;->f:Lkqm;

    iget-object v2, p0, Lkqv;->f:Lkqm;

    .line 6092
    iget v2, v2, Lkqm;->b:I

    .line 563
    sub-int v0, v2, v0

    .line 7092
    iput v0, v1, Lkqm;->b:I

    .line 564
    invoke-virtual {p0}, Lkqv;->b()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 546
    invoke-virtual {p0}, Lkqv;->a()V

    .line 547
    iget-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 552
    invoke-virtual {p0}, Lkqv;->a()V

    .line 553
    iget-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method d()V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lkqv;->d:Lkqv;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lkqv;->d:Lkqv;

    invoke-virtual {v0}, Lkqv;->d()V

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lkqv;->f:Lkqm;

    .line 3092
    iget-object v0, v0, Lkqm;->a:Ljava/util/Map;

    .line 417
    iget-object v1, p0, Lkqv;->b:Ljava/lang/Object;

    iget-object v2, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 449
    iget-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 429
    if-ne p1, p0, :cond_0

    .line 430
    const/4 v0, 0x1

    .line 433
    :goto_0
    return v0

    .line 432
    :cond_0
    invoke-virtual {p0}, Lkqv;->a()V

    .line 433
    iget-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method f()Lkqv;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkqv;"
        }
    .end annotation

    .prologue
    .line 522
    iget-object v0, p0, Lkqv;->d:Lkqv;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 438
    invoke-virtual {p0}, Lkqv;->a()V

    .line 439
    iget-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p0}, Lkqv;->a()V

    .line 455
    new-instance v0, Lkqw;

    invoke-direct {v0, p0}, Lkqw;-><init>(Lkqv;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 569
    invoke-virtual {p0}, Lkqv;->a()V

    .line 570
    iget-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 571
    if-eqz v0, :cond_0

    .line 572
    iget-object v1, p0, Lkqv;->f:Lkqm;

    invoke-static {v1}, Lkqm;->a(Lkqm;)I

    .line 573
    invoke-virtual {p0}, Lkqv;->b()V

    .line 575
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 580
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    const/4 v0, 0x0

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 583
    :cond_1
    invoke-virtual {p0}, Lkqv;->size()I

    move-result v1

    .line 584
    iget-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 585
    if-eqz v0, :cond_0

    .line 586
    iget-object v2, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 587
    iget-object v3, p0, Lkqv;->f:Lkqm;

    iget-object v4, p0, Lkqv;->f:Lkqm;

    .line 8092
    iget v4, v4, Lkqm;->b:I

    .line 587
    sub-int v1, v2, v1

    add-int/2addr v1, v4

    .line 9092
    iput v1, v3, Lkqm;->b:I

    .line 588
    invoke-virtual {p0}, Lkqv;->b()V

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 595
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-virtual {p0}, Lkqv;->size()I

    move-result v0

    .line 597
    iget-object v1, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 598
    if-eqz v1, :cond_0

    .line 599
    iget-object v2, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 600
    iget-object v3, p0, Lkqv;->f:Lkqm;

    iget-object v4, p0, Lkqv;->f:Lkqm;

    .line 10092
    iget v4, v4, Lkqm;->b:I

    .line 600
    sub-int v0, v2, v0

    add-int/2addr v0, v4

    .line 11092
    iput v0, v3, Lkqm;->b:I

    .line 601
    invoke-virtual {p0}, Lkqv;->b()V

    .line 603
    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lkqv;->a()V

    .line 424
    iget-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Lkqv;->a()V

    .line 445
    iget-object v0, p0, Lkqv;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
