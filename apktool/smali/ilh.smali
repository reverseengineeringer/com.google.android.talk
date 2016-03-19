.class public final Lilh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Limw;

.field private static final b:Ljava/lang/Object;

.field private static final c:Lilm;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lilh;

.field private f:Ljava/lang/String;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lilq;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Limw;

    const-string v1, "debug.binder.verification"

    invoke-direct {v0, v1}, Limw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lilh;->a:Limw;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lilh;->b:Ljava/lang/Object;

    .line 41
    new-instance v0, Lilm;

    new-instance v1, Liln;

    invoke-direct {v1}, Liln;-><init>()V

    invoke-direct {v0, v1}, Lilm;-><init>(Liln;)V

    sput-object v0, Lilh;->c:Lilm;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lilh;->g:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lilh;->h:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lilh;->i:Ljava/util/HashSet;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lilh;->j:Ljava/util/ArrayList;

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lilh;-><init>(Landroid/content/Context;Lilh;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lilh;)V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lilh;->g:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lilh;->h:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lilh;->i:Ljava/util/HashSet;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lilh;->j:Ljava/util/ArrayList;

    .line 89
    iput-object p1, p0, Lilh;->d:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lilh;->e:Lilh;

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lilh;->f:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static a(Landroid/content/Context;Lav;)Lilh;
    .locals 1

    .prologue
    .line 558
    :goto_0
    if-eqz p1, :cond_1

    .line 559
    invoke-static {p1}, Lilh;->a(Ljava/lang/Object;)Lilh;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_0

    .line 565
    :goto_1
    return-object v0

    .line 563
    :cond_0
    invoke-virtual {p1}, Lav;->getParentFragment()Lav;

    move-result-object p1

    goto :goto_0

    .line 565
    :cond_1
    invoke-static {p0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/Object;)Lilh;
    .locals 4

    .prologue
    .line 615
    instance-of v0, p0, Lilk;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 616
    check-cast v0, Lilk;

    invoke-interface {v0}, Lilk;->getBinder()Lilh;

    move-result-object v0

    .line 617
    if-nez v0, :cond_1

    .line 618
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "BinderContext must not return null Binder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 492
    invoke-static {p0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    .line 493
    invoke-virtual {v0, p1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lilh;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Binder not initialized yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lilh;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_1

    sget-object v1, Lilh;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    .line 307
    monitor-exit p0

    move-object p2, v0

    .line 314
    :goto_0
    return-object p2

    .line 309
    :cond_1
    if-nez v0, :cond_2

    .line 310
    iget-object v0, p0, Lilh;->g:Ljava/util/Map;

    sget-object v1, Lilh;->b:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object p0, p0, Lilh;->e:Lilh;

    if-nez p0, :cond_0

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 517
    invoke-static {p0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lilh;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lilh;->b()V

    .line 365
    iget-object v0, p0, Lilh;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_1

    .line 367
    sget-object v1, Lilh;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 368
    new-instance v0, Lilj;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Bind call too late - someone already tried to get: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lilj;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 371
    :cond_0
    :try_start_1
    new-instance v1, Lili;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Duplicate binding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lili;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_1
    iget-object v0, p0, Lilh;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    monitor-exit p0

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 538
    invoke-static {p0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lilh;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 524
    invoke-static {p0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lilh;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Lilh;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 572
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move v1, v2

    move-object v0, p0

    .line 576
    :cond_0
    invoke-static {v0}, Lilh;->a(Ljava/lang/Object;)Lilh;

    move-result-object v3

    .line 577
    if-eqz v3, :cond_1

    move-object v0, v3

    .line 598
    :goto_0
    return-object v0

    .line 581
    :cond_1
    if-ne v0, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    or-int/2addr v1, v3

    .line 583
    instance-of v3, v0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_3

    .line 584
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 586
    if-nez v0, :cond_4

    .line 587
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid ContextWrapper -- If this is a Robolectric test, have you called ActivityController.create()?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v3, v2

    .line 581
    goto :goto_1

    .line 591
    :cond_3
    if-nez v1, :cond_5

    move-object v0, v4

    .line 596
    :cond_4
    :goto_2
    if-nez v0, :cond_0

    .line 598
    invoke-static {v4}, Lilh;->c(Landroid/content/Context;)Lilh;

    move-result-object v0

    goto :goto_0

    .line 594
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {p0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    .line 502
    invoke-virtual {v0, p1}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lilh;->k:Z

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lilj;

    const-string v1, "This binder is sealed for modification"

    invoke-direct {v0, v1}, Lilj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lilh;->b()V

    .line 388
    iget-object v0, p0, Lilh;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 389
    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    iget-object v1, p0, Lilh;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static c(Landroid/content/Context;)Lilh;
    .locals 2

    .prologue
    .line 602
    sget-object v0, Lilh;->c:Lilm;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lilm;->a(Landroid/content/Context;)Lilh;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 509
    invoke-static {p0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v0

    .line 510
    invoke-virtual {v0, p1}, Lilh;->c(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized d(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 399
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lilh;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Binder not initialized yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 404
    :cond_0
    :try_start_1
    iget-object v0, p0, Lilh;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_3

    .line 406
    sget-object v1, Lilh;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v1, :cond_2

    .line 438
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 406
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 410
    :cond_3
    :try_start_2
    iget-boolean v2, p0, Lilh;->k:Z

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lilh;->k:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    :try_start_3
    iget-object v0, p0, Lilh;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 414
    :goto_1
    if-ge v1, v3, :cond_5

    .line 415
    iget-object v0, p0, Lilh;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lilq;

    iget-object v4, p0, Lilh;->d:Landroid/content/Context;

    invoke-interface {v0, v4, p1, p0}, Lilq;->a(Landroid/content/Context;Ljava/lang/Class;Lilh;)V

    .line 418
    iget-object v0, p0, Lilh;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 419
    if-eqz v0, :cond_4

    .line 425
    :try_start_4
    iput-boolean v2, p0, Lilh;->k:Z

    goto :goto_0

    .line 414
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 425
    :cond_5
    iput-boolean v2, p0, Lilh;->k:Z

    .line 428
    iget-object v0, p0, Lilh;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 429
    if-nez v0, :cond_1

    .line 436
    iget-object v1, p0, Lilh;->g:Ljava/util/Map;

    sget-object v2, Lilh;->b:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 425
    :catchall_1
    move-exception v0

    iput-boolean v2, p0, Lilh;->k:Z

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private declared-synchronized e(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 444
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lilh;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Binder not initialized yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 449
    :cond_0
    :try_start_1
    iget-object v0, p0, Lilh;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 450
    if-nez v0, :cond_3

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    iget-object v2, p0, Lilh;->h:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v0

    .line 462
    :goto_0
    iget-object v0, p0, Lilh;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 463
    iget-object v0, p0, Lilh;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 464
    iget-boolean v3, p0, Lilh;->k:Z

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lilh;->k:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    :try_start_2
    iget-object v0, p0, Lilh;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 468
    :goto_1
    if-ge v1, v4, :cond_1

    .line 469
    iget-object v0, p0, Lilh;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lilq;

    iget-object v5, p0, Lilh;->d:Landroid/content/Context;

    invoke-interface {v0, v5, p1, p0}, Lilq;->a(Landroid/content/Context;Ljava/lang/Class;Lilh;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 468
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 472
    :cond_1
    :try_start_3
    iput-boolean v3, p0, Lilh;->k:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 476
    :cond_2
    monitor-exit p0

    return-object v2

    .line 472
    :catchall_1
    move-exception v0

    :try_start_4
    iput-boolean v3, p0, Lilh;->k:Z

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lilq;)Lilh;
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lilh;->b()V

    .line 196
    iget-object v0, p0, Lilh;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-object p0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)",
            "Lilh;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lilh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    return-object p0
.end method

.method public varargs a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[TT;)",
            "Lilh;"
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 142
    aget-object v1, p2, v0

    invoke-virtual {p0, p1, v1}, Lilh;->b(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lilh;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lilh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lilh;
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lilh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    return-object p0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p0, p1}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    return-object v0

    .line 1219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1220
    const-string v1, "Unbound type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nSearched binders:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    :goto_0
    iget-object v1, p0, Lilh;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    iget-object p0, p0, Lilh;->e:Lilh;

    .line 1226
    if-eqz p0, :cond_1

    .line 1229
    const-string v1, " ->\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1231
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v2, "Binder"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    throw v1
.end method

.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 346
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lilh;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 107
    iput-object p1, p0, Lilh;->d:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lilh;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lilh;->f:Ljava/lang/String;

    .line 112
    :cond_0
    return-void
.end method

.method public a(Lilh;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lilh;->e:Lilh;

    .line 119
    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 293
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lilh;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Object;)Lilh;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)",
            "Lilh;"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Lilh;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    return-object p0
.end method

.method public b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-static {p1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_0
    invoke-direct {p0, p1}, Lilh;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_1

    .line 248
    :goto_0
    return-object v0

    .line 246
    :cond_1
    iget-object p0, p0, Lilh;->e:Lilh;

    .line 247
    if-nez p0, :cond_0

    .line 248
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lilh;->f:Ljava/lang/String;

    .line 612
    return-void
.end method

.method public c(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {p1}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    :cond_0
    invoke-direct {p0, p1}, Lilh;->e(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 262
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    iget-object p0, p0, Lilh;->e:Lilh;

    .line 264
    if-nez p0, :cond_0

    .line 265
    return-object v0
.end method
