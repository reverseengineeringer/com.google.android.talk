.class public final Lexb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lexe;
.implements Lhbv;


# static fields
.field public static final a:Z


# instance fields
.field public final b:Lexd;

.field private c:I

.field private final d:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Leys;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lezi;->t:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lexb;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lexb;->e:Ljava/lang/Object;

    .line 99
    if-ltz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Lfii;->a(Z)V

    .line 1090
    const-string v0, "activity"

    .line 1091
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1092
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    shl-int/lit8 v0, v0, 0xa

    shl-int/lit8 v0, v0, 0xa

    .line 103
    int-to-double v4, v0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lexb;->c:I

    .line 104
    sget-boolean v3, Lexb;->a:Z

    if-eqz v3, :cond_0

    .line 105
    iget v3, p0, Lexb;->c:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x9f

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Initializing BitmapCache; maxMemory available (bytes): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "; expected cacheSize (bytes): "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; min (bytes): 2097152; max (bytes): 25165824"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_0
    iget v0, p0, Lexb;->c:I

    const/high16 v3, 0x200000

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lexb;->c:I

    .line 117
    iget v0, p0, Lexb;->c:I

    const/high16 v3, 0x1800000

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lexb;->c:I

    .line 118
    sget-boolean v0, Lexb;->a:Z

    if-eqz v0, :cond_1

    .line 119
    iget v0, p0, Lexb;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Initialized cache size (bytes): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    :cond_1
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lexb;->d:Ljava/util/LinkedHashMap;

    .line 123
    invoke-static {p1}, Lexd;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lexb;->f:Z

    .line 125
    const/4 v1, 0x5

    const/16 v2, 0x1e

    const/16 v3, 0x64

    const-string v5, "Image"

    move-object v0, p1

    move v4, p2

    .line 126
    invoke-static/range {v0 .. v5}, Lexd;->a(Landroid/content/Context;IIIILjava/lang/String;)Lexd;

    move-result-object v0

    iput-object v0, p0, Lexb;->b:Lexd;

    .line 133
    return-void

    :cond_2
    move v0, v2

    .line 99
    goto/16 :goto_0
.end method

.method private a(Z)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v4, p0, Lexb;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 301
    :try_start_0
    invoke-direct {p0}, Lexb;->c()V

    .line 302
    sget-boolean v0, Lexb;->a:Z

    if-eqz v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Begin BitmapCache prune: lowMemory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 308
    :cond_0
    iget-object v0, p0, Lexb;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    .line 311
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leys;

    .line 314
    invoke-virtual {v0}, Leys;->i()I

    move-result v6

    if-nez v6, :cond_1

    .line 315
    add-int/lit8 v3, v3, 0x1

    .line 317
    :cond_1
    invoke-virtual {v0}, Leys;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_b

    .line 319
    invoke-static {v0}, Lexb;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 321
    goto :goto_0

    .line 323
    :cond_2
    sget-boolean v0, Lexb;->a:Z

    if-eqz v0, :cond_3

    .line 324
    iget v0, p0, Lexb;->c:I

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x6c

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Evictable bitmap count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; total cache (bytes) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; max cache size (bytes) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    :cond_3
    if-nez v3, :cond_4

    .line 335
    monitor-exit v4

    .line 384
    :goto_2
    return-void

    .line 340
    :cond_4
    if-eqz p1, :cond_6

    move v3, v2

    .line 343
    :goto_3
    iget-object v0, p0, Lexb;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v12, v2

    move v2, v1

    move v1, v12

    .line 344
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 345
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 346
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leys;

    .line 349
    if-le v2, v3, :cond_a

    .line 350
    invoke-virtual {v0}, Leys;->i()I

    move-result v6

    if-nez v6, :cond_a

    .line 351
    invoke-virtual {v0}, Leys;->c()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 352
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 353
    if-eqz v6, :cond_a

    .line 354
    invoke-static {v6}, Lexb;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 355
    sget-boolean v7, Lexb;->a:Z

    if-eqz v7, :cond_5

    .line 359
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 361
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget v9, p0, Lexb;->c:I

    sub-int v9, v2, v9

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x6b

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Evicting bitmap: size ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "x"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "); bytes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; need to evict: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes more."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_5
    sub-int/2addr v2, v0

    .line 369
    add-int/2addr v0, v1

    .line 370
    if-eqz p1, :cond_7

    .line 371
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v0

    goto :goto_4

    .line 340
    :cond_6
    iget v0, p0, Lexb;->c:I

    move v3, v0

    goto/16 :goto_3

    .line 373
    :cond_7
    iget-object v1, p0, Lexb;->b:Lexd;

    invoke-virtual {v1, v6}, Lexd;->a(Landroid/graphics/Bitmap;)V

    move v1, v2

    :goto_5
    move v2, v1

    move v1, v0

    .line 378
    goto/16 :goto_4

    .line 380
    :cond_8
    sget-boolean v0, Lexb;->a:Z

    if-eqz v0, :cond_9

    if-lez v1, :cond_9

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x3c

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "************************* Pruned total of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-direct {p0}, Lexb;->c()V

    .line 384
    :cond_9
    monitor-exit v4

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_a
    move v0, v1

    move v1, v2

    goto :goto_5

    :cond_b
    move v0, v1

    goto/16 :goto_1
