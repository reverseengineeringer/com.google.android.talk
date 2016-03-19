.class public final Lbix;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Leyp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leyp",
            "<",
            "Lbiy;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lbiy;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbix;->c:Ljava/lang/Object;

    .line 2188
    new-instance v0, Leyp;

    invoke-direct {v0}, Leyp;-><init>()V

    iput-object v0, p0, Lbix;->a:Leyp;

    .line 2189
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lbix;->b:Ljava/util/TreeSet;

    .line 2190
    return-void
.end method


# virtual methods
.method public a(JJ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Legy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    iget-object v2, p0, Lbix;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 1231
    :try_start_0
    iget-object v0, p0, Lbix;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    monitor-exit v2

    move-object v0, v1

    .line 1256
    :goto_0
    return-object v0

    .line 1235
    :cond_0
    iget-object v0, p0, Lbix;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiy;

    iget-wide v4, v0, Lbiy;->a:J

    cmp-long v0, p3, v4

    if-gez v0, :cond_1

    .line 1237
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1240
    :cond_1
    iget-object v0, p0, Lbix;->b:Ljava/util/TreeSet;

    new-instance v3, Lbiy;

    invoke-direct {v3, p1, p2}, Lbiy;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiy;

    .line 1242
    if-nez v0, :cond_2

    .line 1244
    monitor-exit v2

    move-object v0, v1

    goto :goto_0

    .line 1247
    :cond_2
    iget-object v3, p0, Lbix;->b:Ljava/util/TreeSet;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiy;

    .line 1248
    iget-wide v4, v0, Lbiy;->a:J

    cmp-long v4, v4, p3

    if-gez v4, :cond_3

    .line 1249
    iget-object v0, v0, Lbiy;->d:Legy;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1255
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 1256
    goto :goto_0
.end method

.method public a(Legy;)V
    .locals 7

    .prologue
    .line 1194
    sget-boolean v0, Lbiw;->a:Z

    if-eqz v0, :cond_0

    .line 1195
    const-string v0, "[WatermarkTracker] Record new watermark:  timestamp "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1199
    invoke-virtual {p1}, Legy;->c()J

    move-result-wide v2

    .line 1201
    invoke-virtual {p1}, Legy;->b()Lczb;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1c

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " gaiaId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    :cond_0
    iget-object v0, p0, Lbix;->a:Leyp;

    invoke-virtual {p1}, Legy;->b()Lczb;

    move-result-object v1

    invoke-virtual {v0, v1}, Leyp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiy;

    .line 1207
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Legy;->c()J

    move-result-wide v2

    iget-wide v4, v0, Lbiy;->a:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 1208
    const-string v0, "Babel"

    const-string v1, "ignore old timestamp"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1223
    :goto_0
    return-void

    .line 1212
    :cond_1
    iget-object v1, p0, Lbix;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 1213
    if-eqz v0, :cond_2

    .line 1214
    :try_start_0
    iget-object v2, p0, Lbix;->b:Ljava/util/TreeSet;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 1217
    :cond_2
    new-instance v0, Lbiy;

    invoke-direct {v0, p1}, Lbiy;-><init>(Legy;)V

    .line 1219
    iget-object v2, p0, Lbix;->a:Leyp;

    invoke-virtual {p1}, Legy;->b()Lczb;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Leyp;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    iget-object v2, p0, Lbix;->b:Ljava/util/TreeSet;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1223
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 6

    .prologue
    .line 1266
    iget-object v0, p0, Lbix;->a:Leyp;

    invoke-virtual {v0}, Leyp;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1267
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lczb;

    .line 1268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiy;

    .line 1269
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v0, Lbiy;->a:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "  participantId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  watermark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1272
    :cond_0
    return-void
.end method
