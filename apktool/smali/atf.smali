.class final Latf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latm;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Latn;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Latf;->a:Ljava/util/Set;

    .line 14
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Latf;->b:Z

    .line 50
    iget-object v0, p0, Latf;->a:Ljava/util/Set;

    invoke-static {v0}, Lavq;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latn;

    .line 51
    invoke-interface {v0}, Latn;->s_()V

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method public a(Latn;)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Latf;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    iget-boolean v0, p0, Latf;->c:Z

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p1}, Latn;->h_()V

    .line 41
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-boolean v0, p0, Latf;->b:Z

    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p1}, Latn;->s_()V

    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p1}, Latn;->e()V

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Latf;->b:Z

    .line 57
    iget-object v0, p0, Latf;->a:Ljava/util/Set;

    invoke-static {v0}, Lavq;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latn;

    .line 58
    invoke-interface {v0}, Latn;->e()V

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public b(Latn;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Latf;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Latf;->c:Z

    .line 64
    iget-object v0, p0, Latf;->a:Ljava/util/Set;

    invoke-static {v0}, Lavq;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Latn;

    .line 65
    invoke-interface {v0}, Latn;->h_()V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method
