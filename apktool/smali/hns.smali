.class final Lhns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhnj;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhnj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lhnj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lhns;->a:Ljava/util/List;

    .line 109
    return-void
.end method


# virtual methods
.method public a(Lmik;)V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lhns;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lhns;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhnj;

    invoke-interface {v0, p1}, Lhnj;->a(Lmik;)V

    .line 134
    :cond_0
    return-void

    .line 116
    :cond_1
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lhns;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhnj;

    .line 1025
    :try_start_0
    invoke-static {p1}, Lhnq;->a(Lmik;)Lmik;

    move-result-object v3

    .line 122
    invoke-interface {v0, v3}, Lhnj;->a(Lmik;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    if-nez v1, :cond_3

    :goto_1
    move-object v1, v0

    .line 129
    goto :goto_0

    .line 130
    :cond_2
    if-eqz v1, :cond_0

    .line 131
    throw v1

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
