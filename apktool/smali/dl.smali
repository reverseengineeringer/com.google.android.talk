.class public final Ldl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcu;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Landroid/app/PendingIntent;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldl;->a:Ljava/util/ArrayList;

    .line 2339
    const/4 v0, 0x1

    iput v0, p0, Ldl;->b:I

    .line 2341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldl;->d:Ljava/util/ArrayList;

    .line 2344
    const v0, 0x800005

    iput v0, p0, Ldl;->g:I

    .line 2345
    const/4 v0, -0x1

    iput v0, p0, Ldl;->h:I

    .line 2346
    const/4 v0, 0x0

    iput v0, p0, Ldl;->i:I

    .line 2348
    const/16 v0, 0x50

    iput v0, p0, Ldl;->k:I

    .line 2356
    return-void
.end method

.method private a(IZ)V
    .locals 1

    .prologue
    .line 2904
    iget v0, p0, Ldl;->b:I

    or-int/2addr v0, p1

    iput v0, p0, Ldl;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcy;)Lcy;
    .locals 5

    .prologue
    .line 2399
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2401
    iget-object v0, p0, Ldl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2402
    const-string v2, "actions"

    .line 3042
    sget-object v3, Lct;->a:Ldc;

    .line 2402
    iget-object v0, p0, Ldl;->a:Ljava/util/ArrayList;

    iget-object v4, p0, Ldl;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcu;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcu;

    invoke-virtual {v3, v0}, Ldc;->a([Lcu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2406
    :cond_0
    iget v0, p0, Ldl;->b:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2407
    const-string v0, "flags"

    iget v2, p0, Ldl;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2409
    :cond_1
    iget-object v0, p0, Ldl;->c:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 2410
    const-string v0, "displayIntent"

    iget-object v2, p0, Ldl;->c:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2412
    :cond_2
    iget-object v0, p0, Ldl;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2413
    const-string v2, "pages"

    iget-object v0, p0, Ldl;->d:Ljava/util/ArrayList;

    iget-object v3, p0, Ldl;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/app/Notification;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2416
    :cond_3
    iget-object v0, p0, Ldl;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 2417
    const-string v0, "background"

    iget-object v2, p0, Ldl;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2419
    :cond_4
    iget v0, p0, Ldl;->f:I

    if-eqz v0, :cond_5

    .line 2420
    const-string v0, "contentIcon"

    iget v2, p0, Ldl;->f:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2422
    :cond_5
    iget v0, p0, Ldl;->g:I

    const v2, 0x800005

    if-eq v0, v2, :cond_6

    .line 2423
    const-string v0, "contentIconGravity"

    iget v2, p0, Ldl;->g:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2425
    :cond_6
    iget v0, p0, Ldl;->h:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 2426
    const-string v0, "contentActionIndex"

    iget v2, p0, Ldl;->h:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2429
    :cond_7
    iget v0, p0, Ldl;->i:I

    if-eqz v0, :cond_8

    .line 2430
    const-string v0, "customSizePreset"

    iget v2, p0, Ldl;->i:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2432
    :cond_8
    iget v0, p0, Ldl;->j:I

    if-eqz v0, :cond_9

    .line 2433
    const-string v0, "customContentHeight"

    iget v2, p0, Ldl;->j:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2435
    :cond_9
    iget v0, p0, Ldl;->k:I

    const/16 v2, 0x50

    if-eq v0, v2, :cond_a

    .line 2436
    const-string v0, "gravity"

    iget v2, p0, Ldl;->k:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2438
    :cond_a
    iget v0, p0, Ldl;->l:I

    if-eqz v0, :cond_b

    .line 2439
    const-string v0, "hintScreenTimeout"

    iget v2, p0, Ldl;->l:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2442
    :cond_b
    invoke-virtual {p1}, Lcy;->f()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2443
    return-object p1
.end method

.method public a()Ldl;
    .locals 2

    .prologue
    .line 2783
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ldl;->a(IZ)V

    .line 2784
    return-object p0
.end method

.method public a(Landroid/app/Notification;)Ldl;
    .locals 1

    .prologue
    .line 2569
    iget-object v0, p0, Ldl;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2570
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Ldl;
    .locals 0

    .prologue
    .line 2619
    iput-object p1, p0, Ldl;->e:Landroid/graphics/Bitmap;

    .line 2620
    return-object p0
.end method

.method public a(Lcu;)Ldl;
    .locals 1

    .prologue
    .line 2477
    iget-object v0, p0, Ldl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2478
    return-object p0
.end method

.method public b()Ldl;
    .locals 2

    .prologue
    .line 2843
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ldl;->a(IZ)V

    .line 2844
    return-object p0
.end method

.method public c()Ldl;
    .locals 1

    .prologue
    .line 2888
    const/4 v0, -0x1

    iput v0, p0, Ldl;->l:I

    .line 2889
    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 3448
    new-instance v0, Ldl;

    invoke-direct {v0}, Ldl;-><init>()V

    .line 3449
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ldl;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ldl;->a:Ljava/util/ArrayList;

    .line 3450
    iget v1, p0, Ldl;->b:I

    iput v1, v0, Ldl;->b:I

    .line 3451
    iget-object v1, p0, Ldl;->c:Landroid/app/PendingIntent;

    iput-object v1, v0, Ldl;->c:Landroid/app/PendingIntent;

    .line 3452
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ldl;->d:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ldl;->d:Ljava/util/ArrayList;

    .line 3453
    iget-object v1, p0, Ldl;->e:Landroid/graphics/Bitmap;

    iput-object v1, v0, Ldl;->e:Landroid/graphics/Bitmap;

    .line 3454
    iget v1, p0, Ldl;->f:I

    iput v1, v0, Ldl;->f:I

    .line 3455
    iget v1, p0, Ldl;->g:I

    iput v1, v0, Ldl;->g:I

    .line 3456
    iget v1, p0, Ldl;->h:I

    iput v1, v0, Ldl;->h:I

    .line 3457
    iget v1, p0, Ldl;->i:I

    iput v1, v0, Ldl;->i:I

    .line 3458
    iget v1, p0, Ldl;->j:I

    iput v1, v0, Ldl;->j:I

    .line 3459
    iget v1, p0, Ldl;->k:I

    iput v1, v0, Ldl;->k:I

    .line 3460
    iget v1, p0, Ldl;->l:I

    iput v1, v0, Ldl;->l:I

    .line 2240
    return-object v0
.end method
