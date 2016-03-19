.class public final Lfev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lbcn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lfev;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lffe;

.field private b:Lhpz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 392
    new-instance v0, Lfew;

    invoke-direct {v0}, Lfew;-><init>()V

    sput-object v0, Lfev;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(B)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Lbfd;
    .locals 5

    .prologue
    .line 277
    invoke-static {}, Lffe;->h()[I

    move-result-object v2

    .line 278
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget v0, v2, v1

    .line 279
    invoke-static {v0}, Lffe;->b(I)Lbfd;

    move-result-object v0

    .line 280
    invoke-direct {p0, v0}, Lfev;->a(Lbfd;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 281
    iget-object v1, p0, Lfev;->a:Lffe;

    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lffe;->a(Ljava/lang/String;)V

    .line 285
    :goto_1
    return-object v0

    .line 278
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 285
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Lfex;
    .locals 7

    .prologue
    .line 333
    new-instance v4, Lfex;

    invoke-direct {v4}, Lfex;-><init>()V

    .line 334
    iget-object v0, p0, Lfev;->a:Lffe;

    .line 335
    invoke-virtual {v0}, Lffe;->b()Lgrg;

    move-result-object v0

    iget-object v1, p0, Lfev;->a:Lffe;

    invoke-virtual {v1}, Lffe;->a()Lfic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgrg;->a(Lfic;)Lfij;

    move-result-object v0

    invoke-interface {v0}, Lfij;->a()Lfim;

    move-result-object v0

    check-cast v0, Lgro;

    .line 337
    :try_start_0
    invoke-virtual {v0}, Lgro;->j()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 338
    invoke-virtual {v0}, Lfkg;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgrm;

    .line 339
    invoke-interface {v1}, Lgrm;->U_()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 340
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    invoke-interface {v1}, Lgrm;->U_()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 11374
    iget-object v3, v4, Lfex;->a:Ljava/util/Map;

    .line 343
    invoke-static {v1}, Lffe;->b(Lgrm;)Lgrp;

    move-result-object v1

    .line 342
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 359
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lfkg;->b()V

    throw v1

    .line 344
    :cond_1
    :try_start_1
    const-string v3, "/hangouts/profiles/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 345
    invoke-interface {v1}, Lgrm;->U_()Landroid/net/Uri;

    move-result-object v1

    .line 12374
    iget-object v2, v4, Lfex;->c:Ljava/util/Map;

    .line 346
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 347
    :cond_2
    const-string v3, "/conversations/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-interface {v1}, Lgrm;->U_()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 13374
    iget-object v3, v4, Lfex;->b:Ljava/util/Map;

    .line 349
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 350
    if-nez v3, :cond_3

    .line 351
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 14374
    iget-object v6, v4, Lfex;->b:Ljava/util/Map;

    .line 352
    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_3
    invoke-interface {v1}, Lgrm;->U_()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 359
    :cond_4
    invoke-virtual {v0}, Lfkg;->b()V

    .line 361
    return-object v4
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgrp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "wear"

    .line 319
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_1
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 322
    iget-object v2, p0, Lfev;->a:Lffe;

    invoke-virtual {v2}, Lffe;->b()Lgrg;

    move-result-object v2

    iget-object v3, p0, Lfev;->a:Lffe;

    invoke-virtual {v3}, Lffe;->a()Lfic;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lgrg;->b(Lfic;Landroid/net/Uri;)Lfij;

    move-result-object v0

    invoke-interface {v0}, Lfij;->a()Lfim;

    goto :goto_0

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_1
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgrp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    const-string v0, "/hangouts/accounts/"

    invoke-static {v0}, Lgrw;->a(Ljava/lang/String;)Lgrw;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lgrw;->b()Lgrp;

    move-result-object v1

    .line 297
    const-string v2, "2"

    invoke-virtual {v1, v2, p1}, Lgrp;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 298
    iget-object v1, p0, Lfev;->a:Lffe;

    .line 299
    invoke-virtual {v1}, Lffe;->b()Lgrg;

    move-result-object v1

    iget-object v2, p0, Lfev;->a:Lffe;

    .line 300
    invoke-virtual {v2}, Lffe;->a()Lfic;

    move-result-object v2

    invoke-virtual {v0}, Lgrw;->c()Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lgrg;->a(Lfic;Lcom/google/android/gms/wearable/PutDataRequest;)Lfij;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Lfij;->a()Lfim;

    .line 302
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 306
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 308
    iget-object v3, p0, Lfev;->a:Lffe;

    invoke-virtual {v3}, Lffe;->b()Lgrg;

    move-result-object v3

    iget-object v4, p0, Lfev;->a:Lffe;

    invoke-virtual {v4}, Lffe;->a()Lfic;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lgrg;->b(Lfic;Landroid/net/Uri;)Lfij;

    move-result-object v0

    invoke-interface {v0}, Lfij;->a()Lfim;

    goto :goto_0

    .line 311
    :cond_1
    return-void
.end method

.method private a(Lbfd;)Z
    .locals 2

    .prologue
    .line 289
    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {p1}, Lbfd;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfev;->b:Lhpz;

    .line 291
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhpz;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 328
    iget-object v2, p0, Lfev;->a:Lffe;

    invoke-virtual {v2}, Lffe;->b()Lgrg;

    move-result-object v2

    iget-object v3, p0, Lfev;->a:Lffe;

    invoke-virtual {v3}, Lffe;->a()Lfic;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lgrg;->b(Lfic;Landroid/net/Uri;)Lfij;

    move-result-object v0

    invoke-interface {v0}, Lfij;->a()Lfim;

    goto :goto_0

    .line 330
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lbcg;)I
    .locals 19

    .prologue
    .line 64
    const-class v2, Lffi;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lffi;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lffi;->a(Landroid/content/Context;)Lffe;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lfev;->a:Lffe;

    .line 65
    const-class v2, Lhpz;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhpz;

    move-object/from16 v0, p0

    iput-object v2, v0, Lfev;->b:Lhpz;

    .line 66
    const-class v2, Lffn;

    .line 67
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lffn;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lffn;->a(Landroid/content/Context;)Lffl;

    move-result-object v13

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 70
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lfev;->a:Lffe;

    invoke-virtual {v2}, Lffe;->a()Lfic;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3}, Lfic;->a(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lfev;->a:Lffe;

    invoke-virtual {v2}, Lffe;->a()Lfic;

    move-result-object v2

    invoke-interface {v2}, Lfic;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    const-string v2, "BabelUploadUserAvatar"

    const-string v3, "GoogleApiClient failed to connect"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget v2, Lbco;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lfev;->a:Lffe;

    invoke-virtual {v3}, Lffe;->e()V

    .line 261
    :goto_0
    return v2

    .line 1265
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lfev;->a:Lffe;

    invoke-virtual {v2}, Lffe;->f()Ljava/lang/String;

    move-result-object v2

    .line 1266
    if-nez v2, :cond_3

    .line 1267
    invoke-direct/range {p0 .. p0}, Lfev;->a()Lbfd;

    move-result-object v11

    .line 77
    :cond_1
    :goto_1
    if-nez v11, :cond_4

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lfev;->a(Ljava/util/ArrayList;)V

    .line 79
    const-string v2, "BabelUploadUserAvatar"

    const-string v3, "No valid account"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    const-string v2, "BabelUploadUserAvatar"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 82
    sub-long/2addr v2, v14

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x4f

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "WearableService.sendConversations empty account list sent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    :cond_2
    sget v2, Lbco;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lfev;->a:Lffe;

    invoke-virtual {v3}, Lffe;->e()V

    goto :goto_0

    .line 1269
    :cond_3
    :try_start_2
    invoke-static {v2}, Lffe;->b(Ljava/lang/String;)Lbfd;

    move-result-object v11

    .line 1270
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lfev;->a(Lbfd;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1271
    invoke-direct/range {p0 .. p0}, Lfev;->a()Lbfd;

    move-result-object v11

    goto :goto_1

    .line 88
    :cond_4
    sget-object v2, Lcom/google/android/apps/hangouts/content/EsProvider;->g:Landroid/net/Uri;

    .line 90
    invoke-virtual {v11}, Lbfd;->g()I

    move-result v3

    .line 89
    invoke-static {v2, v3}, Lcom/google/android/apps/hangouts/content/EsProvider;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v4, "20"

    .line 93
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 97
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 98
    const-string v2, "/hangouts/%s/conversations/"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 99
    invoke-virtual {v11}, Lbfd;->b()Lczb;

    move-result-object v6

    iget-object v6, v6, Lczb;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lfev;->a(Ljava/lang/String;)Lfex;

    move-result-object v17

    .line 102
    const-string v2, "BabelUploadUserAvatar"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 104
    sub-long/2addr v4, v14

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x53

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "WearableService.sendConversations old conversations retrieved: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    :cond_5
    const/4 v8, 0x0

    .line 112
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcan;->a:[Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "(%s >= 0 OR %s IS NULL) AND %s = %d AND %s > 0 AND %s = %d"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v12, "is_pending_leave"

    aput-object v12, v7, v9

    const/4 v9, 0x1

    const-string v12, "is_pending_leave"

    aput-object v12, v7, v9

    const/4 v9, 0x2

    const-string v12, "view"

    aput-object v12, v7, v9

    const/4 v9, 0x3

    const/4 v12, 0x1

    .line 123
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v9

    const/4 v9, 0x4

    const-string v12, "sort_timestamp"

    aput-object v12, v7, v9

    const/4 v9, 0x5

    const-string v12, "status"

    aput-object v12, v7, v9

    const/4 v9, 0x6

    const/4 v12, 0x2

    .line 126
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v9

    .line 117
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "call_media_type DESC, sort_timestamp DESC"

    .line 113
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    .line 133
    :goto_2
    if-eqz v3, :cond_9

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1365
    const/4 v2, 0x1

    .line 1366
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1371
    invoke-static {v3}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->a(Landroid/database/Cursor;)J

    move-result-wide v4

    .line 1367
    long-to-int v4, v4

    .line 1365
    invoke-static {v2, v4}, Lcom/google/android/apps/hangouts/content/EsProvider;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 135
    const/4 v4, 0x0

    .line 136
    const-wide/16 v8, 0x0

    .line 1374
    move-object/from16 v0, v17

    iget-object v2, v0, Lfex;->a:Ljava/util/Map;

    .line 137
    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgrp;

    .line 138
    if-eqz v2, :cond_16

    .line 139
    new-instance v4, Lffv;

    invoke-direct {v4, v2}, Lffv;-><init>(Lgrp;)V

    .line 141
    invoke-virtual {v4}, Lffv;->b()Lcom/google/android/gms/wearable/Asset;

    move-result-object v2

    .line 142
    invoke-virtual {v4}, Lffv;->c()J

    move-result-wide v8

    move-object v12, v2

    .line 145
    :goto_3
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    :goto_4
    invoke-static {v2}, Lgrw;->a(Ljava/lang/String;)Lgrw;

    move-result-object v18

    .line 152
    invoke-virtual/range {v18 .. v18}, Lgrw;->a()Landroid/net/Uri;

    move-result-object v6

    .line 153
    invoke-virtual/range {v18 .. v18}, Lgrw;->b()Lgrp;

    move-result-object v7

    move-object v2, v13

    move-object v4, v11

    .line 148
    invoke-virtual/range {v2 .. v10}, Lffl;->a(Landroid/database/Cursor;Lbfd;Ljava/lang/String;Landroid/net/Uri;Lgrp;JLjava/util/Map;)Lffv;

    move-result-object v2

    .line 157
    if-eqz v12, :cond_6

    .line 158
    invoke-virtual {v2, v12}, Lffv;->a(Lcom/google/android/gms/wearable/Asset;)V

    .line 160
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lfev;->a:Lffe;

    .line 161
    invoke-virtual {v2}, Lffe;->b()Lgrg;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lfev;->a:Lffe;

    .line 162
    invoke-virtual {v4}, Lffe;->a()Lfic;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lgrw;->c()Lcom/google/android/gms/wearable/PutDataRequest;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lgrg;->a(Lfic;Lcom/google/android/gms/wearable/PutDataRequest;)Lfij;

    move-result-object v2

    .line 163
    invoke-interface {v2}, Lfij;->a()Lfim;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 166
    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v3, :cond_7

    .line 167
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 259
    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfev;->a:Lffe;

    invoke-virtual {v3}, Lffe;->e()V

    throw v2

    .line 145
    :cond_8
    :try_start_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 166
    :cond_9
    if-eqz v3, :cond_a

    .line 167
    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_a
    const-string v2, "BabelUploadUserAvatar"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 173
    sub-long/2addr v2, v14

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x4e

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "WearableService.sendConversations new conversations sent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 177
    :cond_b
    invoke-static {}, Lffe;->h()[I

    move-result-object v4

    .line 178
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 179
    array-length v6, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v6, :cond_10

    aget v2, v4, v3

    .line 180
    new-instance v7, Lffu;

    invoke-direct {v7}, Lffu;-><init>()V

    .line 182
    invoke-virtual {v11}, Lbfd;->g()I

    move-result v8

    if-ne v8, v2, :cond_f

    .line 184
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lffu;->a(Z)V

    move-object v2, v11

    .line 189
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lfev;->a(Lbfd;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 190
    invoke-virtual {v2}, Lbfd;->b()Lczb;

    move-result-object v8

    iget-object v8, v8, Lczb;->a:Ljava/lang/String;

    .line 191
    invoke-virtual {v7, v8}, Lffu;->e(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Lbfd;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lffu;->a(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v2}, Lbfd;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lffu;->b(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2}, Lbfd;->G()Ljava/lang/String;

    move-result-object v9

    .line 195
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 196
    invoke-static {v9}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lffu;->c(Ljava/lang/String;)V

    .line 198
    :cond_c
    invoke-virtual {v2}, Lbfd;->v()Ljava/lang/String;

    move-result-object v9

    .line 199
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 201
    invoke-static {v9}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 200
    invoke-virtual {v7, v9}, Lffu;->d(Ljava/lang/String;)V

    .line 203
    :cond_d
    invoke-virtual {v2}, Lbfd;->m()Z

    move-result v9

    invoke-virtual {v7, v9}, Lffu;->b(Z)V

    .line 205
    invoke-virtual {v7}, Lffu;->a()Lgrp;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v2}, Lbfd;->q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2374
    move-object/from16 v0, v17

    iget-object v2, v0, Lfex;->b:Ljava/util/Map;

    .line 207
    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3374
    move-object/from16 v0, v17

    iget-object v2, v0, Lfex;->c:Ljava/util/Map;

    .line 208
    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 186
    :cond_f
    invoke-static {v2}, Lffe;->b(I)Lbfd;

    move-result-object v2

    .line 187
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lffu;->a(Z)V

    goto :goto_7

    .line 211
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lfev;->a(Ljava/util/ArrayList;)V

    .line 213
    const-string v2, "BabelUploadUserAvatar"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 215
    sub-long/2addr v2, v14

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x45

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "WearableService.sendConversations accounts sent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 218
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lfev;->a:Lffe;

    .line 4374
    move-object/from16 v0, v17

    iget-object v3, v0, Lfex;->c:Ljava/util/Map;

    .line 218
    invoke-virtual {v2, v11, v10, v3}, Lffe;->a(Lbfd;Ljava/util/Map;Ljava/util/Map;)V

    .line 221
    const-string v2, "BabelUploadUserAvatar"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 223
    const-string v4, "WearableService.sendConversations profile pictures sent %d (not used: %d): %d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 227
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 5374
    move-object/from16 v0, v17

    iget-object v7, v0, Lfex;->c:Ljava/util/Map;

    .line 228
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sub-long/2addr v2, v14

    .line 229
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    .line 225
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 6374
    :cond_12
    move-object/from16 v0, v17

    iget-object v2, v0, Lfex;->a:Ljava/util/Map;

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lfev;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 233
    const-string v2, "BabelUploadUserAvatar"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 235
    sub-long/2addr v2, v14

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x4d

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "WearableService.sendConversations cleanup conversations: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7374
    :cond_13
    move-object/from16 v0, v17

    iget-object v2, v0, Lfex;->b:Ljava/util/Map;

    .line 238
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lfev;->a(Ljava/util/Map;)V

    .line 240
    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v2

    .line 8374
    move-object/from16 v0, v17

    iget-object v3, v0, Lfex;->c:Ljava/util/Map;

    .line 240
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x32

    if-le v2, v3, :cond_14

    .line 9374
    move-object/from16 v0, v17

    iget-object v2, v0, Lfex;->c:Ljava/util/Map;

    .line 242
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lfev;->b(Ljava/util/Map;)V

    .line 243
    const-string v2, "BabelUploadUserAvatar"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 245
    const-string v4, "WearableService.sendConversations cleanup profile pictures (%d deleted): %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 10374
    move-object/from16 v0, v17

    iget-object v7, v0, Lfex;->c:Ljava/util/Map;

    .line 249
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sub-long/2addr v2, v14

    .line 250
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    .line 247
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    :cond_14
    const-string v2, "BabelUploadUserAvatar"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 256
    sub-long/2addr v2, v14

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x3c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "WearableService.sendConversations done: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 259
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lfev;->a:Lffe;

    invoke-virtual {v2}, Lffe;->e()V

    .line 261
    sget v2, Lbco;->a:I

    goto/16 :goto_0

    .line 166
    :catchall_2
    move-exception v2

    move-object v3, v8

    goto/16 :goto_5

    :cond_16
    move-object v12, v4

    goto/16 :goto_3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method
