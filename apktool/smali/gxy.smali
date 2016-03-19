.class Lgxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lgxn;",
            "Lfif;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lgxo;",
            "Lfih;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    iput-object v0, p0, Lgxy;->a:Ljava/util/Map;

    .line 37
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    iput-object v0, p0, Lgxy;->b:Ljava/util/Map;

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lgxj;)Lfhw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Ljava/lang/Object;",
            ">(",
            "Lgxj",
            "<TO;>;)",
            "Lfhw;"
        }
    .end annotation

    .prologue
    .line 43
    instance-of v0, p1, Lgxw;

    if-eqz v0, :cond_0

    .line 44
    check-cast p1, Lgxw;

    invoke-interface {p1}, Lgxw;->a()Lfhw;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lgxk;)Lfic;
    .locals 1

    .prologue
    .line 134
    instance-of v0, p1, Lgyg;

    if-eqz v0, :cond_0

    .line 135
    check-cast p1, Lgyg;

    invoke-virtual {p1}, Lgyg;->d()Lfic;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lgxn;)Lfif;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lgxy;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lgxy;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfif;

    .line 112
    :goto_0
    return-object v0

    .line 99
    :cond_0
    new-instance v0, Lgxz;

    invoke-direct {v0, p0, p1}, Lgxz;-><init>(Lgxy;Lgxn;)V

    .line 111
    iget-object v1, p0, Lgxy;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lgxo;)Lfih;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lgxy;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lgxy;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfih;

    .line 129
    :goto_0
    return-object v0

    .line 121
    :cond_0
    new-instance v0, Lgya;

    invoke-direct {v0, p0, p1}, Lgya;-><init>(Lgxy;Lgxo;)V

    .line 128
    iget-object v1, p0, Lgxy;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)Lgxf;
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lgxx;

    invoke-direct {v0, p1}, Lgxx;-><init>(Lcom/google/android/gms/common/ConnectionResult;)V

    return-object v0
.end method

.method public a(Lfij;)Lgxp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfij",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)",
            "Lgxp",
            "<",
            "Lavb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lgxp;

    sget-object v1, Lgyd;->a:Lgyh;

    invoke-direct {v0, p1, v1}, Lgxp;-><init>(Lfij;Lgyh;)V

    return-object v0
.end method
