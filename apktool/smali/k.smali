.class public Lk;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lke;


# static fields
.field static final a:Ljava/lang/String;

.field static final b:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Laen;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final e:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field static final f:Lcom/google/android/apps/hangouts/hangout/StressMode;


# instance fields
.field final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/graphics/Rect;

.field private final j:Landroid/graphics/Rect;

.field private final k:Landroid/graphics/Rect;

.field private final l:[I

.field private m:Z

.field private n:[I

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Ln;

.field private s:Z

.field private t:Lmq;

.field private u:Z

.field private v:Landroid/graphics/drawable/Drawable;

.field private w:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private final x:Lkf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 93
    const-class v0, Lk;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lk;->a:Ljava/lang/String;

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 102
    new-instance v0, Lp;

    invoke-direct {v0}, Lp;-><init>()V

    sput-object v0, Lk;->e:Ljava/util/Comparator;

    .line 103
    new-instance v0, Lcom/google/android/apps/hangouts/hangout/StressMode;

    invoke-direct {v0}, Lcom/google/android/apps/hangouts/hangout/StressMode;-><init>()V

    sput-object v0, Lk;->f:Lcom/google/android/apps/hangouts/hangout/StressMode;

    .line 110
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lk;->b:[Ljava/lang/Class;

    .line 115
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lk;->c:Ljava/lang/ThreadLocal;

    return-void

    :cond_0
    move-object v0, v1

    .line 94
    goto :goto_0

    .line 105
    :cond_1
    sput-object v1, Lk;->e:Ljava/util/Comparator;

    .line 106
    sput-object v1, Lk;->f:Lcom/google/android/apps/hangouts/hangout/StressMode;

    goto :goto_1
.end method

.method private a(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 485
    iget-object v1, p0, Lk;->n:[I

    if-nez v1, :cond_0

    .line 486
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No keylines defined for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - attempted index lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_0
    return v0

    .line 490
    :cond_0
    if-ltz p1, :cond_1

    iget-object v1, p0, Lk;->n:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 491
    :cond_1
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Keyline index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 495
    :cond_2
    iget-object v0, p0, Lk;->n:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Laen;
    .locals 4

    .prologue
    const/16 v2, 0x2e

    .line 499
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 531
    :goto_0
    return-object v0

    .line 504
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 518
    :cond_1
    :goto_1
    :try_start_0
    sget-object v0, Lk;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 519
    if-nez v0, :cond_4

    .line 520
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 521
    sget-object v1, Lk;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object v1, v0

    .line 523
    :goto_2
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 524
    if-nez v0, :cond_2

    .line 525
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {p2, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 527
    sget-object v2, Lk;->b:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 528
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 529
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 507
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 512
    sget-object v0, Lk;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not inflate Behavior subclass "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method private a(Landroid/view/MotionEvent;I)Z
    .locals 21

    .prologue
    .line 338
    const/4 v14, 0x0

    .line 339
    const/4 v13, 0x0

    .line 341
    const/4 v6, 0x0

    .line 343
    invoke-static/range {p1 .. p1}, Ljx;->a(Landroid/view/MotionEvent;)I

    move-result v16

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lk;->h:Ljava/util/List;

    move-object/from16 v17, v0

    .line 5322
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 5324
    invoke-virtual/range {p0 .. p0}, Lk;->isChildrenDrawingOrderEnabled()Z

    move-result v7

    .line 5325
    invoke-virtual/range {p0 .. p0}, Lk;->getChildCount()I

    move-result v8

    .line 5326
    add-int/lit8 v5, v8, -0x1

    :goto_0
    if-ltz v5, :cond_1

    .line 5327
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5}, Lk;->getChildDrawingOrder(II)I

    move-result v4

    .line 5328
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5329
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5326
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_0
    move v4, v5

    .line 5327
    goto :goto_1

    .line 5332
    :cond_1
    sget-object v4, Lk;->e:Ljava/util/Comparator;

    if-eqz v4, :cond_2

    .line 5333
    sget-object v4, Lk;->e:Ljava/util/Comparator;

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    .line 350
    const/4 v4, 0x0

    move v15, v4

    move-object v5, v6

    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_8

    .line 351
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/view/View;

    .line 352
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lm;

    .line 353
    invoke-virtual {v4}, Lm;->a()Laen;

    move-result-object v19

    .line 355
    if-nez v14, :cond_3

    if-eqz v13, :cond_4

    :cond_3
    if-eqz v16, :cond_4

    .line 358
    if-eqz v19, :cond_b

    .line 359
    if-nez v5, :cond_a

    .line 360
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 361
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 364
    :goto_3
    packed-switch p2, :pswitch_data_0

    :goto_4
    move v5, v13

    move v6, v14

    .line 350
    :goto_5
    add-int/lit8 v7, v15, 0x1

    move v15, v7

    move v13, v5

    move v14, v6

    move-object v5, v4

    goto :goto_2

    .line 366
    :pswitch_0
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12, v4}, Laen;->a(Lk;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move v5, v13

    move v6, v14

    .line 367
    goto :goto_5

    .line 369
    :pswitch_1
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Laen;->a(Landroid/view/MotionEvent;)Z

    goto :goto_4

    .line 376
    :cond_4
    if-nez v14, :cond_5

    if-eqz v19, :cond_5

    .line 377
    packed-switch p2, :pswitch_data_1

    .line 385
    :goto_6
    if-eqz v14, :cond_5

    .line 386
    move-object/from16 v0, p0

    iput-object v12, v0, Lk;->o:Landroid/view/View;

    :cond_5
    move v6, v14

    .line 392
    invoke-virtual {v4}, Lm;->d()Z

    move-result v7

    .line 393
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v12}, Lm;->a(Lk;Landroid/view/View;)Z

    move-result v8

    .line 394
    if-eqz v8, :cond_7

    if-nez v7, :cond_7

    const/4 v4, 0x1

    .line 395
    :goto_7
    if-eqz v8, :cond_6

    if-eqz v4, :cond_9

    :cond_6
    move-object/from16 v20, v5

    move v5, v4

    move-object/from16 v4, v20

    goto :goto_5

    .line 379
    :pswitch_2
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v12, v2}, Laen;->a(Lk;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_6

    .line 382
    :pswitch_3
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Laen;->a(Landroid/view/MotionEvent;)Z

    move-result v14

    goto :goto_6

    .line 394
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    :cond_8
    move v6, v14

    .line 402
    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 404
    return v6

    :cond_a
    move-object v4, v5

    goto :goto_3

    :cond_b
    move-object v4, v5

    move v6, v14

    move v5, v13

    goto :goto_5

    .line 364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 377
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static b(I)I
    .locals 0

    .prologue
    .line 1045
    if-nez p0, :cond_0

    const p0, 0x800033

    :cond_0
    return p0
.end method

.method private static c(I)I
    .locals 0

    .prologue
    .line 1053
    if-nez p0, :cond_0

    const p0, 0x800035

    :cond_0
    return p0
.end method

.method private f()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 297
    iget-object v0, p0, Lk;->o:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lk;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    invoke-virtual {v0}, Lm;->a()Laen;

    move-result-object v8

    .line 299
    if-eqz v8, :cond_0

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 301
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 303
    invoke-virtual {v8, v0}, Laen;->a(Landroid/view/MotionEvent;)Z

    .line 304
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 306
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lk;->o:Landroid/view/View;

    .line 309
    :cond_1
    invoke-virtual {p0}, Lk;->getChildCount()I

    move-result v1

    .line 310
    :goto_0
    if-ge v7, v1, :cond_2

    .line 311
    invoke-virtual {p0, v7}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 313
    invoke-virtual {v0}, Lm;->e()V

    .line 310
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 315
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Lm;
    .locals 2

    .prologue
    .line 1385
    new-instance v0, Lm;

    invoke-virtual {p0}, Lk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method a(Landroid/view/View;)Lm;
    .locals 6

    .prologue
    .line 538
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 539
    iget-boolean v1, v0, Lm;->b:Z

    if-nez v1, :cond_2

    .line 540
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 541
    const/4 v1, 0x0

    .line 542
    :goto_0
    if-eqz v2, :cond_0

    const-class v1, Ll;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ll;

    if-nez v1, :cond_0

    .line 544
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 546
    if-eqz v2, :cond_1

    .line 548
    :try_start_0
    invoke-interface {v2}, Ll;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laen;

    invoke-virtual {v0, v1}, Lm;->a(Laen;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_1
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lm;->b:Z

    .line 556
    :cond_2
    return-object v0

    .line 549
    :catch_0
    move-exception v1

    .line 550
    const-string v3, "CoordinatorLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Default behavior class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ll;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lm;
    .locals 1

    .prologue
    .line 1390
    instance-of v0, p1, Lm;

    if-eqz v0, :cond_0

    .line 1391
    new-instance v0, Lm;

    check-cast p1, Lm;

    invoke-direct {v0, p1}, Lm;-><init>(Lm;)V

    .line 1395
    :goto_0
    return-object v0

    .line 1392
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 1393
    new-instance v0, Lm;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lm;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 1395
    :cond_1
    new-instance v0, Lm;

    invoke-direct {v0, p1}, Lm;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method a()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 12174
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0}, Llc;->u(Landroid/view/View;)I

    move-result v6

    .line 1099
    iget-object v0, p0, Lk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v5, v4

    .line 1100
    :goto_0
    if-ge v5, v7, :cond_3

    .line 1101
    iget-object v0, p0, Lk;->g:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1102
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lm;

    move v3, v4

    .line 1105
    :goto_1
    if-ge v3, v5, :cond_1

    .line 1106
    iget-object v2, p0, Lk;->g:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1108
    iget-object v8, v1, Lm;->h:Landroid/view/View;

    if-ne v8, v2, :cond_0

    .line 1109
    invoke-virtual {p0, v0, v6}, Lk;->b(Landroid/view/View;I)V

    .line 1105
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 1114
    :cond_1
    iget-object v1, p0, Lk;->i:Landroid/graphics/Rect;

    .line 1115
    iget-object v2, p0, Lk;->j:Landroid/graphics/Rect;

    .line 1116
    invoke-virtual {p0, v0, v1}, Lk;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1117
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v2}, Lk;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1118
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1121
    invoke-virtual {p0, v0, v2}, Lk;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1124
    add-int/lit8 v0, v5, 0x1

    move v1, v0

    :goto_2
    if-ge v1, v7, :cond_2

    .line 1125
    iget-object v0, p0, Lk;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1126
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1124
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1100
    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 1147
    :cond_3
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 9

    .prologue
    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 738
    invoke-virtual {v0}, Lm;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_0
    iget-object v1, v0, Lm;->g:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 743
    iget-object v0, v0, Lm;->g:Landroid/view/View;

    .line 8932
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8934
    iget-object v1, p0, Lk;->i:Landroid/graphics/Rect;

    .line 8935
    iget-object v2, p0, Lk;->j:Landroid/graphics/Rect;

    .line 8936
    invoke-virtual {p0, v0, v1}, Lk;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8937
    invoke-virtual {p0, p1, p2, v1, v2}, Lk;->a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 8939
    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/view/View;->layout(IIII)V

    .line 749
    :goto_0
    return-void

    .line 744
    :cond_1
    iget v1, v0, Lm;->e:I

    if-ltz v1, :cond_3

    .line 745
    iget v1, v0, Lm;->e:I

    .line 8954
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 8955
    iget v2, v0, Lm;->c:I

    invoke-static {v2}, Lk;->c(I)I

    move-result v2

    invoke-static {v2, p2}, Liy;->a(II)I

    move-result v2

    .line 8958
    and-int/lit8 v4, v2, 0x7

    .line 8959
    and-int/lit8 v5, v2, 0x70

    .line 8960
    invoke-virtual {p0}, Lk;->getWidth()I

    move-result v6

    .line 8961
    invoke-virtual {p0}, Lk;->getHeight()I

    move-result v7

    .line 8962
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 8963
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 8965
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 8966
    sub-int v1, v6, v1

    .line 8969
    :cond_2
    invoke-direct {p0, v1}, Lk;->a(I)I

    move-result v1

    sub-int v3, v1, v8

    .line 8970
    const/4 v1, 0x0

    .line 8972
    sparse-switch v4, :sswitch_data_0

    .line 8985
    :goto_1
    sparse-switch v5, :sswitch_data_1

    .line 8999
    :goto_2
    invoke-virtual {p0}, Lk;->getPaddingLeft()I

    move-result v4

    iget v5, v0, Lm;->leftMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lk;->getPaddingRight()I

    move-result v5

    sub-int v5, v6, v5

    sub-int/2addr v5, v8

    iget v6, v0, Lm;->rightMargin:I

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 9002
    invoke-virtual {p0}, Lk;->getPaddingTop()I

    move-result v4

    iget v5, v0, Lm;->topMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lk;->getPaddingBottom()I

    move-result v5

    sub-int v5, v7, v5

    sub-int/2addr v5, v2

    iget v0, v0, Lm;->bottomMargin:I

    sub-int v0, v5, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9006
    add-int v1, v3, v8

    add-int/2addr v2, v0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 8978
    :sswitch_0
    add-int/2addr v3, v8

    .line 8979
    goto :goto_1

    .line 8981
    :sswitch_1
    div-int/lit8 v4, v8, 0x2

    add-int/2addr v3, v4

    goto :goto_1

    :sswitch_2
    move v1, v2

    .line 8992
    goto :goto_2

    .line 8994
    :sswitch_3
    div-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, 0x0

    goto :goto_2

    .line 9017
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 9018
    iget-object v4, p0, Lk;->i:Landroid/graphics/Rect;

    .line 9019
    invoke-virtual {p0}, Lk;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Lm;->leftMargin:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lk;->getPaddingTop()I

    move-result v2

    iget v3, v0, Lm;->topMargin:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lk;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lk;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v0, Lm;->rightMargin:I

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Lk;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lk;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v0, Lm;->bottomMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 9024
    iget-object v1, p0, Lk;->t:Lmq;

    if-eqz v1, :cond_4

    .line 9757
    sget-object v1, Lks;->a:Llc;

    invoke-virtual {v1, p0}, Llc;->s(Landroid/view/View;)Z

    move-result v1

    .line 9024
    if-eqz v1, :cond_4

    .line 10757
    sget-object v1, Lks;->a:Llc;

    invoke-virtual {v1, p1}, Llc;->s(Landroid/view/View;)Z

    move-result v1

    .line 9024
    if-nez v1, :cond_4

    .line 9028
    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lk;->t:Lmq;

    invoke-virtual {v2}, Lmq;->a()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v4, Landroid/graphics/Rect;->left:I

    .line 9029
    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lk;->t:Lmq;

    invoke-virtual {v2}, Lmq;->b()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v4, Landroid/graphics/Rect;->top:I

    .line 9030
    iget v1, v4, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lk;->t:Lmq;

    invoke-virtual {v2}, Lmq;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 9031
    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lk;->t:Lmq;

    invoke-virtual {v2}, Lmq;->d()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    .line 9034
    :cond_4
    iget-object v5, p0, Lk;->j:Landroid/graphics/Rect;

    .line 9035
    iget v0, v0, Lm;->c:I

    invoke-static {v0}, Lk;->b(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 11132
    sget-object v0, Liy;->a:Liz;

    move v6, p2

    invoke-interface/range {v0 .. v6}, Liz;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 9037
    iget v0, v5, Landroid/graphics/Rect;->left:I

    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v2, v5, Landroid/graphics/Rect;->right:I

    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 8972
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 8985
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Landroid/view/View;III)V
    .locals 6

    .prologue
    .line 610
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lk;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 612
    return-void
.end method

.method a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9

    .prologue
    .line 836
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 837
    iget v1, v0, Lm;->c:I

    .line 12061
    if-nez v1, :cond_0

    const/16 v1, 0x11

    .line 837
    :cond_0
    invoke-static {v1, p2}, Liy;->a(II)I

    move-result v1

    .line 839
    iget v2, v0, Lm;->d:I

    invoke-static {v2}, Lk;->b(I)I

    move-result v2

    invoke-static {v2, p2}, Liy;->a(II)I

    move-result v2

    .line 843
    and-int/lit8 v3, v1, 0x7

    .line 844
    and-int/lit8 v4, v1, 0x70

    .line 845
    and-int/lit8 v1, v2, 0x7

    .line 846
    and-int/lit8 v5, v2, 0x70

    .line 848
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 849
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 857
    sparse-switch v1, :sswitch_data_0

    .line 860
    iget v2, p3, Landroid/graphics/Rect;->left:I

    .line 870
    :goto_0
    sparse-switch v5, :sswitch_data_1

    .line 873
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 884
    :goto_1
    sparse-switch v3, :sswitch_data_2

    .line 887
    sub-int/2addr v2, v6

    .line 897
    :goto_2
    :sswitch_0
    sparse-switch v4, :sswitch_data_3

    .line 900
    sub-int/2addr v1, v7

    .line 910
    :goto_3
    :sswitch_1
    invoke-virtual {p0}, Lk;->getWidth()I

    move-result v3

    .line 911
    invoke-virtual {p0}, Lk;->getHeight()I

    move-result v4

    .line 914
    invoke-virtual {p0}, Lk;->getPaddingLeft()I

    move-result v5

    iget v8, v0, Lm;->leftMargin:I

    add-int/2addr v5, v8

    invoke-virtual {p0}, Lk;->getPaddingRight()I

    move-result v8

    sub-int/2addr v3, v8

    sub-int/2addr v3, v6

    iget v8, v0, Lm;->rightMargin:I

    sub-int/2addr v3, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 917
    invoke-virtual {p0}, Lk;->getPaddingTop()I

    move-result v3

    iget v5, v0, Lm;->topMargin:I

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lk;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, v7

    iget v0, v0, Lm;->bottomMargin:I

    sub-int v0, v4, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 921
    add-int v1, v2, v6

    add-int v3, v0, v7

    invoke-virtual {p4, v2, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 922
    return-void

    .line 863
    :sswitch_2
    iget v2, p3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 866
    :sswitch_3
    iget v1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    goto :goto_0

    .line 876
    :sswitch_4
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 879
    :sswitch_5
    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    goto :goto_1

    .line 893
    :sswitch_6
    div-int/lit8 v3, v6, 0x2

    sub-int/2addr v2, v3

    goto :goto_2

    .line 906
    :sswitch_7
    div-int/lit8 v3, v7, 0x2

    sub-int/2addr v1, v3

    goto :goto_3

    .line 857
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch

    .line 870
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 884
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 897
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_7
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 582
    invoke-static {p0, p1, p2}, Lab;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 583
    return-void
.end method

.method a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 815
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 816
    :cond_0
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 824
    :goto_0
    return-void

    .line 819
    :cond_1
    if-eqz p2, :cond_2

    .line 820
    invoke-virtual {p0, p1, p3}, Lk;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 822
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;II)Z
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lk;->i:Landroid/graphics/Rect;

    .line 1358
    invoke-virtual {p0, p1, v0}, Lk;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1359
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method b()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1235
    invoke-virtual {p0}, Lk;->getChildCount()I

    move-result v2

    move v1, v0

    .line 1236
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1237
    invoke-virtual {p0, v1}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1238
    invoke-virtual {p0, v3}, Lk;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1239
    const/4 v0, 0x1

    .line 1244
    :cond_0
    iget-boolean v1, p0, Lk;->s:Z

    if-eq v0, v1, :cond_1

    .line 1245
    if-eqz v0, :cond_3

    .line 1246
    invoke-virtual {p0}, Lk;->c()V

    .line 1251
    :cond_1
    :goto_1
    return-void

    .line 1236
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1248
    :cond_3
    invoke-virtual {p0}, Lk;->d()V

    goto :goto_1
.end method

.method b(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 1317
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 1318
    iget-object v1, v0, Lm;->g:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1319
    iget-object v1, p0, Lk;->i:Landroid/graphics/Rect;

    .line 1320
    iget-object v2, p0, Lk;->j:Landroid/graphics/Rect;

    .line 1321
    iget-object v3, p0, Lk;->k:Landroid/graphics/Rect;

    .line 1323
    iget-object v0, v0, Lm;->g:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lk;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1324
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lk;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1325
    invoke-virtual {p0, p1, p2, v1, v3}, Lk;->a(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1327
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 1328
    iget v1, v3, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 1330
    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1333
    :cond_0
    if-eqz v1, :cond_1

    .line 1334
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1345
    :cond_1
    return-void
.end method

.method b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 789
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 790
    invoke-virtual {v0, p2}, Lm;->a(Landroid/graphics/Rect;)V

    .line 791
    return-void
.end method

.method b(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1257
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 1258
    iget-object v3, v0, Lm;->g:Landroid/view/View;

    if-eqz v3, :cond_0

    move v0, v1

    .line 1272
    :goto_0
    return v0

    .line 1262
    :cond_0
    invoke-virtual {p0}, Lk;->getChildCount()I

    move-result v4

    move v3, v2

    .line 1263
    :goto_1
    if-ge v3, v4, :cond_2

    .line 1264
    invoke-virtual {p0, v3}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1265
    if-eq v5, p1, :cond_1

    .line 1268
    invoke-virtual {v0, v5}, Lm;->a(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 1269
    goto :goto_0

    .line 1263
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1272
    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 1280
    iget-boolean v0, p0, Lk;->m:Z

    if-eqz v0, :cond_1

    .line 1282
    iget-object v0, p0, Lk;->r:Ln;

    if-nez v0, :cond_0

    .line 1283
    new-instance v0, Ln;

    invoke-direct {v0, p0}, Ln;-><init>(Lk;)V

    iput-object v0, p0, Lk;->r:Ln;

    .line 1285
    :cond_0
    invoke-virtual {p0}, Lk;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1286
    iget-object v1, p0, Lk;->r:Ln;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1291
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk;->s:Z

    .line 1292
    return-void
.end method

.method c(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 801
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 802
    invoke-virtual {v0}, Lm;->b()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 803
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1405
    instance-of v0, p1, Lm;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 2

    .prologue
    .line 1299
    iget-boolean v0, p0, Lk;->m:Z

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lk;->r:Ln;

    if-eqz v0, :cond_0

    .line 1301
    invoke-virtual {p0}, Lk;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1302
    iget-object v1, p0, Lk;->r:Ln;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1305
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lk;->s:Z

    .line 1306
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .prologue
    .line 1066
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1077
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected e()Lm;
    .locals 1

    .prologue
    .line 1400
    new-instance v0, Lm;

    invoke-direct {v0}, Lm;-><init>()V

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lk;->e()Lm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lk;->a(Landroid/util/AttributeSet;)Lm;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lk;->a(Landroid/view/ViewGroup$LayoutParams;)Lm;

    move-result-object v0

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 1575
    iget-object v0, p0, Lk;->x:Lkf;

    invoke-virtual {v0}, Lkf;->a()I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 592
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Lk;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lk;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 587
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Lk;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lk;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 209
    invoke-direct {p0}, Lk;->f()V

    .line 210
    iget-boolean v0, p0, Lk;->s:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lk;->r:Ln;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ln;

    invoke-direct {v0, p0}, Ln;-><init>(Lk;)V

    iput-object v0, p0, Lk;->r:Ln;

    .line 214
    :cond_0
    invoke-virtual {p0}, Lk;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lk;->r:Ln;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 217
    :cond_1
    iget-object v0, p0, Lk;->t:Lmq;

    if-nez v0, :cond_2

    .line 3757
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0}, Llc;->s(Landroid/view/View;)Z

    move-result v0

    .line 217
    if-eqz v0, :cond_2

    .line 4736
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0}, Llc;->r(Landroid/view/View;)V

    .line 222
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk;->m:Z

    .line 223
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 228
    invoke-direct {p0}, Lk;->f()V

    .line 229
    iget-boolean v0, p0, Lk;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk;->r:Ln;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lk;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lk;->r:Ln;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 233
    :cond_0
    iget-object v0, p0, Lk;->q:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lk;->q:Landroid/view/View;

    invoke-virtual {p0, v0}, Lk;->onStopNestedScroll(Landroid/view/View;)V

    .line 236
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lk;->m:Z

    .line 237
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 768
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 769
    iget-boolean v0, p0, Lk;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lk;->t:Lmq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk;->t:Lmq;

    invoke-virtual {v0}, Lmq;->b()I

    move-result v0

    .line 771
    :goto_0
    if-lez v0, :cond_0

    .line 772
    iget-object v2, p0, Lk;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lk;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 773
    iget-object v0, p0, Lk;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 776
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 770
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 411
    invoke-static {p1}, Ljx;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 414
    if-nez v0, :cond_0

    .line 415
    invoke-direct {p0}, Lk;->f()V

    .line 418
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lk;->a(Landroid/view/MotionEvent;I)Z

    move-result v1

    .line 424
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 425
    :cond_1
    invoke-direct {p0}, Lk;->f()V

    .line 428
    :cond_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 11174
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0}, Llc;->u(Landroid/view/View;)I

    move-result v2

    .line 754
    iget-object v0, p0, Lk;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 755
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 756
    iget-object v0, p0, Lk;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 757
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 761
    invoke-virtual {p0, v0, v2}, Lk;->a(Landroid/view/View;I)V

    .line 755
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 764
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23

    .prologue
    .line 5560
    move-object/from16 v0, p0

    iget-object v1, v0, Lk;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5561
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lk;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 5562
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5564
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lk;->a(Landroid/view/View;)Lm;

    move-result-object v4

    .line 5565
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v3}, Lm;->b(Lk;Landroid/view/View;)Landroid/view/View;

    .line 5567
    move-object/from16 v0, p0

    iget-object v4, v0, Lk;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5571
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lk;->g:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lk;->d:Ljava/util/Comparator;

    .line 5650
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 617
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lk;->b()V

    .line 619
    invoke-virtual/range {p0 .. p0}, Lk;->getPaddingLeft()I

    move-result v12

    .line 620
    invoke-virtual/range {p0 .. p0}, Lk;->getPaddingTop()I

    move-result v2

    .line 621
    invoke-virtual/range {p0 .. p0}, Lk;->getPaddingRight()I

    move-result v13

    .line 622
    invoke-virtual/range {p0 .. p0}, Lk;->getPaddingBottom()I

    move-result v4

    .line 6174
    sget-object v1, Lks;->a:Llc;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Llc;->u(Landroid/view/View;)I

    move-result v14

    .line 624
    const/4 v1, 0x1

    if-ne v14, v1, :cond_9

    const/4 v1, 0x1

    move v3, v1

    .line 625
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 626
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 627
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 628
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 630
    add-int v19, v12, v13

    .line 631
    add-int v20, v2, v4

    .line 632
    invoke-virtual/range {p0 .. p0}, Lk;->getSuggestedMinimumWidth()I

    move-result v6

    .line 633
    invoke-virtual/range {p0 .. p0}, Lk;->getSuggestedMinimumHeight()I

    move-result v5

    .line 634
    const/4 v2, 0x0

    .line 636
    move-object/from16 v0, p0

    iget-object v1, v0, Lk;->t:Lmq;

    if-eqz v1, :cond_a

    .line 6757
    sget-object v1, Lks;->a:Llc;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Llc;->s(Landroid/view/View;)Z

    move-result v1

    .line 636
    if-eqz v1, :cond_a

    const/4 v1, 0x1

    move v4, v1

    .line 638
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lk;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v21

    .line 639
    const/4 v1, 0x0

    move v8, v1

    move v9, v2

    move v10, v5

    move v11, v6

    :goto_3
    move/from16 v0, v21

    if-ge v8, v0, :cond_e

    .line 640
    move-object/from16 v0, p0

    iget-object v1, v0, Lk;->g:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 641
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lm;

    .line 643
    const/4 v5, 0x0

    .line 644
    iget v6, v2, Lm;->e:I

    if-ltz v6, :cond_10

    if-eqz v15, :cond_10

    .line 645
    iget v6, v2, Lm;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lk;->a(I)I

    move-result v6

    .line 646
    iget v7, v2, Lm;->c:I

    invoke-static {v7}, Lk;->c(I)I

    move-result v7

    invoke-static {v7, v14}, Liy;->a(II)I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    .line 649
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v7, v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v7, v0, :cond_b

    if-eqz v3, :cond_b

    .line 651
    :cond_3
    const/4 v5, 0x0

    sub-int v7, v16, v13

    sub-int v6, v7, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v7, v5

    .line 660
    :goto_4
    if-eqz v4, :cond_f

    .line 7757
    sget-object v5, Lks;->a:Llc;

    invoke-virtual {v5, v1}, Llc;->s(Landroid/view/View;)Z

    move-result v5

    .line 660
    if-nez v5, :cond_f

    .line 663
    move-object/from16 v0, p0

    iget-object v5, v0, Lk;->t:Lmq;

    invoke-virtual {v5}, Lmq;->a()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lk;->t:Lmq;

    invoke-virtual {v6}, Lmq;->c()I

    move-result v6

    add-int/2addr v5, v6

    .line 665
    move-object/from16 v0, p0

    iget-object v6, v0, Lk;->t:Lmq;

    invoke-virtual {v6}, Lmq;->b()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lk;->t:Lmq;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmq;->d()I

    move-result v22

    add-int v22, v22, v6

    .line 668
    sub-int v5, v16, v5

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 670
    sub-int v5, v18, v22

    move/from16 v0, v17

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 677
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v6, v7, v5}, Lk;->a(Landroid/view/View;III)V

    .line 681
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v5, v5, v19

    iget v6, v2, Lm;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v2, Lm;->rightMargin:I

    add-int/2addr v5, v6

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 684
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int v5, v5, v20

    iget v7, v2, Lm;->topMargin:I

    add-int/2addr v5, v7

    iget v2, v2, Lm;->bottomMargin:I

    add-int/2addr v2, v5

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 8275
    sget-object v2, Lks;->a:Llc;

    invoke-virtual {v2, v1}, Llc;->e(Landroid/view/View;)I

    move-result v1

    .line 8287
    sget-object v2, Lks;->a:Llc;

    invoke-virtual {v2, v9, v1}, Llc;->a(II)I

    move-result v2

    .line 639
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v9, v2

    move v10, v5

    move v11, v6

    goto/16 :goto_3

    .line 5654
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [Landroid/view/View;

    .line 5655
    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5656
    array-length v7, v6

    .line 5658
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v7, :cond_8

    .line 5661
    add-int/lit8 v2, v3, 0x1

    move v1, v3

    :goto_7
    if-ge v2, v7, :cond_6

    .line 5662
    aget-object v8, v6, v2

    aget-object v9, v6, v1

    invoke-interface {v5, v8, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_5

    move v1, v2

    .line 5661
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5667
    :cond_6
    if-eq v3, v1, :cond_7

    .line 5669
    aget-object v2, v6, v1

    .line 5670
    aget-object v8, v6, v3

    aput-object v8, v6, v1

    .line 5671
    aput-object v2, v6, v3

    .line 5658
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 5676
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 5677
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v7, :cond_1

    .line 5678
    aget-object v2, v6, v1

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5677
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 624
    :cond_9
    const/4 v1, 0x0

    move v3, v1

    goto/16 :goto_1

    .line 636
    :cond_a
    const/4 v1, 0x0

    move v4, v1

    goto/16 :goto_2

    .line 652
    :cond_b
    const/16 v22, 0x5

    move/from16 v0, v22

    if-ne v7, v0, :cond_c

    if-eqz v3, :cond_d

    :cond_c
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v7, v0, :cond_10

    if-eqz v3, :cond_10

    .line 654
    :cond_d
    const/4 v5, 0x0

    sub-int/2addr v6, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v7, v5

    goto/16 :goto_4

    .line 690
    :cond_e
    const/high16 v1, -0x1000000

    and-int/2addr v1, v9

    move/from16 v0, p1

    invoke-static {v11, v0, v1}, Lks;->a(III)I

    move-result v1

    .line 692
    shl-int/lit8 v2, v9, 0x10

    move/from16 v0, p2

    invoke-static {v10, v0, v2}, Lks;->a(III)I

    move-result v2

    .line 694
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lk;->setMeasuredDimension(II)V

    .line 695
    return-void

    :cond_f
    move/from16 v5, p2

    move/from16 v6, p1

    goto/16 :goto_5

    :cond_10
    move v7, v5

    goto/16 :goto_4
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1535
    invoke-virtual {p0}, Lk;->getChildCount()I

    move-result v2

    move v0, v1

    .line 1536
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1537
    invoke-virtual {p0, v0}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1538
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1536
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1552
    :cond_0
    return v1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1558
    invoke-virtual {p0}, Lk;->getChildCount()I

    move-result v2

    move v0, v1

    .line 1559
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1560
    invoke-virtual {p0, v0}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1561
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1559
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1571
    :cond_0
    return v1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 1502
    invoke-virtual {p0}, Lk;->getChildCount()I

    move-result v7

    move v5, v6

    move v2, v6

    move v3, v6

    move v4, v6

    .line 1503
    :goto_0
    if-ge v5, v7, :cond_2

    .line 1504
    invoke-virtual {p0, v5}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1505
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 1506
    invoke-virtual {v0}, Lm;->g()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1510
    invoke-virtual {v0}, Lm;->a()Laen;

    move-result-object v0

    .line 1511
    if-eqz v0, :cond_4

    .line 1512
    iget-object v0, p0, Lk;->l:[I

    iget-object v2, p0, Lk;->l:[I

    aput v6, v2, v1

    aput v6, v0, v6

    .line 1515
    if-lez p2, :cond_0

    iget-object v0, p0, Lk;->l:[I

    aget v0, v0, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1517
    :goto_1
    if-lez p3, :cond_1

    iget-object v0, p0, Lk;->l:[I

    aget v0, v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    move v3, v2

    move v2, v0

    move v0, v1

    .line 1503
    :goto_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 1515
    :cond_0
    iget-object v0, p0, Lk;->l:[I

    aget v0, v0, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 1517
    :cond_1
    iget-object v0, p0, Lk;->l:[I

    aget v0, v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 1524
    :cond_2
    aput v4, p4, v6

    .line 1525
    aput v3, p4, v1

    .line 1527
    if-eqz v2, :cond_3

    .line 1528
    invoke-virtual {p0}, Lk;->a()V

    .line 1530
    :cond_3
    return-void

    :cond_4
    move v0, v2

    move v2, v3

    move v3, v4

    goto :goto_3
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1474
    invoke-virtual {p0}, Lk;->getChildCount()I

    move-result v3

    move v2, v0

    move v1, v0

    .line 1477
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1478
    invoke-virtual {p0, v2}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1479
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 1480
    invoke-virtual {v0}, Lm;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1484
    invoke-virtual {v0}, Lm;->a()Laen;

    move-result-object v0

    .line 1485
    if-eqz v0, :cond_2

    .line 1488
    const/4 v0, 0x1

    .line 1477
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 1492
    :cond_0
    if-eqz v1, :cond_1

    .line 1493
    invoke-virtual {p0}, Lk;->a()V

    .line 1495
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 1430
    iget-object v0, p0, Lk;->x:Lkf;

    invoke-virtual {v0, p3}, Lkf;->a(I)V

    .line 1431
    iput-object p1, p0, Lk;->p:Landroid/view/View;

    .line 1432
    iput-object p2, p0, Lk;->q:Landroid/view/View;

    .line 1434
    invoke-virtual {p0}, Lk;->getChildCount()I

    move-result v1

    .line 1435
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1436
    invoke-virtual {p0, v0}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1437
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1447
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6

    .prologue
    .line 2550
    check-cast p1, Lo;

    .line 2551
    invoke-virtual {p1}, Lo;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2553
    iget-object v1, p1, Lo;->a:Landroid/util/SparseArray;

    .line 2555
    const/4 v0, 0x0

    invoke-virtual {p0}, Lk;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 2556
    invoke-virtual {p0, v0}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2557
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    .line 2558
    invoke-virtual {p0, v3}, Lk;->a(Landroid/view/View;)Lm;

    move-result-object v3

    .line 2559
    invoke-virtual {v3}, Lm;->a()Laen;

    move-result-object v3

    .line 2561
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    if-eqz v3, :cond_0

    .line 2562
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 2555
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2568
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 2572
    new-instance v2, Lo;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v2, v0}, Lo;-><init>(Landroid/os/Parcelable;)V

    .line 2574
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2575
    const/4 v0, 0x0

    invoke-virtual {p0}, Lk;->getChildCount()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 2576
    invoke-virtual {p0, v1}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2577
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    .line 2578
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 2579
    invoke-virtual {v0}, Lm;->a()Laen;

    move-result-object v0

    .line 2581
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    if-eqz v0, :cond_0

    .line 2583
    invoke-virtual {v0}, Laen;->e()Landroid/os/Parcelable;

    move-result-object v0

    .line 2584
    if-eqz v0, :cond_0

    .line 2585
    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2575
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2589
    :cond_1
    iput-object v3, v2, Lo;->a:Landroid/util/SparseArray;

    .line 2590
    return-object v2
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1411
    invoke-virtual {p0}, Lk;->getChildCount()I

    move-result v3

    move v1, v2

    .line 1412
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1413
    invoke-virtual {p0, v1}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1414
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 1423
    invoke-virtual {v0, v2}, Lm;->a(Z)V

    .line 1412
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1426
    :cond_0
    return v2
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1450
    iget-object v0, p0, Lk;->x:Lkf;

    invoke-virtual {v0}, Lkf;->b()V

    .line 1452
    invoke-virtual {p0}, Lk;->getChildCount()I

    move-result v2

    .line 1453
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 1454
    invoke-virtual {p0, v1}, Lk;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1455
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 1456
    invoke-virtual {v0}, Lm;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1464
    invoke-virtual {v0}, Lm;->f()V

    .line 1465
    invoke-virtual {v0}, Lm;->h()V

    .line 1453
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1468
    :cond_1
    iput-object v4, p0, Lk;->p:Landroid/view/View;

    .line 1469
    iput-object v4, p0, Lk;->q:Landroid/view/View;

    .line 1470
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v4, 0x3

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 435
    const/4 v2, 0x0

    .line 437
    invoke-static {p1}, Ljx;->a(Landroid/view/MotionEvent;)I

    move-result v9

    .line 439
    iget-object v0, p0, Lk;->o:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-direct {p0, p1, v10}, Lk;->a(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v0

    .line 442
    :goto_0
    iget-object v0, p0, Lk;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lm;

    .line 443
    invoke-virtual {v0}, Lm;->a()Laen;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_5

    .line 445
    invoke-virtual {v0, p1}, Laen;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    move v8, v0

    .line 450
    :goto_1
    iget-object v0, p0, Lk;->o:Landroid/view/View;

    if-nez v0, :cond_3

    .line 451
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v8, v0

    move-object v0, v2

    .line 465
    :goto_2
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 469
    :cond_0
    if-eq v9, v10, :cond_1

    if-ne v9, v4, :cond_2

    .line 470
    :cond_1
    invoke-direct {p0}, Lk;->f()V

    .line 473
    :cond_2
    return v8

    .line 452
    :cond_3
    if-eqz v1, :cond_4

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, v0

    move v6, v5

    .line 455
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 458
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_2

    :cond_5
    move v8, v7

    goto :goto_1

    :cond_6
    move v1, v0

    move v8, v7

    goto :goto_1

    :cond_7
    move v1, v7

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 478
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 479
    if-eqz p1, :cond_0

    .line 480
    invoke-direct {p0}, Lk;->f()V

    .line 482
    :cond_0
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lk;->w:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 204
    return-void
.end method
