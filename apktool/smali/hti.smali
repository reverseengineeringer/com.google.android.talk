.class public final Lhti;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lhti;


# instance fields
.field b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Property",
            "<**>;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lhti;->b:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhti;->c:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhti;->d:Ljava/util/Map;

    .line 95
    iget-object v0, p0, Lhti;->c:Ljava/util/Map;

    const-string v1, "position"

    new-array v2, v6, [Landroid/util/Property;

    sget-object v3, Lhto;->e:Landroid/util/Property;

    aput-object v3, v2, v4

    sget-object v3, Lhto;->f:Landroid/util/Property;

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lhti;->d:Ljava/util/Map;

    const-string v1, "position"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "x"

    aput-object v3, v2, v4

    const-string v3, "y"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lhti;->c:Ljava/util/Map;

    const-string v1, "scale"

    new-array v2, v6, [Landroid/util/Property;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    aput-object v3, v2, v4

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lhti;->d:Ljava/util/Map;

    const-string v1, "scale"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "sx"

    aput-object v3, v2, v4

    const-string v3, "sy"

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lhti;->c:Ljava/util/Map;

    const-string v1, "opacity"

    new-array v2, v5, [Landroid/util/Property;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lhti;->d:Ljava/util/Map;

    const-string v1, "opacity"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method

.method private static a(Lhtj;Landroid/util/Property;D)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhtj;",
            "Landroid/util/Property",
            "<**>;D)F"
        }
    .end annotation

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lhtj;->a(Landroid/util/Property;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lhtk;

    const-string v1, "Cannot animate position if stage size was not defined"

    invoke-direct {v0, v1}, Lhtk;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 393
    sget-object v1, Lhto;->e:Landroid/util/Property;

    if-ne p1, v1, :cond_2

    .line 394
    iget v0, p0, Lhtj;->a:F

    .line 398
    :cond_1
    :goto_0
    double-to-float v1, p2

    mul-float/2addr v0, v1

    return v0

    .line 395
    :cond_2
    sget-object v1, Lhto;->f:Landroid/util/Property;

    if-ne p1, v1, :cond_1

    .line 396
    iget v0, p0, Lhtj;->b:F

    goto :goto_0
.end method

.method static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 232
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 234
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 236
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 237
    if-eqz v3, :cond_1

    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v0

    .line 242
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 244
    if-eqz v1, :cond_2

    .line 245
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    return-object v0
.end method

.method private a(Lhtj;Lorg/json/JSONObject;Ljava/util/Collection;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhtj;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    move-object/from16 v0, p1

    iget-object v2, v0, Lhtj;->d:Ljava/util/Map;

    const-string v3, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 312
    if-nez v13, :cond_1

    .line 320
    :cond_0
    return-void

    .line 315
    :cond_1
    const-string v2, "animations"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 316
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    .line 317
    const/4 v2, 0x0

    move v12, v2

    :goto_0
    if-ge v12, v15, :cond_0

    .line 318
    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1324
    const-string v2, "duration"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v6

    double-to-long v0, v2

    move-wide/from16 v16, v0

    .line 1325
    const-string v2, "delay"

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v6

    double-to-long v0, v2

    move-wide/from16 v18, v0

    .line 1326
    const-string v2, "property"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lhti;->c:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/util/Property;

    .line 1328
    move-object/from16 v0, p0

    iget-object v4, v0, Lhti;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 1330
    if-nez v3, :cond_5

    const/4 v4, 0x1

    .line 1332
    :goto_1
    const-string v6, "keyframes"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 1333
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->length()I

    move-result v21

    .line 1334
    if-lez v21, :cond_b

    .line 1335
    const/4 v5, 0x0

    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_b

    .line 1336
    const/4 v8, 0x0

    .line 1337
    const/4 v7, 0x0

    .line 1338
    const/4 v6, 0x0

    move v10, v6

    move-object v11, v7

    move-object v6, v8

    :goto_3
    move/from16 v0, v21

    if-ge v10, v0, :cond_9

    .line 1339
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v22

    .line 1340
    if-eqz v4, :cond_6

    const/4 v7, 0x0

    .line 1341
    :goto_4
    if-eqz v7, :cond_2

    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1342
    :cond_2
    if-nez v6, :cond_3

    .line 1343
    move/from16 v0, v21

    new-array v6, v0, [Landroid/animation/Keyframe;

    .line 1345
    :cond_3
    const/4 v8, 0x0

    .line 1346
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    double-to-float v0, v8

    move/from16 v23, v0

    aget-object v24, v2, v5

    if-eqz v4, :cond_7

    .line 1348
    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    .line 1347
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8, v9}, Lhti;->a(Lhtj;Landroid/util/Property;D)F

    move-result v7

    .line 1345
    move/from16 v0, v23

    invoke-static {v0, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    aput-object v7, v6, v10

    .line 1350
    if-eqz v11, :cond_4

    .line 1351
    add-int/lit8 v7, v10, -0x1

    aget-object v7, v6, v7

    aget-object v8, v6, v10

    invoke-interface {v11, v7, v8}, Lhtn;->a(Landroid/animation/Keyframe;Landroid/animation/Keyframe;)V

    .line 1352
    aget-object v7, v6, v10

    invoke-virtual {v7, v11}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1372
    :cond_4
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v8, 0x3

    if-lt v7, v8, :cond_8

    .line 1375
    const/4 v7, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1376
    const-string v7, "name"

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1377
    const-string v9, "cubic-bezier"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1378
    new-instance v7, Lhtm;

    const-string v9, "x1"

    .line 1379
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v9, v0

    const-string v11, "y1"

    .line 1380
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v11, v0

    const-string v22, "x2"

    .line 1381
    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    const-string v23, "y2"

    .line 1382
    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v8, v0

    move/from16 v0, v22

    invoke-direct {v7, v9, v11, v0, v8}, Lhtm;-><init>(FFFF)V

    .line 1338
    :goto_6
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    move-object v11, v7

    goto/16 :goto_3

    .line 1330
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1340
    :cond_6
    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    goto/16 :goto_4

    .line 1349
    :cond_7
    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    goto/16 :goto_5

    .line 1384
    :cond_8
    const/4 v7, 0x0

    goto :goto_6

    .line 1359
    :cond_9
    if-eqz v6, :cond_a

    .line 1360
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    aget-object v9, v2, v5

    .line 1361
    invoke-static {v9, v6}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v7, v8

    .line 1360
    invoke-static {v13, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1363
    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v7

    move-wide/from16 v0, v18

    invoke-virtual {v7, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1364
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1335
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 317
    :cond_b
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_0
.end method

.method private b(Landroid/content/Context;ILjava/util/Map;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 158
    :try_start_0
    new-instance v0, Lhtj;

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lhtj;-><init>(Lhti;Landroid/content/Context;ILjava/util/Map;FF)V

    .line 160
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 161
    invoke-direct {p0, v0}, Lhti;->b(Lhtj;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 162
    new-instance v2, Lhtl;

    invoke-direct {v2, p0, v0}, Lhtl;-><init>(Lhti;Lhtj;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    :goto_0
    new-instance v1, Lhtk;

    invoke-direct {v1, v0}, Lhtk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 164
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private b(Lhtj;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhtj;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p1, Lhtj;->c:Lorg/json/JSONObject;

    const-string v1, "animations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 303
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 304
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, p1, v4, v2}, Lhti;->a(Lhtj;Lorg/json/JSONObject;Ljava/util/Collection;)V

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    return-object v2
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/util/Map;)Landroid/animation/Animator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lhti;->b(Landroid/content/Context;ILjava/util/Map;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method a(Lhtj;)V
    .locals 14

    .prologue
    .line 252
    :try_start_0
    iget-object v0, p1, Lhtj;->c:Lorg/json/JSONObject;

    const-string v1, "animations"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 254
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 255
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_4

    .line 256
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 257
    iget-object v1, p1, Lhtj;->d:Ljava/util/Map;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 258
    if-eqz v6, :cond_3

    .line 1271
    const-string v1, "initialValues"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1272
    const-string v1, "initialValues"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1273
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1274
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1275
    iget-object v1, p0, Lhti;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1278
    iget-object v1, p0, Lhti;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Property;

    .line 1280
    iget-object v2, p0, Lhti;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 1281
    if-nez v2, :cond_1

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-virtual {p1, v9}, Lhtj;->a(Landroid/util/Property;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1282
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v9, 0x0

    aget-object v1, v1, v9

    .line 1283
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 1282
    invoke-static {p1, v1, v10, v11}, Lhti;->a(Lhtj;Landroid/util/Property;D)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    new-instance v1, Lhtk;

    invoke-direct {v1, v0}, Lhtk;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1285
    :cond_1
    :try_start_1
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 1286
    const/4 v0, 0x0

    :goto_2
    array-length v10, v2

    if-ge v0, v10, :cond_0

    .line 1287
    aget-object v10, v1, v0

    invoke-virtual {p1, v10}, Lhtj;->a(Landroid/util/Property;)Z

    move-result v10

    if-eqz v10, :cond_2

    aget-object v10, v2, v0

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1288
    aget-object v10, v1, v0

    aget-object v11, v1, v0

    aget-object v12, v2, v0

    .line 1289
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 1288
    invoke-static {p1, v11, v12, v13}, Lhti;->a(Lhtj;Landroid/util/Property;D)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1286
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 255
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    .line 265
    :cond_4
    return-void
.end method