.end method

.method private a(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 251
    sget-boolean v2, Lexb;->a:Z

    if-eqz v2, :cond_0

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "BitmapCache evictSome="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    :cond_0
    invoke-direct {p0}, Lexb;->c()V

    .line 255
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 271
    :goto_0
    :pswitch_0
    return v0

    .line 260
    :pswitch_1
    invoke-virtual {p0}, Lexb;->h()V

    goto :goto_0

    .line 265
    :pswitch_2
    const-string v2, "Babel_BitmapCache"

    const-string v3, "Warning: BitmapCache hitting too many OOMs."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    sget-object v1, Lhbu;->a:Lhbu;

    invoke-virtual {v1}, Lhbu;->a()V

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static c(Landroid/graphics/Bitmap;)I
    .locals 2

    .prologue
    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1280
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    .line 290
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0
.end method

.method private c()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    const/4 v2, 0x0

    .line 161
    sget-boolean v0, Lexb;->a:Z

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v5, p0, Lexb;->e:Ljava/lang/Object;

    monitor-enter v5

    .line 165
    :try_start_0
    iget-object v0, p0, Lexb;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    move v4, v2

    .line 171
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 172
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leys;

    .line 174
    invoke-virtual {v1}, Leys;->f()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 175
    if-eqz v7, :cond_2

    .line 176
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 177
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 178
    mul-int v10, v8, v9

    add-int/2addr v4, v10

    .line 179
    add-int/lit8 v3, v3, 0x1

    .line 180
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    add-int/2addr v2, v7

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    const-string v7, "//"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 184
    const-string v7, "https:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_1
    :goto_2
    invoke-virtual {v1}, Leys;->i()I

    move-result v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x49

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "*** Bitmap (refcount = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ") ;   size: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " x "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ": "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    move v0, v2

    move v1, v3

    move v2, v4

    move v3, v1

    move v4, v2

    move v2, v0

    .line 197
    goto/16 :goto_1

    .line 184
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 199
    :cond_4
    int-to-double v0, v2

    div-double/2addr v0, v12

    .line 200
    div-double v6, v0, v12

    .line 201
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0xa8

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "*****   Total Pixel Area : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " sq pixels; numBitmaps = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; totalBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; in KB = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; in MB = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 213
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(II)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 424
    iget-boolean v0, p0, Lexb;->f:Z

    if-nez v0, :cond_0

    move-object v0, v2

    .line 499
    :goto_0
    return-object v0

    .line 429
    :cond_0
    iget-object v3, p0, Lexb;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 430
    :try_start_0
    sget-boolean v0, Lexb;->a:Z

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lexb;->d:Ljava/util/LinkedHashMap;

    .line 434
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x64

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "BitmapCache getBitmap starting evictions cache size="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    :cond_1
    const/4 v1, 0x0

    .line 445
    iget-object v0, p0, Lexb;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 446
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 447
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 448
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leys;

    .line 449
    invoke-virtual {v0}, Leys;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_b

    .line 451
    invoke-static {v0}, Lexb;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    add-int/2addr v0, v1

    :goto_2
    move v1, v0

    .line 453
    goto :goto_1

    .line 456
    :cond_2
    iget v0, p0, Lexb;->c:I

    if-gt v1, v0, :cond_4

    .line 459
    sget-boolean v0, Lexb;->a:Z

    if-eqz v0, :cond_3

    .line 460
    iget v0, p0, Lexb;->c:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x72

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "BitmapCache getAvailableBitmap: currentCacheSize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " available. So not evicting any bitmaps."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    :cond_3
    monitor-exit v3

    move-object v0, v2

    goto/16 :goto_0

    .line 471
    :cond_4
    iget-object v0, p0, Lexb;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v2

    .line 473
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 474
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 475
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leys;

    .line 476
    invoke-virtual {v0}, Leys;->i()I

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0, p1, p2}, Leys;->a(II)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Leys;->g()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 477
    sget-boolean v1, Lexb;->a:Z

    if-eqz v1, :cond_5

    .line 478
    const-string v1, "BitmapCache getAvailableBitmap evicting: "

    invoke-virtual {v0}, Leys;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 480
    :cond_5
    :goto_4
    invoke-virtual {v0}, Leys;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 481
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 482
    if-nez v0, :cond_8

    :goto_5
    move-object v1, v0

    .line 486
    goto :goto_3

    .line 478
    :cond_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 497
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    move-object v0, v1

    .line 487
    :cond_8
    :try_start_1
    sget-boolean v1, Lexb;->a:Z

    if-eqz v1, :cond_9

    .line 488
    iget-object v1, p0, Lexb;->d:Ljava/util/LinkedHashMap;

    .line 491
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x6d

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "BitmapCache getAvailableBitmap finished evictions cache size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 497
    :cond_9
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    invoke-direct {p0}, Lexb;->c()V

    goto/16 :goto_0

    :cond_a
    move-object v0, v1

    goto :goto_5

    :cond_b
    move v0, v1

    goto/16 :goto_2
