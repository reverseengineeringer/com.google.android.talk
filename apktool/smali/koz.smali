.class public abstract Lkoz;
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
.field b:I

.field c:I

.field d:Lkpf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkpf",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lkqc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkqc;"
        }
    .end annotation
.end field

.field h:Lkqc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkqc;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 1

    .prologue
    .line 4290
    iput-object p1, p0, Lkoz;->i:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4291
    iget-object v0, p1, Lcom/google/common/cache/LocalCache;->d:[Lkpf;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkoz;->b:I

    .line 4292
    const/4 v0, -0x1

    iput v0, p0, Lkoz;->c:I

    .line 4293
    invoke-direct {p0}, Lkoz;->d()V

    .line 4294
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 4300
    const/4 v0, 0x0

    iput-object v0, p0, Lkoz;->g:Lkqc;

    .line 4302
    invoke-virtual {p0}, Lkoz;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4320
    :cond_0
    :goto_0
    return-void

    .line 4306
    :cond_1
    invoke-virtual {p0}, Lkoz;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4310
    :cond_2
    iget v0, p0, Lkoz;->b:I

    if-ltz v0, :cond_0

    .line 4311
    iget-object v0, p0, Lkoz;->i:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->d:[Lkpf;

    iget v1, p0, Lkoz;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lkoz;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lkoz;->d:Lkpf;

    .line 4312
    iget-object v0, p0, Lkoz;->d:Lkpf;

    iget v0, v0, Lkpf;->b:I

    if-eqz v0, :cond_2

    .line 4313
    iget-object v0, p0, Lkoz;->d:Lkpf;

    iget-object v0, v0, Lkpf;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lkoz;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4314
    iget-object v0, p0, Lkoz;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkoz;->c:I

    .line 4315
    invoke-virtual {p0}, Lkoz;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 4326
    iget-object v0, p0, Lkoz;->f:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 4327
    iget-object v0, p0, Lkoz;->f:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lkoz;->f:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    :goto_0
    iget-object v0, p0, Lkoz;->f:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 4328
    iget-object v0, p0, Lkoz;->f:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-virtual {p0, v0}, Lkoz;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4329
    const/4 v0, 0x1

    .line 4333
    :goto_1
    return v0

    .line 4327
    :cond_0
    iget-object v0, p0, Lkoz;->f:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lkoz;->f:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    goto :goto_0

    .line 4333
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Lcom/google/common/cache/LocalCache$ReferenceEntry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 4356
    :try_start_0
    iget-object v0, p0, Lkoz;->i:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->o:Lkoi;

    invoke-virtual {v0}, Lkoi;->a()J

    move-result-wide v0

    .line 4357
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 4358
    iget-object v3, p0, Lkoz;->i:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v3, p1, v0, v1}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v0

    .line 4359
    if-eqz v0, :cond_0

    .line 4360
    new-instance v1, Lkqc;

    iget-object v3, p0, Lkoz;->i:Lcom/google/common/cache/LocalCache;

    invoke-direct {v1, v3, v2, v0}, Lkqc;-><init>(Lcom/google/common/cache/LocalCache;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lkoz;->g:Lkqc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4367
    iget-object v0, p0, Lkoz;->d:Lkpf;

    invoke-virtual {v0}, Lkpf;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lkoz;->d:Lkpf;

    invoke-virtual {v0}, Lkpf;->b()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lkoz;->d:Lkpf;

    invoke-virtual {v1}, Lkpf;->b()V

    throw v0
.end method

.method b()Z
    .locals 3

    .prologue
    .line 4340
    :cond_0
    iget v0, p0, Lkoz;->c:I

    if-ltz v0, :cond_2

    .line 4341
    iget-object v0, p0, Lkoz;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lkoz;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lkoz;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    iput-object v0, p0, Lkoz;->f:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 4342
    iget-object v0, p0, Lkoz;->f:Lcom/google/common/cache/LocalCache$ReferenceEntry;

    invoke-virtual {p0, v0}, Lkoz;->a(Lcom/google/common/cache/LocalCache$ReferenceEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkoz;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4343
    :cond_1
    const/4 v0, 0x1

    .line 4347
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Lkqc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkqc;"
        }
    .end annotation

    .prologue
    .line 4377
    iget-object v0, p0, Lkoz;->g:Lkqc;

    if-nez v0, :cond_0

    .line 4378
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 4380
    :cond_0
    iget-object v0, p0, Lkoz;->g:Lkqc;

    iput-object v0, p0, Lkoz;->h:Lkqc;

    .line 4381
    invoke-direct {p0}, Lkoz;->d()V

    .line 4382
    iget-object v0, p0, Lkoz;->h:Lkqc;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 4373
    iget-object v0, p0, Lkoz;->g:Lkqc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 4387
    iget-object v0, p0, Lkoz;->h:Lkqc;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lfii;->b(Z)V

    .line 4388
    iget-object v0, p0, Lkoz;->i:Lcom/google/common/cache/LocalCache;

    iget-object v1, p0, Lkoz;->h:Lkqc;

    invoke-virtual {v1}, Lkqc;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4389
    const/4 v0, 0x0

    iput-object v0, p0, Lkoz;->h:Lkqc;

    .line 4390
    return-void

    .line 4387
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
