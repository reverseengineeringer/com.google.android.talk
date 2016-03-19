.class public Lalh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lall;
.implements Lanf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;",
        "Lanf;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Laiw;",
            "Lale;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lalj;

.field final c:Lane;

.field final d:Lakz;

.field final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Laiw;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lalk",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field final f:Lalu;

.field final g:Lakl;

.field final h:Lakx;

.field i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lalk",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lane;Lamv;Lanm;Lanm;)V
    .locals 6

    .prologue
    .line 2068
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lalh;-><init>(Lane;Lamv;Lanm;Lanm;B)V

    .line 2070
    return-void
.end method

.method constructor <init>(Lane;Lamv;Lanm;Lanm;B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalj;",
            "Ljava/util/Map",
            "<",
            "Laiw;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lalk",
            "<*>;>;>;",
            "Lakz;",
            "Lakx;",
            "Lalu;",
            "B)V"
        }
    .end annotation

    .prologue
    .line 2076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2077
    iput-object p1, p0, Lalh;->c:Lane;

    .line 2078
    new-instance v0, Lakl;

    invoke-direct {v0, p2}, Lakl;-><init>(Lamv;)V

    iput-object v0, p0, Lalh;->g:Lakl;

    .line 2081
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2083
    iput-object v0, p0, Lalh;->e:Ljava/util/Map;

    .line 2086
    new-instance v0, Lalj;

    invoke-direct {v0}, Lalj;-><init>()V

    .line 2088
    iput-object v0, p0, Lalh;->b:Lalj;

    .line 2091
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2093
    iput-object v0, p0, Lalh;->a:Ljava/util/Map;

    .line 2096
    new-instance v0, Lakz;

    invoke-direct {v0, p3, p4, p0}, Lakz;-><init>(Lanm;Lanm;Lalh;)V

    .line 2098
    iput-object v0, p0, Lalh;->d:Lakz;

    .line 2101
    new-instance v0, Lakx;

    iget-object v1, p0, Lalh;->g:Lakl;

    invoke-direct {v0, v1}, Lakx;-><init>(Lakl;)V

    .line 2103
    iput-object v0, p0, Lalh;->h:Lakx;

    .line 2106
    new-instance v0, Lalu;

    invoke-direct {v0}, Lalu;-><init>()V

    .line 2108
    iput-object v0, p0, Lalh;->f:Lalu;

    .line 2110
    invoke-interface {p1, p0}, Lane;->a(Lanf;)V

    .line 2111
    return-void
.end method

.method static a(Ljava/lang/String;JLaiw;)V
    .locals 7

    .prologue
    .line 5207
    invoke-static {p1, p2}, Lavm;->a(J)D

    move-result-wide v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x25

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5208
    return-void
.end method


