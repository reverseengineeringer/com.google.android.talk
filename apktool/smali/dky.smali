.class final Ldky;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ldlf;

.field private final b:Landroid/content/Context;

.field private final c:Lhpz;

.field private final d:Leot;

.field private final e:I

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldlc;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Leap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhpz;Leot;ILdlf;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldky;->f:Ljava/util/Set;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ldky;->g:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Lhq;

    invoke-direct {v0}, Lhq;-><init>()V

    iput-object v0, p0, Ldky;->h:Ljava/util/Map;

    .line 47
    new-instance v0, Ldkz;

    invoke-direct {v0, p0}, Ldkz;-><init>(Ldky;)V

    iput-object v0, p0, Ldky;->i:Leap;

    .line 62
    iput-object p1, p0, Ldky;->b:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Ldky;->c:Lhpz;

    .line 64
    iput-object p3, p0, Ldky;->d:Leot;

    .line 65
    iput p4, p0, Ldky;->e:I

    .line 66
    iput-object p5, p0, Ldky;->a:Ldlf;

    .line 67
    return-void
.end method

.method private a(Ldmk;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Ldky;->c:Lhpz;

    iget v1, p0, Ldky;->e:I

    invoke-interface {v0, v1}, Lhpz;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 229
    invoke-interface {p1, p3, v0}, Ldmk;->a(ILandroid/content/ContentValues;)V

    .line 230
    iget v1, p0, Ldky;->e:I

    invoke-static {v1, p2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(ILjava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;Z)Ldmk;
    .locals 3

    .prologue
    .line 193
    iget-object v0, p0, Ldky;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlc;

    .line 194
    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Ldky;->a:Ldlf;

    iget v1, p0, Ldky;->e:I

    invoke-virtual {v0, v1, p1, p2}, Ldlf;->a(ILjava/lang/String;Z)Ldns;

    move-result-object v0

    .line 208
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    iget-object v1, v0, Ldlc;->b:Ldns;

    if-nez v1, :cond_0

    .line 201
    if-nez p2, :cond_2

    .line 202
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :cond_2
    iget-object v1, p0, Ldky;->a:Ldlf;

    iget v2, p0, Ldky;->e:I

    invoke-virtual {v1, v2, p1}, Ldlf;->a(ILjava/lang/String;)Ldns;

    move-result-object v1

    iput-object v1, v0, Ldlc;->b:Ldns;

    goto :goto_0
.end method

.method a()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ldky;->i:Leap;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Leap;)V

    .line 110
    return-void
.end method

.method a(ILeau;)V
    .locals 7

    .prologue
    .line 234
    iget-object v1, p0, Ldky;->a:Ldlf;

    monitor-enter v1

    .line 237
    :try_start_0
    iget-object v0, p0, Ldky;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 238
    if-nez v0, :cond_0

    .line 239
    monitor-exit v1

    .line 284
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v2, p0, Ldky;->f:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 243
    iget-object v0, p0, Ldky;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 245
    iget-object v0, p0, Ldky;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    iget-object v3, p0, Ldky;->h:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlc;

    .line 247
    if-eqz v0, :cond_1

    .line 248
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Ldlc;->a(IZ)V

    goto :goto_1

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 252
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Leau;->c()Ldqf;

    move-result-object v0

    .line 253
    instance-of v2, v0, Ldrx;

    if-eqz v2, :cond_4

    .line 254
    check-cast v0, Ldrx;

    .line 255
    invoke-virtual {v0}, Ldrx;->k()Ljava/util/List;

    move-result-object v2

    .line 256
    invoke-virtual {v0}, Ldrx;->c()Leff;

    move-result-object v0

    check-cast v0, Ldyv;

    .line 257
    invoke-virtual {v0}, Ldyv;->a()I

    move-result v3

    .line 259
    const-string v0, "Babel"

    const/4 v4, 0x3

    invoke-static {v0, v4}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    const-string v0, "Babel"

    .line 261
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x3f

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Presence response: requestId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", gaiaCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 260
    invoke-static {v0, v4, v5}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldtk;

    .line 265
    iget-object v4, v0, Ldtk;->b:Ljava/lang/String;

    .line 266
    iget-object v5, p0, Ldky;->f:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 268
    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Ldky;->a(Ljava/lang/String;Z)Ldmk;

    move-result-object v5

    .line 269
    invoke-interface {v5, v0, v3}, Ldmk;->a(Ldtk;I)I

    .line 272
    invoke-direct {p0, v5, v4, v3}, Ldky;->a(Ldmk;Ljava/lang/String;I)V

    goto :goto_2

    .line 278
    :cond_4
    iget-object v0, p0, Ldky;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 279
    const-string v0, "Babel"

    const-string v2, ","

    iget-object v3, p0, Ldky;->f:Ljava/util/Set;

    .line 280
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x44

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Server did not return presence for: requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gaiaList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 279
    invoke-static {v0, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :cond_5
    iget-object v0, p0, Ldky;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 284
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method a(J)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Ldky;->c:Lhpz;

    iget v1, p0, Ldky;->e:I

    invoke-interface {v0, v1}, Lhpz;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldky;->d:Leot;

    iget v1, p0, Ldky;->e:I

    invoke-interface {v0, v1}, Leot;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    return-void

    .line 154
    :cond_1
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 157
    iget-object v0, p0, Ldky;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlc;

    .line 158
    invoke-virtual {v0, p1, p2}, Ldlc;->a(J)I

    move-result v5

    .line 159
    if-eqz v5, :cond_2

    .line 160
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 161
    if-nez v1, :cond_3

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    :cond_3
    iget-object v0, v0, Ldlc;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_4
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v1, v2

    .line 172
    :goto_1
    if-ge v1, v4, :cond_0

    .line 173
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 174
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 175
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v6

    invoke-virtual {v6}, Lebi;->a()I

    move-result v6

    .line 176
    const-string v7, "Babel"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 177
    const-string v7, "Babel"

    iget v8, p0, Ldky;->e:I

    .line 178
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-string v10, ","

    .line 179
    invoke-static {v10, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x75

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Presence request: requestId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", account="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", fieldMask="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", gaiaCount="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", gaiaList="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    .line 177
    invoke-static {v7, v8, v9}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_5
    iget-object v7, p0, Ldky;->g:Landroid/util/SparseArray;

    invoke-virtual {v7, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    iget v7, p0, Ldky;->e:I

    invoke-static {v6, v7, v0, v5}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IILjava/util/ArrayList;I)V

    .line 185
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    iget-object v7, p0, Ldky;->h:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlc;

    .line 187
    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ldlc;->a(IZ)V

    goto :goto_2

    .line 172
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method a(Ldmk;Ljava/lang/String;Ldnv;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 144
    invoke-interface {p1, p3, p4, v0, v1}, Ldmk;->a(Ldnv;Ljava/lang/Object;J)Z

    move-result v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    iget v0, p3, Ldnv;->l:I

    invoke-direct {p0, p1, p2, v0}, Ldky;->a(Ldmk;Ljava/lang/String;I)V

    .line 148
    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;Ldnv;Ljava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 122
    invoke-virtual {p0, p1, v8}, Ldky;->a(Ljava/lang/String;Z)Ldmk;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, v0, p1, p2, p3}, Ldky;->a(Ldmk;Ljava/lang/String;Ldnv;Ljava/lang/Object;)V

    .line 139
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v0, Ldla;

    iget-object v2, p0, Ldky;->b:Landroid/content/Context;

    iget-object v3, p0, Ldky;->c:Lhpz;

    iget v4, p0, Ldky;->e:I

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Ldla;-><init>(Ldky;Landroid/content/Context;Lhpz;ILjava/lang/String;Ldnv;Ljava/lang/Object;)V

    .line 138
    new-array v1, v8, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lbio;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method a(Ldli;)Z
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Ldky;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlc;

    invoke-virtual {v0, p1}, Ldlc;->a(Ldli;)Z

    move-result v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Ldky;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 100
    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Ldky;->a()V

    .line 105
    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ldli;I)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 70
    iget-object v0, p0, Ldky;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Ldky;->i:Leap;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    .line 75
    :cond_0
    iget-object v0, p0, Ldky;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlc;

    .line 76
    if-nez v0, :cond_2

    .line 77
    new-instance v6, Ldlc;

    invoke-direct {v6, p1}, Ldlc;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Ldky;->a:Ldlf;

    iget v1, p0, Ldky;->e:I

    invoke-virtual {v0, v1, p1, v7}, Ldlf;->a(ILjava/lang/String;Z)Ldns;

    move-result-object v0

    iput-object v0, v6, Ldlc;->b:Ldns;

    .line 80
    iget-object v0, p0, Ldky;->h:Ljava/util/Map;

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, v6, Ldlc;->b:Ldns;

    if-nez v0, :cond_1

    .line 1212
    new-instance v0, Ldlb;

    iget-object v2, p0, Ldky;->b:Landroid/content/Context;

    iget-object v3, p0, Ldky;->c:Lhpz;

    iget v4, p0, Ldky;->e:I

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ldlb;-><init>(Ldky;Landroid/content/Context;Lhpz;ILjava/lang/String;)V

    .line 1221
    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lbio;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    move-object v0, v6

    .line 87
    :cond_2
    invoke-virtual {v0, p2, p3}, Ldlc;->a(Ldli;I)Z

    move-result v0

    return v0
.end method
