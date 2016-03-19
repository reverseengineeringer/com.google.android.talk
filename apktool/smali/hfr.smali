.class final Lhfr;
.super Lhbn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhbn;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhfo;


# direct methods
.method constructor <init>(Lhfo;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lhfr;->a:Lhfo;

    invoke-direct {p0}, Lhbn;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;Llyi;)V
    .locals 7

    .prologue
    .line 259
    check-cast p1, Lkhk;

    check-cast p2, Lkhk;

    .line 1263
    iget-object v0, p2, Lkhk;->b:Ljava/lang/String;

    iget-object v1, p0, Lhfr;->a:Lhfo;

    .line 2032
    iget-object v1, v1, Lhfo;->l:Lhfn;

    .line 1263
    invoke-virtual {v1}, Lhfn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lkhk;->h:[Lkhl;

    array-length v0, v0

    iget-object v1, p2, Lkhk;->h:[Lkhl;

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 1265
    iget-object v0, p0, Lhfr;->a:Lhfo;

    iget-object v0, v0, Lhfo;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhfn;

    .line 1266
    iget-object v3, p2, Lkhk;->h:[Lkhl;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 1267
    invoke-virtual {v0}, Lhfn;->b()Lhkx;

    move-result-object v6

    invoke-virtual {v6}, Lhkx;->h()Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lkhl;->a:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1268
    invoke-virtual {v0}, Lhfn;->e()V

    .line 1266
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    :cond_2
    return-void
.end method
