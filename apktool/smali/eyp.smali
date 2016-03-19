.class public final Leyp;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<",
        "Lczb;",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 17
    if-eqz p1, :cond_0

    instance-of v0, p1, Lczb;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 26
    :goto_0
    return v0

    .line 20
    :cond_1
    check-cast p1, Lczb;

    .line 21
    invoke-virtual {p0}, Leyp;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczb;

    .line 22
    invoke-virtual {p1, v0}, Lczb;->a(Lczb;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 26
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 31
    if-eqz p1, :cond_0

    instance-of v0, p1, Lczb;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 40
    :goto_0
    return-object v0

    .line 34
    :cond_1
    check-cast p1, Lczb;

    .line 35
    invoke-virtual {p0}, Leyp;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lczb;

    invoke-virtual {p1, v1}, Lczb;->a(Lczb;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 40
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 45
    if-eqz p1, :cond_0

    instance-of v0, p1, Lczb;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 60
    :goto_0
    return-object v0

    .line 48
    :cond_1
    check-cast p1, Lczb;

    .line 50
    invoke-virtual {p0}, Leyp;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczb;

    .line 52
    invoke-virtual {p1, v0}, Lczb;->a(Lczb;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    :goto_1
    if-eqz v0, :cond_3

    .line 58
    invoke-super {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 60
    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
