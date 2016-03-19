.class public final Labk;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final a:Lbfd;

.field private final b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Labl;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Labk;-><init>(Landroid/content/Context;B)V

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 74
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Labk;->d:I

    .line 66
    iput-boolean v1, p0, Labk;->e:Z

    .line 67
    iput-boolean v1, p0, Labk;->f:Z

    .line 75
    iput-object p1, p0, Labk;->b:Landroid/content/Context;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbfd;)V
    .locals 0

    .prologue
    .line 6160
    invoke-direct {p0, p1}, Labk;-><init>(Landroid/content/Context;)V

    .line 6161
    iput-object p2, p0, Labk;->a:Lbfd;

    .line 6162
    return-void
.end method

.method private a(ILandroid/database/Cursor;Landroid/view/View;)Landroid/view/View;
    .locals 1

    .prologue
    .line 397
    if-eqz p3, :cond_0

    .line 402
    :goto_0
    invoke-direct {p0, p3, p1, p2}, Labk;->a(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 403
    return-object p3

    .line 400
    :cond_0
    iget-object v0, p0, Labk;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Labk;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .prologue
    .line 2281
    new-instance v0, Lfbd;

    iget-object v1, p0, Labk;->a:Lbfd;

    invoke-direct {v0, p1, v1}, Lfbd;-><init>(Landroid/content/Context;Lbfd;)V

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Labk;->e:Z

    .line 159
    return-void
.end method

.method private a(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 10

    .prologue
    move-object v0, p1

    .line 3174
    check-cast v0, Lfbd;

    .line 3175
    check-cast p3, Lbzh;

    .line 3176
    if-nez p3, :cond_0

    .line 3248
    :goto_0
    return-void

    .line 3180
    :cond_0
    invoke-interface {p3}, Lbzh;->a()Lgpr;

    move-result-object v7

    .line 3181
    invoke-interface {p3}, Lbzh;->c()Lbzi;

    move-result-object v8

    .line 3182
    invoke-interface {p3}, Lbzh;->e()I

    move-result v5

    .line 3183
    invoke-interface {p3}, Lbzh;->d()I

    move-result v6

    .line 3185
    invoke-virtual {p0, p2}, Labk;->a(I)Labl;

    move-result-object v1

    check-cast v1, Labl;

    .line 3186
    invoke-virtual {v1}, Labl;->a()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3187
    const/16 v9, 0xf

    .line 3188
    const/4 v2, 0x1

    if-ne v6, v2, :cond_1

    .line 4169
    const/4 v9, 0x7

    .line 3193
    :cond_1
    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lfbd;->a(Ljava/lang/String;)V

    .line 3194
    if-eqz v7, :cond_7

    .line 3195
    invoke-interface {p3}, Lbzh;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5169
    and-int/lit8 v9, v9, -0x4

    .line 5252
    :cond_2
    const/4 v2, 0x0

    .line 5254
    if-nez v8, :cond_5

    const/4 v1, 0x0

    move-object v4, v1

    .line 5255
    :goto_2
    invoke-interface {v7}, Lgpr;->e()Ljava/lang/String;

    move-result-object v1

    .line 5258
    invoke-interface {v7}, Lgpr;->f()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 5259
    invoke-interface {v7}, Lgpr;->h()Ljava/lang/String;

    move-result-object v3

    move-object v1, v2

    .line 5267
    :goto_3
    invoke-interface {v7}, Lgpr;->a()Ljava/lang/String;

    move-result-object v2

    .line 5268
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5270
    invoke-static {v7}, Lbzq;->c(Lgpr;)Ljava/lang/String;

    move-result-object v2

    .line 5273
    :cond_3
    invoke-static {v7, v4}, Lbzq;->a(Lgpr;Ljava/lang/String;)Lbzq;

    move-result-object v7

    .line 5274
    const/4 v5, 0x0

    move-object v4, v3

    invoke-virtual/range {v0 .. v9}, Lfbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILbzq;Lbzi;I)V

    goto :goto_0

    .line 3193
    :cond_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5254
    :cond_5
    invoke-virtual {v8}, Lbzi;->b()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_2

    .line 5262
    :cond_6
    invoke-interface {v7}, Lgpr;->b()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 5263
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5264
    invoke-static {v1}, Leia;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v2

    goto :goto_3

    .line 3208
    :cond_7
    invoke-interface {p3}, Lbzh;->b()Lbzq;

    move-result-object v7

    .line 3210
    packed-switch v5, :pswitch_data_0

    .line 3244
    const-string v0, "Babel"

    const-string v1, "CallContactsAdapter is given an unsupported contact type!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3212
    :pswitch_0
    const/4 v1, 0x1

    if-ne v6, v1, :cond_8

    .line 3216
    const-string v1, "Babel"

    const-string v2, "Local contacts not returning AggregatedPerson!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3221
    :cond_8
    const/4 v1, 0x0

    .line 3223
    const/4 v2, 0x2

    if-ne v6, v2, :cond_9

    .line 3225
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Lbzh;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3236
    :goto_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v9}, Lfbd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILbzq;Lbzi;I)V

    goto/16 :goto_0

    .line 3230
    :cond_9
    invoke-virtual {v7}, Lbzq;->f()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbzv;

    .line 3231
    invoke-virtual {v1}, Lbzv;->a()Ljava/lang/String;

    move-result-object v2

    .line 3232
    const/4 v1, 0x2

    invoke-interface {p3, v1}, Lbzh;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3234
    or-int/lit8 v9, v9, 0x10

    goto :goto_4

    .line 3210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private b()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private b(I)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    iget-object v0, v0, Labl;->c:Landroid/database/Cursor;

    return-object v0
