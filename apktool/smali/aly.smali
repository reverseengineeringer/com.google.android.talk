.class public final Laly;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lamh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lamh",
            "<",
            "Lamk;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final b:Laml;

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lalx;",
            ">;"
        }
    .end annotation
.end field

.field final e:I

.field f:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 4039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4027
    new-instance v0, Lamh;

    invoke-direct {v0}, Lamh;-><init>()V

    iput-object v0, p0, Laly;->a:Lamh;

    .line 4028
    new-instance v0, Laml;

    .line 4198
    invoke-direct {v0}, Laml;-><init>()V

    .line 4028
    iput-object v0, p0, Laly;->b:Laml;

    .line 4029
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laly;->c:Ljava/util/Map;

    .line 4030
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Laly;->d:Ljava/util/Map;

    .line 4040
    iput p1, p0, Laly;->e:I

    .line 4041
    return-void
.end method

.method private a(Ljava/lang/Object;)Lalx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lalx",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Laly;->b(Ljava/lang/Class;)Lalx;

    move-result-object v0

    return-object v0
.end method

.method private a(Lamk;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lamk;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 5094
    iget-object v0, p0, Laly;->a:Lamh;

    invoke-virtual {v0, p1}, Lamh;->a(Lamp;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6156
    iget-object v0, p0, Laly;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    .line 6157
    if-nez v0, :cond_0

    .line 6158
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 6159
    iget-object v1, p0, Laly;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6161
    :cond_0
    return-object v0
.end method

.method private a(ILjava/lang/Integer;)Z
    .locals 2

    .prologue
    .line 5102
    if-eqz p2, :cond_1

    .line 5103
    invoke-direct {p0}, Laly;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shl-int/lit8 v1, p1, 0x3

    if-gt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/Class;)Lalx;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lalx",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6171
    iget-object v0, p0, Laly;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalx;

    .line 6172
    if-nez v0, :cond_0

    .line 6173
    const-class v0, [I

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6174
    new-instance v0, Lamj;

    invoke-direct {v0}, Lamj;-><init>()V

    .line 6181
    :goto_0
    iget-object v1, p0, Laly;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6183
    :cond_0
    return-object v0

    .line 6175
    :cond_1
    const-class v0, [B

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6176
    new-instance v0, Lamf;

    invoke-direct {v0}, Lamf;-><init>()V

    goto :goto_0

    .line 6178
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No array pool found for: "

    .line 6179
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(ILjava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 6142
    invoke-direct {p0, p2}, Laly;->a(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v1

    .line 6143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 6144
    if-nez v0, :cond_0

    .line 6145
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Tried to decrement empty size, size: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", this: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6148
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 6149
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6153
    :goto_0
    return-void

    .line 6151
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 5107
    iget v0, p0, Laly;->f:I

    if-eqz v0, :cond_0

    iget v0, p0, Laly;->e:I

    iget v1, p0, Laly;->f:I

    div-int/2addr v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 5098
    iget v0, p0, Laly;->e:I

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 5125
    iget v0, p0, Laly;->e:I

    invoke-direct {p0, v0}, Laly;->c(I)V

    .line 5126
    return-void
.end method

.method private c(I)V
    .locals 5

    .prologue
    .line 5129
    :cond_0
    :goto_0
    iget v0, p0, Laly;->f:I

    if-le v0, p1, :cond_1

    .line 5130
    iget-object v0, p0, Laly;->a:Lamh;

    invoke-virtual {v0}, Lamh;->a()Ljava/lang/Object;

    move-result-object v0

    .line 6023
    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5132
    invoke-direct {p0, v0}, Laly;->a(Ljava/lang/Object;)Lalx;

    move-result-object v1

    .line 5133
    iget v2, p0, Laly;->f:I

    invoke-interface {v1, v0}, Lalx;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lalx;->b()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Laly;->f:I

    .line 5134
    invoke-interface {v1, v0}, Lalx;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Laly;->b(ILjava/lang/Class;)V

    .line 5135
    invoke-interface {v1}, Lalx;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5136
    invoke-interface {v1, v0}, Lalx;->a(Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "evicted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5139
    :cond_1
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 3062
    invoke-direct {p0, p2}, Laly;->b(Ljava/lang/Class;)Lalx;

    move-result-object v1

    .line 3064
    monitor-enter p0

    .line 3065
    :try_start_0
    invoke-direct {p0, p2}, Laly;->a(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3067
    invoke-direct {p0, p1, v0}, Laly;->a(ILjava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3068
    iget-object v2, p0, Laly;->b:Laml;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0, p2}, Laml;->a(ILjava/lang/Class;)Lamk;

    move-result-object v0

    .line 3073
    :goto_0
    invoke-direct {p0, v0}, Laly;->a(Lamk;)Ljava/lang/Object;

    move-result-object v0

    .line 3074
    if-eqz v0, :cond_0

    .line 3075
    iget v2, p0, Laly;->f:I

    invoke-interface {v1, v0}, Lalx;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lalx;->b()I

    move-result v4

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Laly;->f:I

    .line 3076
    invoke-interface {v1, v0}, Lalx;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, v2, p2}, Laly;->b(ILjava/lang/Class;)V

    .line 3078
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3080
    if-eqz v0, :cond_2

    .line 3081
    invoke-interface {v1, v0}, Lalx;->b(Ljava/lang/Object;)V

    .line 3088
    :goto_1
    return-object v0

    .line 3070
    :cond_1
    :try_start_1
    iget-object v0, p0, Laly;->b:Laml;

    invoke-virtual {v0, p1, p2}, Laml;->a(ILjava/lang/Class;)Lamk;

    move-result-object v0

    goto :goto_0

    .line 3078
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3083
    :cond_2
    invoke-interface {v1}, Lalx;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3084
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x1b

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Allocated "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3086
    :cond_3
    invoke-interface {v1, p1}, Lalx;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 3112
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Laly;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3113
    monitor-exit p0

    return-void

    .line 3112
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 3117
    monitor-enter p0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 3118
    :try_start_0
    invoke-virtual {p0}, Laly;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3122
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3119
    :cond_1
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 3120
    :try_start_1
    iget v0, p0, Laly;->e:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Laly;->c(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1045
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Laly;->b(Ljava/lang/Class;)Lalx;

    move-result-object v1

    .line 1046
    invoke-interface {v1, p1}, Lalx;->a(Ljava/lang/Object;)I

    move-result v2

    .line 1047
    invoke-direct {p0, v2}, Laly;->b(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    :goto_0
    monitor-exit p0

    return-void

    .line 1050
    :cond_0
    :try_start_1
    iget-object v0, p0, Laly;->b:Laml;

    invoke-virtual {v0, v2, p2}, Laml;->a(ILjava/lang/Class;)Lamk;

    move-result-object v3

    .line 1052
    iget-object v0, p0, Laly;->a:Lamh;

    invoke-virtual {v0, v3, p1}, Lamh;->a(Lamp;Ljava/lang/Object;)V

    .line 1053
    invoke-direct {p0, p2}, Laly;->a(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v4

    .line 1212
    iget v0, v3, Lamk;->a:I

    .line 1054
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2212
    iget v3, v3, Lamk;->a:I

    .line 1055
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    iget v0, p0, Laly;->f:I

    invoke-interface {v1}, Lalx;->b()I

    move-result v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Laly;->f:I

    .line 1057
    invoke-direct {p0}, Laly;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1045
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1055
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
