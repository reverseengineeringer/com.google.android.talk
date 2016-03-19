.class public final Lhnq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhnn;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhnn;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
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
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhnn;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lhnj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lhnq;->a:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lhnq;->b:Ljava/util/List;

    .line 34
    return-void
.end method

.method static a(Lmik;)Lmik;
    .locals 3

    .prologue
    .line 138
    invoke-static {p0}, Llyi;->a(Llyi;)[B

    move-result-object v0

    .line 140
    :try_start_0
    new-instance v1, Lmik;

    invoke-direct {v1}, Lmik;-><init>()V

    .line 1131
    array-length v2, v0

    invoke-static {v1, v0, v2}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 140
    check-cast v0, Lmik;
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 141
    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static newBuilder()Lhnr;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lhnr;

    .line 1059
    invoke-direct {v0}, Lhnr;-><init>()V

    .line 51
    return-object v0
.end method


# virtual methods
.method public a()Lhnj;
    .locals 3

    .prologue
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v0, p0, Lhnq;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhnn;

    .line 40
    invoke-interface {v0}, Lhnn;->a()Lhnj;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lhnq;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 44
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhnj;

    .line 46
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lhns;

    invoke-direct {v0, v1}, Lhns;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method
