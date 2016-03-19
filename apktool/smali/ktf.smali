.class public final Lktf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lkwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkwt",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1130
    const-string v0, "expectedKeys"

    invoke-static {v1, v0}, Laal;->c(ILjava/lang/String;)I

    .line 1131
    new-instance v0, Lkww;

    invoke-direct {v0, v1}, Lkww;-><init>(I)V

    .line 156
    invoke-virtual {v0}, Lkxa;->b()Lkwz;

    move-result-object v0

    invoke-virtual {v0}, Lkwz;->a()Lkwt;

    move-result-object v0

    invoke-direct {p0, v0}, Lktf;-><init>(Lkwt;)V

    .line 157
    return-void
.end method

.method private constructor <init>(Lkwt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkwt",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lktf;->a:Lkwt;

    .line 161
    return-void
.end method


# virtual methods
.method public a()Lkte;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkte",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 264
    iget-object v0, p0, Lktf;->c:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lktf;->a:Lkwt;

    invoke-interface {v0}, Lkwt;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 266
    check-cast v0, Ljava/util/List;

    .line 267
    iget-object v2, p0, Lktf;->c:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lktf;->b:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 2130
    const-string v0, "expectedKeys"

    invoke-static {v3, v0}, Laal;->c(ILjava/lang/String;)I

    .line 2131
    new-instance v0, Lkww;

    invoke-direct {v0, v3}, Lkww;-><init>(I)V

    .line 272
    invoke-virtual {v0}, Lkxa;->b()Lkwz;

    move-result-object v0

    invoke-virtual {v0}, Lkwz;->a()Lkwt;

    move-result-object v1

    .line 273
    iget-object v0, p0, Lktf;->b:Ljava/util/Comparator;

    .line 274
    invoke-static {v0}, Lkxj;->a(Ljava/util/Comparator;)Lkxj;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lkxj;->d()Lkxj;

    move-result-object v0

    iget-object v2, p0, Lktf;->a:Lkwt;

    .line 276
    invoke-interface {v2}, Lkwt;->b()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkxj;->a(Ljava/lang/Iterable;)Lksf;

    move-result-object v0

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v1, v3, v0}, Lkwt;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 280
    :cond_1
    iput-object v1, p0, Lktf;->a:Lkwt;

    .line 282
    :cond_2
    iget-object v1, p0, Lktf;->a:Lkwt;

    .line 2299
    instance-of v0, v1, Lkte;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 2301
    check-cast v0, Lkte;

    .line 2302
    invoke-virtual {v0}, Lkte;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3248
    :cond_3
    :goto_2
    return-object v0

    .line 3239
    :cond_4
    invoke-interface {v1}, Lkwt;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4052
    sget-object v0, Lkrm;->a:Lkrm;

    goto :goto_2

    .line 3244
    :cond_5
    instance-of v0, v1, Lksl;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 3246
    check-cast v0, Lksl;

    .line 3247
    invoke-virtual {v0}, Lksl;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3252
    :cond_6
    new-instance v3, Lkso;

    .line 3253
    invoke-interface {v1}, Lkwt;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Lkso;-><init>(I)V

    .line 3254
    const/4 v0, 0x0

    .line 3257
    invoke-interface {v1}, Lkwt;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lksf;->a(Ljava/util/Collection;)Lksf;

    move-result-object v1

    .line 3259
    invoke-virtual {v1}, Lksf;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 3260
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lkso;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkso;

    .line 3261
    invoke-virtual {v1}, Lksf;->size()I

    move-result v0

    add-int/2addr v0, v2

    :goto_4
    move v2, v0

    .line 3263
    goto :goto_3

    .line 3265
    :cond_7
    new-instance v0, Lksl;

    invoke-virtual {v3}, Lkso;->a()Lksm;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lksl;-><init>(Lksm;I)V

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_4
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lktf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lktf",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {p1, p2}, Laal;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lktf;->a:Lkwt;

    invoke-interface {v0, p1, p2}, Lkwt;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    return-object p0
.end method
