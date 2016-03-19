.class public final Lhiv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lhks;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhiw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhks;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhiv;->c:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lhiv;->a:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lhiv;->b:Lhks;

    .line 50
    return-void
.end method

.method private c()Lhiw;
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lhbs;->a()V

    .line 71
    iget-object v0, p0, Lhiv;->b:Lhks;

    invoke-interface {v0}, Lhks;->l()Lhkv;

    move-result-object v0

    invoke-virtual {v0}, Lhkv;->a()Lhkt;

    move-result-object v0

    .line 72
    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    .line 73
    :goto_0
    iget-object v0, p0, Lhiv;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhiw;

    .line 74
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lhiw;

    invoke-direct {v0, p0}, Lhiw;-><init>(Lhiv;)V

    .line 76
    iget-object v2, p0, Lhiv;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    return-object v0

    .line 72
    :cond_1
    invoke-virtual {v0}, Lhkt;->n()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method a()Lfgr;
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lhiv;->b:Lhks;

    invoke-interface {v0}, Lhks;->l()Lhkv;

    move-result-object v0

    invoke-virtual {v0}, Lhkv;->a()Lhkt;

    move-result-object v0

    .line 55
    new-instance v1, Lfgr;

    iget-object v2, p0, Lhiv;->a:Landroid/content/Context;

    const-string v3, "HANGOUT_LOG_REQUEST"

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lfgr;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lhkt;->n()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lhbs;->a()V

    .line 88
    invoke-direct {p0}, Lhiv;->c()Lhiw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhiw;->b(I)V

    .line 89
    return-void
.end method

.method public a(JII)V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lhbs;->a()V

    .line 98
    invoke-direct {p0}, Lhiv;->c()Lhiw;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lhiw;->a(JII)V

    .line 99
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lhiv;->c:Ljava/util/Map;

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

    check-cast v0, Lhiw;

    .line 62
    invoke-virtual {v0}, Lhiw;->a()V

    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method
