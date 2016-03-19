.class final Lctu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/Long;

.field e:Ljava/lang/Long;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Z

.field final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lctz;",
            ">;"
        }
    .end annotation
.end field

.field final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lctw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 868
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    iput-object v0, p0, Lctu;->i:Ljava/util/Map;

    .line 878
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    iput-object v0, p0, Lctu;->j:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 881
    iget-object v0, p0, Lctu;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctv;

    .line 882
    iget-boolean v0, v0, Lctv;->f:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 891
    :goto_0
    return v0

    .line 886
    :cond_1
    iget-object v0, p0, Lctu;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctv;

    .line 887
    iget-boolean v0, v0, Lctv;->f:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 888
    goto :goto_0

    .line 891
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 919
    if-ne p0, p1, :cond_1

    .line 920
    const/4 v0, 0x1

    .line 952
    :cond_0
    :goto_0
    return v0

    .line 922
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 926
    check-cast p1, Lctu;

    .line 928
    iget-boolean v1, p0, Lctu;->h:Z

    iget-boolean v2, p1, Lctu;->h:Z

    if-ne v1, v2, :cond_0

    .line 931
    iget-object v1, p0, Lctu;->b:Ljava/lang/String;

    iget-object v2, p1, Lctu;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 934
    iget-object v1, p0, Lctu;->c:Ljava/lang/String;

    iget-object v2, p1, Lctu;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 937
    iget-object v1, p0, Lctu;->d:Ljava/lang/Long;

    iget-object v2, p1, Lctu;->d:Ljava/lang/Long;

    invoke-static {v1, v2}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    iget-object v1, p0, Lctu;->e:Ljava/lang/Long;

    iget-object v2, p1, Lctu;->e:Ljava/lang/Long;

    invoke-static {v1, v2}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Lctu;->f:Ljava/lang/String;

    iget-object v2, p1, Lctu;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lctu;->g:Ljava/lang/String;

    iget-object v2, p1, Lctu;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Laal;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 949
    iget-object v1, p0, Lctu;->i:Ljava/util/Map;

    iget-object v2, p1, Lctu;->i:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 952
    iget-object v0, p0, Lctu;->j:Ljava/util/Map;

    iget-object v1, p1, Lctu;->j:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lctu;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lctu;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