.end method

.method private c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-boolean v0, p0, Labk;->e:Z

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 170
    :cond_0
    iput v2, p0, Labk;->d:I

    .line 171
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    .line 172
    iget-object v1, v0, Labl;->c:Landroid/database/Cursor;

    .line 174
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    move v1, v2

    .line 179
    :goto_2
    iget-boolean v4, v0, Labl;->b:Z

    if-eqz v4, :cond_3

    .line 180
    if-nez v1, :cond_2

    iget-boolean v4, v0, Labl;->a:Z

    if-eqz v4, :cond_3

    .line 181
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 184
    :cond_3
    iput v1, v0, Labl;->e:I

    .line 185
    iget v0, p0, Labk;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Labk;->d:I

    goto :goto_1

    .line 177
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_2

    .line 188
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Labk;->e:Z

    goto :goto_0
.end method


# virtual methods
.method public a(I)Labl;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    return-object v0
.end method

.method public a(ILandroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    iget-object v0, v0, Labl;->c:Landroid/database/Cursor;

    .line 218
    if-eq v0, p2, :cond_2

    .line 219
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_0
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    iput-object p2, v0, Labl;->c:Landroid/database/Cursor;

    .line 223
    if-eqz p2, :cond_1

    .line 224
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Labl;->d:I

    .line 226
    :cond_1
    invoke-direct {p0}, Labk;->a()V

    .line 227
    invoke-virtual {p0}, Labk;->notifyDataSetChanged()V

    .line 229
    :cond_2
    return-void
.end method

.method public a(Labl;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-direct {p0}, Labk;->a()V

    .line 95
    invoke-virtual {p0}, Labk;->notifyDataSetChanged()V

    .line 96
    return-void
.end method

.method public a(Lbyu;)V
    .locals 3

    .prologue
    .line 6285
    invoke-direct {p0}, Labk;->b()I

    move-result v2

    .line 6286
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6287
    invoke-direct {p0, v1}, Labk;->b(I)Landroid/database/Cursor;

    move-result-object v0

    .line 6288
    if-eqz v0, :cond_0

    .line 6289
    check-cast v0, Lbzh;

    invoke-interface {v0, p1}, Lbzh;->a(Lbyu;)V

    .line 6286
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 6292
    :cond_1
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    .line 485
    iget-boolean v0, v0, Labl;->b:Z

    if-eqz v0, :cond_0

    .line 486
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Labk;->c()V

    .line 203
    iget v0, p0, Labk;->d:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 423
    invoke-direct {p0}, Labk;->c()V

    .line 424
    const/4 v0, 0x0

    .line 425
    iget-object v1, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    .line 426
    iget v2, v0, Labl;->e:I

    add-int/2addr v2, v1

    .line 427
    if-lt p1, v1, :cond_4

    if-ge p1, v2, :cond_4

    .line 428
    sub-int v1, p1, v1

    .line 429
    iget-boolean v2, v0, Labl;->b:Z

    if-eqz v2, :cond_0

    .line 430
    add-int/lit8 v1, v1, -0x1

    .line 432
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    move-object v0, v3

    .line 444
    :cond_1
    :goto_1
    return-object v0

    .line 435
    :cond_2
    iget-object v0, v0, Labl;->c:Landroid/database/Cursor;

    .line 436
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    move-object v0, v3

    .line 437
    goto :goto_1

    :cond_4
    move v1, v2

    .line 442
    goto :goto_0

    :cond_5
    move-object v0, v3

    .line 444
    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 7

    .prologue
    const/4 v6, -0x1

    const-wide/16 v4, 0x0

    .line 451
    invoke-direct {p0}, Labk;->c()V

    .line 452
    const/4 v0, 0x0

    .line 453
    iget-object v1, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    .line 454
    iget v2, v0, Labl;->e:I

    add-int/2addr v2, v1

    .line 455
    if-lt p1, v1, :cond_5

    if-ge p1, v2, :cond_5

    .line 456
    sub-int v1, p1, v1

    .line 457
    iget-boolean v2, v0, Labl;->b:Z

    if-eqz v2, :cond_0

    .line 458
    add-int/lit8 v1, v1, -0x1

    .line 460
    :cond_0
    if-ne v1, v6, :cond_1

    move-wide v0, v4

    .line 476
    :goto_1
    return-wide v0

    .line 463
    :cond_1
    iget v2, v0, Labl;->d:I

    if-ne v2, v6, :cond_2

    move-wide v0, v4

    .line 464
    goto :goto_1

    .line 467
    :cond_2
    iget-object v2, v0, Labl;->c:Landroid/database/Cursor;

    .line 468
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move-wide v0, v4

    .line 469
    goto :goto_1

    .line 471
    :cond_4
    iget v0, v0, Labl;->d:I

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_1

    :cond_5
    move v1, v2

    .line 474
    goto :goto_0

    :cond_6
    move-wide v0, v4

    .line 476
    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 312
    invoke-direct {p0}, Labk;->c()V

    .line 314
    iget-object v2, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v5, :cond_2

    .line 315
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    iget v0, v0, Labl;->e:I

    add-int v4, v2, v0

    .line 316
    if-lt p1, v2, :cond_1

    if-ge p1, v4, :cond_1

    .line 317
    sub-int v2, p1, v2

    .line 318
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    iget-boolean v0, v0, Labl;->b:Z

    if-eqz v0, :cond_3

    .line 319
    add-int/lit8 v0, v2, -0x1

    .line 321
    :goto_1
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 324
    :goto_2
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_2

    .line 314
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v2, v4

    goto :goto_0

    .line 330
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-direct {p0}, Labk;->c()V

    .line 336
    iget-object v1, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v0

    move v1, v0

    :goto_0
    if-ge v2, v4, :cond_5

    .line 337
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    iget v0, v0, Labl;->e:I

    add-int v3, v1, v0

    .line 338
    if-lt p1, v1, :cond_4

    if-ge p1, v3, :cond_4

    .line 339
    sub-int v1, p1, v1

    .line 340
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    iget-boolean v0, v0, Labl;->b:Z

    if-eqz v0, :cond_0

    .line 341
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 344
    :cond_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 345
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1370
    if-eqz p2, :cond_1

    .line 353
    :goto_1
    if-nez p2, :cond_6

    .line 354
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x45

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "View should not be null, partition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1372
    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    .line 347
    :cond_2
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    iget-object v0, v0, Labl;->c:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 348
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_3
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    iget-object v0, v0, Labl;->c:Landroid/database/Cursor;

    invoke-direct {p0, v2, v0, p2}, Labk;->a(ILandroid/database/Cursor;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 336
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v3

    goto/16 :goto_0

    .line 362
    :cond_5
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 357
    :cond_6
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 497
    invoke-direct {p0}, Labk;->c()V

    .line 499
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v2, v5, :cond_2

    .line 500
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    iget v0, v0, Labl;->e:I

    add-int v4, v3, v0

    .line 501
    if-lt p1, v3, :cond_1

    if-ge p1, v4, :cond_1

    .line 502
    sub-int v3, p1, v3

    .line 503
    iget-object v0, p0, Labk;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labl;

    iget-boolean v0, v0, Labl;->b:Z

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    move v0, v1

    .line 512
    :goto_1
    return v0

    .line 506
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 499
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v4

    goto :goto_0

    :cond_2
    move v0, v1

    .line 512
    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Labk;->f:Z

    if-eqz v0, :cond_0

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Labk;->g:Z

    .line 538
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Labk;->g:Z

    goto :goto_0
.end method
