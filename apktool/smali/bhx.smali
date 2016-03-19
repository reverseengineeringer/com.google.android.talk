.class public final Lbhx;
.super Ldhp;
.source "SourceFile"


# static fields
.field public static final j:Z

.field public static l:J


# instance fields
.field public final k:Lbzw;

.field private final m:Lfcy;

.field private final n:Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;

.field private o:Lbia;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:J

.field private final t:Lfdl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    sget-object v0, Lezi;->d:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lbhx;->j:Z

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lbhx;->l:J

    return-void
.end method

.method public constructor <init>(Lbzw;Landroid/widget/AbsListView;Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;IZ)V
    .locals 4

    .prologue
    .line 143
    invoke-virtual {p1}, Lbzw;->getActivity()Lba;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldhp;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 75
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lbhx;->s:J

    .line 85
    new-instance v0, Lbib;

    .line 1088
    invoke-direct {v0}, Lbib;-><init>()V

    .line 85
    iput-object v0, p0, Lbhx;->t:Lfdl;

    .line 145
    sget-wide v0, Lbhx;->l:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 148
    const-string v1, "babel_message_block_max_time_diff_ms"

    const-wide/32 v2, 0x2bf20

    .line 147
    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lbhx;->l:J

    .line 153
    :cond_0
    iput-object p1, p0, Lbhx;->k:Lbzw;

    .line 155
    iput p4, p0, Lbhx;->p:I

    .line 157
    new-instance v0, Lfcy;

    invoke-direct {v0, p5}, Lfcy;-><init>(Z)V

    iput-object v0, p0, Lbhx;->m:Lfcy;

    .line 158
    iput-object p3, p0, Lbhx;->n:Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;

    .line 159
    iget-object v0, p0, Lbhx;->n:Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;

    iget-object v1, p0, Lbhx;->m:Lfcy;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;->a(Lfcy;)V

    .line 161
    new-instance v0, Lbhy;

    invoke-direct {v0, p0}, Lbhy;-><init>(Lbhx;)V

    invoke-virtual {p2, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 170
    return-void
.end method

.method private a(ZZ)Z
    .locals 18

    .prologue
    .line 381
    const/4 v2, 0x0

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v6, 0x4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 385
    move-object/from16 v0, p0

    iget-object v6, v0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 386
    invoke-static {}, Lemd;->values()[Lemd;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v9, 0x8

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    aget-object v7, v7, v8

    .line 388
    invoke-static {}, Lemc;->values()[Lemc;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v10, 0x7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    aget-object v8, v8, v9

    .line 389
    move-object/from16 v0, p0

    iget-object v9, v0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v10, 0x24

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 390
    move-object/from16 v0, p0

    iget-object v10, v0, Lbhx;->c:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->isLast()Z

    move-result v10

    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lbhx;->c:Landroid/database/Cursor;

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 391
    move-object/from16 v0, p0

    iget-object v10, v0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v11, 0x6

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 392
    move-object/from16 v0, p0

    iget-object v12, v0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v13, 0x4

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 393
    move-object/from16 v0, p0

    iget-object v13, v0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v14, 0x3

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 394
    invoke-static {}, Lemd;->values()[Lemd;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v16, 0x8

    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    aget-object v14, v14, v15

    .line 396
    invoke-static {}, Lemc;->values()[Lemc;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lbhx;->c:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const/16 v17, 0x7

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    aget-object v15, v15, v16

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lbhx;->c:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const/16 v17, 0x24

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 398
    if-eqz p2, :cond_0

    sub-long v4, v10, v4

    sget-wide v10, Lbhx;->l:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_2

    :cond_0
    move/from16 v0, v16

    if-ne v0, v9, :cond_2

    if-eqz p1, :cond_1

    if-ne v7, v14, :cond_2

    .line 402
    invoke-static {v6, v3, v13, v12}, Lczb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lemc;->e:Lemc;

    if-ne v8, v3, :cond_2

    sget-object v3, Lemc;->d:Lemc;

    if-eq v15, v3, :cond_2

    sget-object v3, Lemc;->b:Lemc;

    if-eq v15, v3, :cond_2

    .line 414
    const/4 v2, 0x1

    .line 416
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lbhx;->c:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 418
    :cond_3
    return v2
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lbhx;->m:Lfcy;

    invoke-virtual {v0, p1, p2}, Lfcy;->a(J)V

    .line 784
    return-void
.end method

.method public a(Lbia;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lbhx;->o:Lbia;

    .line 186
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 177
    iput-boolean p1, p0, Lbhx;->r:Z

    .line 178
    return-void
.end method

.method public b(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lbhx;->m:Lfcy;

    invoke-virtual {v0, p1}, Lfcy;->a(Landroid/database/Cursor;)V

    .line 563
    invoke-super {p0, p1}, Ldhp;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lbhx;->m:Lfcy;

    invoke-virtual {v0, p1}, Lfcy;->a(Z)V

    .line 771
    return-void
.end method

.method public c()V
    .locals 6

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    .line 5570
    iget-object v0, p0, Lbhx;->k:Lbzw;

    invoke-virtual {v0}, Lbzw;->a()Lbfd;

    move-result-object v0

    .line 5571
    iget-object v1, p0, Lbhx;->k:Lbzw;

    invoke-virtual {v1}, Lbzw;->an()Ljava/lang/String;

    move-result-object v1

    .line 5573
    iget-wide v2, p0, Lbhx;->s:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 5575
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5578
    iget-object v0, p0, Lbhx;->k:Lbzw;

    .line 5579
    invoke-virtual {v0}, Lbzw;->a()Lbfd;

    move-result-object v0

    iget-object v1, p0, Lbhx;->k:Lbzw;

    invoke-virtual {v1}, Lbzw;->an()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lbhx;->s:J

    .line 5578
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->c(Lbfd;Ljava/lang/String;J)I

    .line 5581
    iput-wide v4, p0, Lbhx;->s:J

    .line 558
    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 779
    iput-boolean p1, p0, Lbhx;->q:Z

    .line 780
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lbhx;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 758
    iget-object v0, p0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 190
    iget-boolean v0, p0, Lbhx;->a:Z

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Lbhx;->c:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    iget-object v0, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2599
    iget-wide v2, p0, Lbhx;->s:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    .line 2600
    iput-wide v0, p0, Lbhx;->s:J

    .line 199
    :cond_2
    iget-object v0, p0, Lbhx;->d:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 201
    invoke-static {}, Lemd;->values()[Lemd;

    move-result-object v1

    iget-object v2, p0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aget-object v2, v1, v2

    .line 204
    if-eqz p2, :cond_7

    .line 205
    check-cast p2, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;

    .line 215
    :goto_0
    iget-boolean v1, p0, Lbhx;->r:Z

    invoke-virtual {p2, v1}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->b(Z)V

    .line 218
    iget-object v1, p0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v3, 0x13

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    .line 219
    :goto_1
    if-eqz v1, :cond_9

    .line 221
    const/4 v1, 0x1

    .line 219
    :goto_2
    invoke-virtual {p2, v1}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->a(I)V

    .line 224
    invoke-virtual {p0, p1}, Lbhx;->getItemId(I)J

    move-result-wide v4

    .line 225
    iget-object v1, p0, Lbhx;->m:Lfcy;

    invoke-virtual {v1}, Lfcy;->b()Ljava/lang/Long;

    move-result-object v1

    .line 226
    iget-object v3, p0, Lbhx;->m:Lfcy;

    invoke-virtual {v3, v4, v5}, Lfcy;->c(J)Z

    move-result v3

    .line 229
    if-eqz v1, :cond_a

    .line 3051
    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v6

    .line 229
    cmp-long v6, v4, v6

    if-nez v6, :cond_a

    .line 230
    const/4 v1, 0x1

    move v6, v1

    .line 249
    :goto_3
    invoke-virtual {p2, v6}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->b(I)V

    .line 251
    invoke-virtual {p2}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->c()Lcum;

    move-result-object v1

    .line 253
    sget-object v3, Lemd;->c:Lemd;

    if-eq v2, v3, :cond_3

    sget-object v3, Lemd;->b:Lemd;

    if-ne v2, v3, :cond_14

    .line 256
    :cond_3
    if-eqz v1, :cond_e

    .line 257
    invoke-interface {v1}, Lcum;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 268
    :cond_4
    :goto_4
    sget-object v1, Lemd;->b:Lemd;

    if-ne v2, v1, :cond_5

    .line 269
    iget-object v1, p0, Lbhx;->k:Lbzw;

    invoke-virtual {v1}, Lbzw;->a()Lbfd;

    move-result-object v1

    invoke-virtual {v1}, Lbfd;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->a(Ljava/lang/String;)V

    .line 4342
    :cond_5
    iget-object v1, p0, Lbhx;->c:Landroid/database/Cursor;

    iget v2, p0, Lbhx;->p:I

    iget-object v3, p0, Lbhx;->k:Lbzw;

    invoke-virtual {v3}, Lbzw;->a()Lbfd;

    move-result-object v3

    iget-object v4, p0, Lbhx;->k:Lbzw;

    iget-boolean v5, p0, Lbhx;->q:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->a(Landroid/database/Cursor;ILbfd;Lbzw;Z)V

    .line 4344
    iget-object v1, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 4346
    iget-object v1, p0, Lbhx;->k:Lbzw;

    invoke-virtual {v1, v2, v3}, Lbzw;->a(J)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->setSelected(Z)V

    .line 4348
    iget v1, p0, Lbhx;->p:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    const/4 v1, 0x1

    :goto_5
    const/4 v2, 0x1

    .line 4349
    invoke-direct {p0, v1, v2}, Lbhx;->a(ZZ)Z

    move-result v2

    .line 4351
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lbhx;->a(ZZ)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {p2, v1}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->d(Z)V

    .line 4352
    const/4 v1, 0x0

    .line 4353
    iget-object v3, p0, Lbhx;->c:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isFirst()Z

    move-result v3

    if-nez v3, :cond_24

    iget-object v3, p0, Lbhx;->c:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 4354
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lbhx;->a(ZZ)Z

    move-result v1

    .line 4355
    iget-object v3, p0, Lbhx;->c:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move v3, v1

    .line 4358
    :goto_7
    packed-switch v6, :pswitch_data_0

    .line 4370
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->b(Z)V

    .line 4371
    const/4 v1, 0x0

    .line 4375
    :goto_8
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->a(Z)V

    .line 4377
    if-nez v3, :cond_13

    const/4 v1, 0x1

    :goto_9
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->c(Z)V

    .line 273
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->requestLayout()V

    .line 328
    :cond_6
    :goto_a
    iget-object v0, p0, Lbhx;->d:Landroid/content/Context;

    const-class v1, Lbiw;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiw;

    .line 329
    iget-object v1, p0, Lbhx;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lbhx;->k:Lbzw;

    iget v3, p0, Lbhx;->p:I

    iget-object v4, p0, Lbhx;->k:Lbzw;

    .line 333
    invoke-virtual {v4}, Lbzw;->an()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lbiw;->a(Ljava/lang/String;)Lbix;

    move-result-object v0

    .line 329
    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->a(Landroid/database/Cursor;Lbic;ILbix;)V

    .line 334
    return-object p2

    .line 207
    :cond_7
    sget v1, Laal;->gr:I

    const/4 v3, 0x0

    .line 209
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;

    .line 210
    iget-object v3, p0, Lbhx;->n:Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->a(Lcom/google/android/apps/hangouts/views/MessageListAnimationManager;)V

    .line 211
    iget-object v3, p0, Lbhx;->t:Lfdl;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->a(Lfdl;)V

    move-object p2, v1

    goto/16 :goto_0

    .line 218
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 222
    :cond_9
    const/4 v1, 0x2

    goto/16 :goto_2

    .line 231
    :cond_a
    iget-object v6, p0, Lbhx;->m:Lfcy;

    invoke-virtual {v6, v4, v5}, Lfcy;->b(J)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 232
    const/4 v1, 0x0

    move v6, v1

    goto/16 :goto_3

    .line 233
    :cond_b
    if-eqz v3, :cond_d

    .line 234
    if-eqz v1, :cond_c

    .line 240
    const/4 v1, 0x3

    move v6, v1

    goto/16 :goto_3

    .line 244
    :cond_c
    const/4 v1, 0x2

    move v6, v1

    goto/16 :goto_3

    .line 247
    :cond_d
    const/4 v1, 0x4

    move v6, v1

    goto/16 :goto_3

    .line 3744
    :cond_e
    invoke-static {}, Lemd;->values()[Lemd;

    move-result-object v1

    invoke-virtual {p0, p1}, Lbhx;->getItemViewType(I)I

    move-result v3

    aget-object v1, v1, v3

    .line 3745
    sget-object v3, Lemd;->b:Lemd;

    if-ne v1, v3, :cond_f

    .line 3746
    sget v1, Laal;->gq:I

    .line 260
    :goto_b
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/MessageListItemView;

    .line 261
    iget-object v1, p0, Lbhx;->k:Lbzw;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->a(Lfcv;)V

    .line 262
    iget-object v1, p0, Lbhx;->k:Lbzw;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->a(Lbzw;)V

    .line 263
    invoke-virtual {p2, v0}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->a(Lcum;)V

    .line 264
    iget-object v1, p0, Lbhx;->o:Lbia;

    if-eqz v1, :cond_4

    .line 265
    iget-object v1, p0, Lbhx;->o:Lbia;

    invoke-virtual {v1, v0}, Lbia;->a(Lcom/google/android/apps/hangouts/views/MessageListItemView;)V

    goto/16 :goto_4

    .line 3747
    :cond_f
    sget-object v3, Lemd;->c:Lemd;

    if-ne v1, v3, :cond_10

    .line 3748
    sget v1, Laal;->gp:I

    goto :goto_b

    .line 3750
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unexpected position: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhbs;->a(Ljava/lang/String;)V

    .line 3751
    const/4 v1, -0x1

    goto :goto_b

    .line 4348
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 4351
    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 4360
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->b(Z)V

    move v1, v2

    .line 4361
    goto/16 :goto_8

    .line 4363
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->b(Z)V

    .line 4364
    if-eqz v2, :cond_23

    .line 4365
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/MessageListItemView;->w()V

    move v1, v2

    goto/16 :goto_8

    .line 4377
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 274
    :cond_14
    sget-object v3, Lemd;->h:Lemd;

    if-eq v2, v3, :cond_15

    sget-object v3, Lemd;->i:Lemd;

    if-ne v2, v3, :cond_17

    .line 277
    :cond_15
    if-eqz v1, :cond_16

    .line 278
    invoke-interface {v1}, Lcum;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;

    move-object v9, v0

    .line 4471
    :goto_c
    iget-object v0, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v10, v0, v2

    .line 4472
    invoke-static {}, Lemd;->values()[Lemd;

    move-result-object v0

    iget-object v1, p0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aget-object v0, v0, v1

    .line 4474
    invoke-static {}, Lemc;->values()[Lemc;

    move-result-object v1

    iget-object v2, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aget-object v2, v1, v2

    .line 4475
    iget-object v1, p0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v3, 0x23

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4476
    iget-object v1, p0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v3, 0x26

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4477
    iget-object v1, p0, Lbhx;->k:Lbzw;

    .line 4480
    invoke-virtual {v1}, Lbzw;->a()Lbfd;

    move-result-object v1

    iget-object v3, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v4, 0x4

    .line 4482
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v5, 0x3

    .line 4483
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v8, 0x22

    .line 4484
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 4478
    invoke-static/range {v0 .. v8}, Laal;->a(Lemd;Lbfd;Lemc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v2

    .line 4488
    iget-object v0, p0, Lbhx;->k:Lbzw;

    .line 4489
    invoke-virtual {v0}, Lbzw;->a()Lbfd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v6, v1}, Laal;->a(Lbfd;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 4490
    iget-object v0, p0, Lbhx;->k:Lbzw;

    invoke-virtual {v0}, Lbzw;->a()Lbfd;

    move-result-object v5

    move-object v1, v9

    move-wide v3, v10

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->a(Ljava/lang/CharSequence;JLbfd;Ljava/util/List;I)V

    .line 4491
    invoke-virtual {v9}, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;->c()V

    goto/16 :goto_a

    .line 280
    :cond_16
    sget v1, Laal;->fK:I

    const/4 v2, 0x0

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/HangoutEventMessageListItemView;

    .line 283
    invoke-virtual {p2, v0}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->a(Lcum;)V

    move-object v9, v0

    goto :goto_c

    .line 286
    :cond_17
    sget-object v3, Lemd;->j:Lemd;

    if-eq v2, v3, :cond_18

    sget-object v3, Lemd;->k:Lemd;

    if-ne v2, v3, :cond_1c

    .line 289
    :cond_18
    if-eqz v1, :cond_1a

    .line 290
    invoke-interface {v1}, Lcum;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/OtrModificationMessageListItemView;

    .line 4495
    :goto_d
    iget-object v1, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 4496
    invoke-static {}, Lemd;->values()[Lemd;

    move-result-object v1

    iget-object v4, p0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aget-object v1, v1, v4

    .line 4498
    invoke-static {}, Lemc;->values()[Lemc;

    move-result-object v4

    iget-object v5, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aget-object v4, v4, v5

    .line 4499
    sget-object v5, Lemd;->j:Lemd;

    if-ne v1, v5, :cond_1b

    .line 4501
    const/4 v1, 0x1

    .line 4503
    :goto_e
    new-instance v5, Lczb;

    iget-object v6, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v7, 0x4

    .line 4505
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v8, 0x3

    .line 4506
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lczb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4507
    iget-object v6, p0, Lbhx;->k:Lbzw;

    invoke-virtual {v6, v5}, Lbzw;->b(Lczb;)Z

    move-result v6

    .line 4508
    iget-object v7, p0, Lbhx;->k:Lbzw;

    .line 4509
    invoke-virtual {v7, v5}, Lbzw;->e(Lczb;)Ljava/lang/String;

    move-result-object v5

    .line 4508
    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/google/android/apps/hangouts/views/OtrModificationMessageListItemView;->a(ILemc;Ljava/lang/String;Z)V

    .line 4510
    const/4 v4, 0x2

    if-ne v1, v4, :cond_19

    .line 4511
    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/hangouts/views/OtrModificationMessageListItemView;->a(J)V

    .line 4512
    if-nez v6, :cond_19

    .line 4513
    iget-object v1, p0, Lbhx;->k:Lbzw;

    invoke-virtual {v1, v2, v3}, Lbzw;->c(J)V

    .line 4516
    :cond_19
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/views/OtrModificationMessageListItemView;->c()V

    goto/16 :goto_a

    .line 292
    :cond_1a
    sget v1, Laal;->gw:I

    const/4 v2, 0x0

    .line 294
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/OtrModificationMessageListItemView;

    .line 295
    invoke-virtual {p2, v0}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->a(Lcum;)V

    goto :goto_d

    .line 4502
    :cond_1b
    const/4 v1, 0x2

    goto :goto_e

    .line 298
    :cond_1c
    sget-object v3, Lemd;->a:Lemd;

    if-eq v2, v3, :cond_1d

    sget-object v3, Lemd;->r:Lemd;

    if-ne v2, v3, :cond_1f

    .line 301
    :cond_1d
    if-eqz v1, :cond_1e

    .line 303
    invoke-interface {v1}, Lcum;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcrt;

    .line 310
    :goto_f
    if-eqz v0, :cond_6

    .line 311
    sget-object v1, Lemd;->r:Lemd;

    .line 313
    invoke-virtual {v2, v1}, Lemd;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4521
    iget-object v2, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 4522
    iget-object v4, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4523
    iget-object v5, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4524
    invoke-interface {v0, v2, v3, v4}, Lcrt;->a(JLjava/lang/String;)V

    .line 4525
    new-instance v2, Lcru;

    invoke-direct {v2, p0, v1, v5}, Lcru;-><init>(Lbhx;ZLjava/lang/String;)V

    invoke-interface {v0, v2}, Lcrt;->a(Lcru;)V

    goto/16 :goto_a

    .line 305
    :cond_1e
    iget-object v0, p0, Lbhx;->d:Landroid/content/Context;

    const-class v1, Lcrv;

    .line 306
    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrv;

    iget-object v1, p0, Lbhx;->d:Landroid/content/Context;

    .line 307
    invoke-interface {v0, v1}, Lcrv;->b(Landroid/content/Context;)Lcrt;

    move-result-object v0

    .line 308
    invoke-virtual {p2, v0}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->a(Lcum;)V

    goto :goto_f

    .line 317
    :cond_1f
    if-eqz v1, :cond_21

    .line 318
    invoke-interface {v1}, Lcum;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;

    move-object v9, v0

    .line 5422
    :goto_10
    iget-object v0, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v10, v0, v2

    .line 5423
    invoke-static {}, Lemd;->values()[Lemd;

    move-result-object v0

    iget-object v1, p0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    aget-object v0, v0, v1

    .line 5425
    invoke-static {}, Lemc;->values()[Lemc;

    move-result-object v1

    iget-object v2, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aget-object v2, v1, v2

    .line 5428
    sget-object v1, Lemd;->f:Lemd;

    if-eq v0, v1, :cond_20

    sget-object v1, Lemd;->p:Lemd;

    if-eq v0, v1, :cond_20

    sget-object v1, Lemd;->n:Lemd;

    if-eq v0, v1, :cond_20

    sget-object v1, Lemc;->d:Lemc;

    if-ne v2, v1, :cond_22

    :cond_20
    const/4 v1, 0x1

    .line 5433
    :goto_11
    invoke-virtual {v9, v1}, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->a(Z)V

    .line 5435
    iget-object v1, p0, Lbhx;->k:Lbzw;

    .line 5438
    invoke-virtual {v1}, Lbzw;->a()Lbfd;

    move-result-object v1

    iget-object v3, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v4, 0x4

    .line 5440
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lbhx;->c:Landroid/database/Cursor;

    const/4 v5, 0x3

    .line 5441
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v6, 0x22

    .line 5442
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v7, 0x23

    .line 5443
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lbhx;->c:Landroid/database/Cursor;

    const/16 v8, 0x26

    .line 5444
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x0

    .line 5436
    invoke-static/range {v0 .. v8}, Laal;->a(Lemd;Lbfd;Lemc;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    .line 5435
    invoke-virtual {v9, v1}, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->a(Ljava/lang/CharSequence;)V

    .line 5446
    invoke-virtual {v9, v10, v11}, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->a(J)V

    .line 5449
    sget-object v1, Lbhz;->a:[I

    invoke-virtual {v0}, Lemd;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 5464
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bP:I

    .line 5466
    :goto_12
    invoke-virtual {v9, v0}, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->a(I)V

    .line 5467
    invoke-virtual {v9}, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;->c()V

    goto/16 :goto_a

    .line 320
    :cond_21
    sget v1, Laal;->gL:I

    const/4 v2, 0x0

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/SystemMessageListItemView;

    .line 323
    invoke-virtual {p2, v0}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->a(Lcum;)V

    move-object v9, v0

    goto/16 :goto_10

    .line 5428
    :cond_22
    const/4 v1, 0x0

    goto :goto_11

    .line 5451
    :pswitch_2
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->cc:I

    goto :goto_12

    .line 5455
    :pswitch_3
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bQ:I

    goto :goto_12

    .line 5458
    :pswitch_4
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bZ:I

    goto :goto_12

    .line 5461
    :pswitch_5
    sget v0, Lcom/google/android/apps/hangouts/R$drawable;->bJ:I

    goto :goto_12

    :cond_23
    move v1, v2

    goto/16 :goto_8

    :cond_24
    move v3, v1

    goto/16 :goto_7

    .line 4358
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 5449
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 763
    invoke-static {}, Lemd;->values()[Lemd;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public l_()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lbhx;->m:Lfcy;

    invoke-virtual {v0}, Lfcy;->a()V

    .line 593
    return-void
.end method
