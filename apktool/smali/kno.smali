.class public final Lkno;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lknp;

.field private c:Lknp;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lknp;

    .line 1388
    invoke-direct {v0}, Lknp;-><init>()V

    .line 140
    iput-object v0, p0, Lkno;->b:Lknp;

    .line 141
    iget-object v0, p0, Lkno;->b:Lknp;

    iput-object v0, p0, Lkno;->c:Lknp;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lkno;->d:Z

    .line 148
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lkno;->a:Ljava/lang/String;

    .line 149
    return-void
.end method

.method private a()Lknp;
    .locals 2

    .prologue
    .line 370
    new-instance v0, Lknp;

    .line 2388
    invoke-direct {v0}, Lknp;-><init>()V

    .line 371
    iget-object v1, p0, Lkno;->c:Lknp;

    iput-object v0, v1, Lknp;->c:Lknp;

    iput-object v0, p0, Lkno;->c:Lknp;

    .line 372
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Lkno;
    .locals 2

    .prologue
    .line 382
    invoke-direct {p0}, Lkno;->a()Lknp;

    move-result-object v1

    .line 383
    iput-object p2, v1, Lknp;->b:Ljava/lang/Object;

    .line 384
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lknp;->a:Ljava/lang/String;

    .line 385
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lkno;
    .locals 1

    .prologue
    .line 2376
    invoke-direct {p0}, Lkno;->a()Lknp;

    move-result-object v0

    .line 2377
    iput-object p1, v0, Lknp;->b:Ljava/lang/Object;

    .line 249
    return-object p0
.end method

.method public a(Ljava/lang/String;I)Lkno;
    .locals 1

    .prologue
    .line 227
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkno;->b(Ljava/lang/String;Ljava/lang/Object;)Lkno;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lkno;
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lkno;->b(Ljava/lang/String;Ljava/lang/Object;)Lkno;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Lkno;
    .locals 1

    .prologue
    .line 183
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkno;->b(Ljava/lang/String;Ljava/lang/Object;)Lkno;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 343
    iget-boolean v2, p0, Lkno;->d:Z

    .line 344
    const-string v1, ""

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, p0, Lkno;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 346
    iget-object v0, p0, Lkno;->b:Lknp;

    iget-object v0, v0, Lknp;->c:Lknp;

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 347
    :goto_0
    if-eqz v1, :cond_4

    .line 349
    iget-object v4, v1, Lknp;->b:Ljava/lang/Object;

    .line 350
    if-eqz v2, :cond_0

    if-eqz v4, :cond_2

    .line 351
    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v0, ", "

    .line 354
    iget-object v5, v1, Lknp;->a:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 355
    iget-object v5, v1, Lknp;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    :cond_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 358
    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    .line 359
    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_2
    :goto_1
    iget-object v1, v1, Lknp;->c:Lknp;

    goto :goto_0

    .line 362
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 366
    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
