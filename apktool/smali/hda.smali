.class final Lhda;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lhdd;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lhdd;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lhdd;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lhdd;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lhdd;

.field public f:Lhdd;

.field public g:Lhdd;

.field final synthetic h:Lhcw;


# direct methods
.method public constructor <init>(Lhcw;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 124
    iput-object p1, p0, Lhda;->h:Lhcw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object v1, p0, Lhda;->a:Lhdd;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhda;->b:Ljava/util/Map;

    .line 127
    iput-object v1, p0, Lhda;->c:Lhdd;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhda;->d:Ljava/util/Map;

    .line 129
    iput-object v1, p0, Lhda;->e:Lhdd;

    .line 130
    iput-object v1, p0, Lhda;->f:Lhdd;

    .line 131
    iput-object v1, p0, Lhda;->g:Lhdd;

    .line 132
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iput-object v1, p0, Lhda;->a:Lhdd;

    .line 136
    iget-object v0, p0, Lhda;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 137
    iput-object v1, p0, Lhda;->c:Lhdd;

    .line 138
    iget-object v0, p0, Lhda;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 139
    iput-object v1, p0, Lhda;->e:Lhdd;

    .line 140
    iput-object v1, p0, Lhda;->f:Lhdd;

    .line 141
    iput-object v1, p0, Lhda;->g:Lhdd;

    .line 142
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lhda;->a:Lhdd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lhda;->b:Ljava/util/Map;

    .line 146
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhda;->c:Lhdd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lhda;->d:Ljava/util/Map;

    .line 148
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhda;->e:Lhdd;

    if-nez v0, :cond_0

    iget-object v0, p0, Lhda;->f:Lhdd;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhdd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lhda;->d()Ljava/util/List;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lhda;->g:Lhdd;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lhda;->g:Lhdd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    new-instance v1, Lhdb;

    invoke-direct {v1, p0}, Lhdb;-><init>(Lhda;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhdd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lhda;->b:Ljava/util/Map;

    .line 170
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lhda;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    iget-object v1, p0, Lhda;->a:Lhdd;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lhda;->a:Lhdd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    iget-object v1, p0, Lhda;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget-object v1, p0, Lhda;->c:Lhdd;

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lhda;->c:Lhdd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_1
    iget-object v1, p0, Lhda;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v1, p0, Lhda;->e:Lhdd;

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lhda;->e:Lhdd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_2
    iget-object v1, p0, Lhda;->f:Lhdd;

    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Lhda;->f:Lhdd;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_3
    new-instance v1, Lhdc;

    invoke-direct {v1, p0}, Lhdc;-><init>(Lhda;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 193
    return-object v0
.end method