.end method

.method public a([BIII)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 515
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lexb;->b([BIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Leys;
    .locals 3

    .prologue
    .line 221
    iget-object v1, p0, Lexb;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_0
    invoke-direct {p0}, Lexb;->c()V

    .line 223
    iget-object v0, p0, Lexb;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leys;

    .line 224
    if-nez v0, :cond_0

    .line 225
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lexb;->a(Z)V

    .line 229
    :goto_0
    monitor-exit v1

    return-object v0

    .line 227
    :cond_0
    invoke-virtual {v0}, Leys;->a()V

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Leys;)Leys;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-static {p2}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-boolean v0, Lexb;->a:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p2}, Leys;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lexb;->b(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lfii;->b(Z)V

    .line 148
    iget-object v0, p0, Lexb;->b:Lexd;

    invoke-virtual {p2}, Leys;->e()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lexd;->b(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-static {v1}, Lfii;->b(Z)V

    .line 150
    :cond_0
    iget-object v1, p0, Lexb;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lexb;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leys;

    .line 152
    invoke-direct {p0}, Lexb;->c()V

    .line 153
    monitor-exit v1

    return-object v0

    :cond_1
    move v0, v2

    .line 147
    goto :goto_0

    :cond_2
    move v1, v2

    .line 148
    goto :goto_1

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Leys;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    iget-object v0, p0, Lexb;->d:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 650
    if-eqz p1, :cond_0

    .line 651
    invoke-direct {p0}, Lexb;->c()V

    .line 652
    iget-object v0, p0, Lexb;->b:Lexd;

    invoke-virtual {v0, p1}, Lexd;->a(Landroid/graphics/Bitmap;)V

    .line 654
    :cond_0
    return-void
.end method

.method public b(II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 507
    invoke-direct {p0}, Lexb;->c()V

    .line 508
    iget-object v0, p0, Lexb;->b:Lexd;

    invoke-virtual {v0, p1, p2, p0}, Lexd;->a(IILexe;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public b([BIII)Landroid/graphics/Bitmap;
    .locals 10

    .prologue
    .line 535
    if-ltz p2, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lfii;->a(Z)V

    .line 536
    if-ltz p3, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lfii;->a(Z)V

    .line 537
    rem-int/lit8 v0, p4, 0x5a

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lfii;->a(Z)V

    .line 539
    rem-int/lit16 v0, p4, 0xb4

    if-eqz v0, :cond_e

    .line 544
    :goto_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 545
    invoke-static {v0, v1}, Lexd;->a(II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 548
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 556
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 557
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 560
    sget-boolean v0, Lexb;->a:Z

    if-eqz v0, :cond_0

    .line 561
    const-string v0, "BitmapCache.decodeByteArray: bitmap.w="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x49

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bitmap.h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", limit.w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " limit.h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    :cond_0
    if-gt v3, p3, :cond_1

    if-le v4, p2, :cond_9

    .line 575
    :cond_1
    const/4 v0, 0x1

    .line 577
    :goto_4
    if-gt v3, p3, :cond_2

    if-le v4, p2, :cond_7

    .line 578
    :cond_2
    div-int/lit8 v3, v3, 0x2

    .line 579
    div-int/lit8 v4, v4, 0x2

    .line 580
    shl-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 535
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 536
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 537
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 549
    :catch_0
    move-exception v0

    .line 550
    const-string v1, "Babel"

    const-string v2, "can not decode bitmap dimensions"

    invoke-static {v1, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    const/4 v0, 0x0

    .line 629
    :cond_6
    :goto_5
    return-object v0

    .line 582
    :cond_7
    sget-boolean v1, Lexb;->a:Z

    if-eqz v1, :cond_8

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x34

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "BitmapCache.decodeByteArray: sample size="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    :cond_8
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 587
    :cond_9
    sget-boolean v0, Lexb;->a:Z

    if-eqz v0, :cond_a

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x42

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BitmapCache.decodeByteArray: decode to w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 593
    :cond_a
    const/4 v0, 0x0

    move v6, v0

    .line 596
    :goto_6
    :try_start_1
    iget-object v0, p0, Lexb;->b:Lexd;

    move-object v1, p1

    move-object v5, p0

    .line 597
    invoke-virtual/range {v0 .. v5}, Lexd;->a([BLandroid/graphics/BitmapFactory$Options;IILexe;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 611
    if-eqz v0, :cond_6

    rem-int/lit16 v1, p4, 0x168

    if-eqz v1, :cond_6

    .line 612
    const/4 v1, 0x0

    move v7, v1

    .line 1634
    :goto_7
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1635
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1636
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1637
    int-to-float v1, p4

    int-to-float v2, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    int-to-float v6, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    invoke-virtual {v5, v1, v2, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1639
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1640
    if-eqz v1, :cond_b

    if-eq v0, v1, :cond_b

    .line 1641
    invoke-virtual {p0, v0}, Lexb;->a(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    :cond_b
    move-object v0, v1

    .line 616
    goto :goto_5

    .line 599
    :catch_1
    move-exception v0

    .line 600
    const-string v1, "Babel"

    array-length v5, p1

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x35

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "out of memory for decoding a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " sized bitmap"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v5, v7}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    add-int/lit8 v1, v6, 0x1

    .line 602
    invoke-direct {p0, v1}, Lexb;->a(I)Z

    move-result v5

    if-nez v5, :cond_c

    .line 603
    const-string v1, "Babel"

    array-length v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "out of memory: gave up on decoding a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sized bitmap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    throw v0

    :cond_c
    move v6, v1

    .line 608
    goto/16 :goto_6

    .line 617
    :catch_2
    move-exception v1

    .line 618
    const-string v2, "Babel"

    array-length v3, p1

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x35

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "out of memory for rotating a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sized bitmap"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    add-int/lit8 v2, v7, 0x1

    .line 620
    invoke-direct {p0, v2}, Lexb;->a(I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 621
    const-string v0, "Babel"

    array-length v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "out of memory: gave up on rotating a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sized bitmap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    throw v1

    :cond_d
    move v7, v2

    .line 626
    goto/16 :goto_7

    :cond_e
    move v9, p3

    move p3, p2

    move p2, v9

    goto/16 :goto_3
.end method

.method b()Lexd;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lexb;->b:Lexd;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lexb;->a(Z)V

    .line 244
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/graphics/Bitmap;)Z
    .locals 3

    .prologue
    .line 657
    iget-object v1, p0, Lexb;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 658
    :try_start_0
    iget-object v0, p0, Lexb;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leys;

    .line 659
    invoke-virtual {v0}, Leys;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 660
    const/4 v0, 0x1

    monitor-exit v1

    .line 664
    :goto_0
    return v0

    .line 663
    :cond_1
    monitor-exit v1

    .line 664
    const/4 v0, 0x0

    goto :goto_0

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lexb;->a(Z)V

    .line 239
    return-void
.end method
