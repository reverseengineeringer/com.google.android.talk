.class public final Leyq;
.super Ljava/util/HashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Lczb;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 22
    if-eqz p1, :cond_0

    instance-of v0, p1, Lczb;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 31
    :goto_0
    return v0

    .line 25
    :cond_1
    check-cast p1, Lczb;

    .line 26
    invoke-virtual {p0}, Leyq;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczb;

    .line 27
    invoke-virtual {v0, p1}, Lczb;->a(Lczb;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 31
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 36
    if-eqz p1, :cond_0

    instance-of v0, p1, Lczb;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 50
    :goto_0
    return v0

    .line 39
    :cond_1
    check-cast p1, Lczb;

    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p0}, Leyq;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczb;

    .line 42
    invoke-virtual {p1, v0}, Lczb;->a(Lczb;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    :goto_1
    if-eqz v0, :cond_3

    .line 48
    invoke-super {p0, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 50
    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method