# virtual methods
.method public a(Lahm;Ljava/lang/Object;Laiw;IILjava/lang/Class;Ljava/lang/Class;Lahs;Lakr;Ljava/util/Map;ZLaja;ZLaul;)Lalb;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lahm;",
            "Ljava/lang/Object;",
            "Laiw;",
            "II",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<TR;>;",
            "Lahs;",
            "Lakr;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lajd",
            "<*>;>;Z",
            "Laja;",
            "Z",
            "Laul;",
            ")",
            "Lalb;"
        }
    .end annotation

    .prologue
    .line 2147
    invoke-static {}, Lavq;->a()V

    .line 2148
    invoke-static {}, Lavm;->a()J

    move-result-wide v18

    .line 3015
    new-instance v2, Lali;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p10

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p12

    invoke-direct/range {v2 .. v10}, Lali;-><init>(Ljava/lang/Object;Laiw;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Laja;)V

    .line 3230
    if-nez p13, :cond_2

    .line 3231
    const/4 v3, 0x0

    .line 2154
    :cond_0
    :goto_0
    if-eqz v3, :cond_5

    .line 2155
    sget-object v4, Lair;->e:Lair;

    move-object/from16 v0, p14

    invoke-interface {v0, v3, v4}, Laul;->a(Lalr;Lair;)V

    .line 2156
    const-string v3, "Engine"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2157
    const-string v3, "Loaded resource from cache"

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1, v2}, Lalh;->a(Ljava/lang/String;JLaiw;)V

    .line 2159
    :cond_1
    const/4 v2, 0x0

    .line 2203
    :goto_1
    return-object v2

    .line 3244
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lalh;->c:Lane;

    invoke-interface {v3, v2}, Lane;->a(Laiw;)Lalr;

    move-result-object v3

    .line 3247
    if-nez v3, :cond_3

    .line 3248
    const/4 v3, 0x0

    .line 3235
    :goto_2
    if-eqz v3, :cond_0

    .line 3236
    invoke-virtual {v3}, Lalk;->f()V

    .line 3237
    move-object/from16 v0, p0

    iget-object v4, v0, Lalh;->e:Ljava/util/Map;

    new-instance v5, Lald;

    invoke-virtual/range {p0 .. p0}, Lalh;->a()Ljava/lang/ref/ReferenceQueue;

    move-result-object v6

    invoke-direct {v5, v2, v3, v6}, Lald;-><init>(Laiw;Lalk;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3249
    :cond_3
    instance-of v4, v3, Lalk;

    if-eqz v4, :cond_4

    .line 3251
    check-cast v3, Lalk;

    goto :goto_2

    .line 3253
    :cond_4
    new-instance v4, Lalk;

    const/4 v5, 0x1

    invoke-direct {v4, v3, v5}, Lalk;-><init>(Lalr;Z)V

    move-object v3, v4

    goto :goto_2

    .line 4211
    :cond_5
    if-nez p13, :cond_7

    .line 4212
    const/4 v3, 0x0

    .line 2163
    :goto_3
    if-eqz v3, :cond_9

    .line 2164
    sget-object v4, Lair;->e:Lair;

    move-object/from16 v0, p14

    invoke-interface {v0, v3, v4}, Laul;->a(Lalr;Lair;)V

    .line 2165
    const-string v3, "Engine"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2166
    const-string v3, "Loaded resource from active resources"

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1, v2}, Lalh;->a(Ljava/lang/String;JLaiw;)V

    .line 2168
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 4215
    :cond_7
    const/4 v4, 0x0

    .line 4216
    move-object/from16 v0, p0

    iget-object v3, v0, Lalh;->e:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 4217
    if-eqz v3, :cond_d

    .line 4218
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lalk;

    .line 4219
    if-eqz v3, :cond_8

    .line 4220
    invoke-virtual {v3}, Lalk;->f()V

    goto :goto_3

    .line 4222
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lalh;->e:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2171
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lalh;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lale;

    .line 2172
    if-eqz v3, :cond_b

    .line 2173
    move-object/from16 v0, p14

    invoke-virtual {v3, v0}, Lale;->a(Laul;)V

    .line 2174
    const-string v4, "Engine"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2175
    const-string v4, "Added to existing load"

    move-wide/from16 v0, v18

    invoke-static {v4, v0, v1, v2}, Lalh;->a(Ljava/lang/String;JLaiw;)V

    .line 2177
    :cond_a
    new-instance v2, Lalb;

    move-object/from16 v0, p14

    invoke-direct {v2, v0, v3}, Lalb;-><init>(Laul;Lale;)V

    goto/16 :goto_1

    .line 2180
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lalh;->d:Lakz;

    move/from16 v0, p13

    invoke-virtual {v3, v2, v0}, Lakz;->a(Laiw;Z)Lale;

    move-result-object v17

    .line 2181
    move-object/from16 v0, p0

    iget-object v3, v0, Lalh;->h:Lakx;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p11

    move-object/from16 v16, p12

    invoke-virtual/range {v3 .. v17}, Lakx;->a(Lahm;Ljava/lang/Object;Lali;Laiw;IILjava/lang/Class;Ljava/lang/Class;Lahs;Lakr;Ljava/util/Map;ZLaja;Lakj;)Lakh;

    move-result-object v3

    .line 2196
    move-object/from16 v0, p0

    iget-object v4, v0, Lalh;->a:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2197
    move-object/from16 v0, v17

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Lale;->a(Laul;)V

    .line 2198
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lale;->b(Lakh;)V

    .line 2200
    const-string v3, "Engine"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2201
    const-string v3, "Started new load"

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1, v2}, Lalh;->a(Ljava/lang/String;JLaiw;)V

    .line 2203
    :cond_c
    new-instance v2, Lalb;

    move-object/from16 v0, p14

    move-object/from16 v1, v17

    invoke-direct {v2, v0, v1}, Lalb;-><init>(Laul;Lale;)V

    goto/16 :goto_1

    :cond_d
    move-object v3, v4

    goto/16 :goto_3
.end method

.method a()Ljava/lang/ref/ReferenceQueue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lalk",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 5314
    iget-object v0, p0, Lalh;->i:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    .line 5315
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lalh;->i:Ljava/lang/ref/ReferenceQueue;

    .line 5316
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 5317
    new-instance v1, Lalc;

    iget-object v2, p0, Lalh;->e:Ljava/util/Map;

    iget-object v3, p0, Lalh;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lalc;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5319
    :cond_0
    iget-object v0, p0, Lalh;->i:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public a(Laiw;Lalk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laiw;",
            "Lalk",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1270
    invoke-static {}, Lavq;->a()V

    .line 1272
    if-eqz p2, :cond_0

    .line 1273
    invoke-virtual {p2, p1, p0}, Lalk;->a(Laiw;Lall;)V

    .line 1275
    invoke-virtual {p2}, Lalk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lalh;->e:Ljava/util/Map;

    new-instance v1, Lald;

    invoke-virtual {p0}, Lalh;->a()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lald;-><init>(Laiw;Lalk;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    :cond_0
    iget-object v0, p0, Lalh;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    return-void
.end method

.method public a(Lale;Laiw;)V
    .locals 1

    .prologue
    .line 1285
    invoke-static {}, Lavq;->a()V

    .line 1286
    iget-object v0, p0, Lalh;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lale;

    .line 1287
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lalh;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    :cond_0
    return-void
.end method

.method public a(Lalr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lalr",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 5294
    invoke-static {}, Lavq;->a()V

    .line 5295
    iget-object v0, p0, Lalh;->f:Lalu;

    invoke-virtual {v0, p1}, Lalu;->a(Lalr;)V

    .line 5296
    return-void
.end method

.method public b(Laiw;Lalk;)V
    .locals 1

    .prologue
    .line 5300
    invoke-static {}, Lavq;->a()V

    .line 5301
    iget-object v0, p0, Lalh;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5302
    invoke-virtual {p2}, Lalk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5303
    iget-object v0, p0, Lalh;->c:Lane;

    invoke-interface {v0, p1, p2}, Lane;->a(Laiw;Lalr;)Lalr;

    .line 5307
    :goto_0
    return-void

    .line 5305
    :cond_0
    iget-object v0, p0, Lalh;->f:Lalu;

    invoke-virtual {v0, p2}, Lalu;->a(Lalr;)V

    goto :goto_0
.end method
