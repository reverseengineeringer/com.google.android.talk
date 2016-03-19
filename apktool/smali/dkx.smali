.class public final Ldkx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldkv;

.field public final synthetic b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;)V
    .locals 1

    .prologue
    .line 11309
    iput-object p1, p0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11310
    new-instance v0, Ldkv;

    invoke-direct {v0, p0}, Ldkv;-><init>(Ldkx;)V

    iput-object v0, p0, Ldkx;->a:Ldkv;

    .line 11311
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 8454
    iget-object v0, p0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 9112
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->ao:Ldkv;

    .line 8455
    iget-object v0, p0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 10112
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->i:Lcao;

    .line 8455
    invoke-interface {v0}, Lcao;->j()V

    .line 8457
    iget-object v0, p0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->getActivity()Lba;

    move-result-object v0

    sget v1, Laen;->di:I

    invoke-virtual {v0, v1}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8458
    return-void
.end method

.method public a(Ldkv;IZ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 10463
    iget-object v0, p0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->bB:Landroid/widget/AbsListView;

    check-cast v0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 10466
    invoke-virtual {v2, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 10470
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v0, v1

    .line 10471
    :goto_0
    if-ge v1, v3, :cond_1

    .line 10472
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10473
    add-int/lit8 v0, v0, 0x1

    .line 10471
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10476
    :cond_1
    if-nez v0, :cond_2

    .line 10477
    iget-object v0, p0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 11112
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->ao:Ldkv;

    .line 10477
    invoke-virtual {v0}, Ldkv;->c()V

    .line 10479
    :cond_2
    invoke-virtual {p1}, Ldkv;->b()V

    .line 10480
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 15

    .prologue
    .line 6444
    iget-object v0, p0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->bB:Landroid/widget/AbsListView;

    check-cast v0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->getCheckedItemIds()[J

    move-result-object v3

    .line 6445
    array-length v0, v3

    if-lez v0, :cond_b

    .line 6446
    iget-object v4, p0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    iget-object v0, p0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->bA:Ldhp;

    .line 7571
    invoke-virtual {v0}, Log;->a()Landroid/database/Cursor;

    move-result-object v5

    .line 7572
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7573
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 7575
    array-length v8, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v8, :cond_8

    aget-wide v10, v3, v2

    .line 7576
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 7577
    invoke-interface {v5, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 7578
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v0, v12, v10

    if-nez v0, :cond_5

    .line 7579
    invoke-static {v5}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->c(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 7581
    const/4 v9, 0x4

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 7583
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sget v14, Laen;->fr:I

    if-ne v9, v14, :cond_0

    .line 7584
    invoke-static {v0}, Laal;->f(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7585
    iget-object v12, v4, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->d:Lbfd;

    const/16 v13, 0xa

    invoke-static {v12, v0, v13}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;I)I

    goto :goto_2

    .line 7588
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sget v14, Laen;->fv:I

    if-ne v9, v14, :cond_1

    .line 7589
    invoke-static {v0}, Laal;->f(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7590
    iget-object v12, v4, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->d:Lbfd;

    const/16 v13, 0x1e

    invoke-static {v12, v0, v13}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;I)I

    goto :goto_3

    .line 7593
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sget v14, Laen;->fq:I

    if-ne v9, v14, :cond_2

    .line 7598
    invoke-static {v0}, Laal;->f(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7599
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 7601
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sget v14, Laen;->fn:I

    if-ne v9, v14, :cond_3

    .line 7608
    invoke-static {v0}, Laal;->f(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7609
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7610
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 7612
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sget v14, Laen;->fu:I

    if-ne v9, v14, :cond_4

    .line 7613
    invoke-static {v0}, Laal;->f(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7614
    iget-object v14, v4, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->h:Lcaj;

    invoke-virtual {v14, v0, v12, v13}, Lcaj;->a(Ljava/lang/String;J)V

    goto :goto_6

    .line 7617
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sget v14, Laen;->fl:I

    if-ne v9, v14, :cond_6

    .line 7618
    iget-object v9, v4, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->h:Lcaj;

    invoke-virtual {v9, v0}, Lcaj;->a(Ljava/lang/String;)V

    .line 7620
    iget-object v9, v4, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->h:Lcaj;

    const/4 v14, 0x0

    invoke-virtual {v9, v0, v12, v13, v14}, Lcaj;->a(Ljava/lang/String;JZ)V

    .line 7576
    :cond_5
    :goto_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 7622
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    sget v12, Laen;->ft:I

    if-ne v9, v12, :cond_5

    .line 7623
    new-instance v9, Lcai;

    invoke-direct {v9, v4, v0}, Lcai;-><init>(Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 7654
    invoke-virtual {v9, v0}, Lcai;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7

    .line 7575
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    .line 7661
    :cond_8
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Laen;->fl:I

    if-ne v0, v1, :cond_9

    .line 7662
    iget-object v0, v4, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->h:Lcaj;

    invoke-virtual {v0}, Lcaj;->a()V

    .line 7665
    :cond_9
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Laen;->fq:I

    if-eq v0, v1, :cond_a

    .line 7666
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Laen;->fn:I

    if-ne v0, v1, :cond_d

    .line 7667
    :cond_a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->e:[Ljava/lang/String;

    .line 7668
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Laen;->fq:I

    if-ne v0, v1, :cond_c

    .line 7669
    invoke-virtual {v4}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->e()V

    .line 6449
    :cond_b
    :goto_8
    const/4 v0, 0x1

    return v0

    .line 7672
    :cond_c
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Long;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    iput-object v0, v4, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->f:[Ljava/lang/Long;

    .line 7673
    iget-object v0, v4, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->d:Lbfd;

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->displayDeleteConversationDialog(I)V

    goto :goto_8

    .line 7678
    :cond_d
    iget-object v0, v4, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->ao:Ldkv;

    if-eqz v0, :cond_b

    .line 7679
    iget-object v0, v4, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->ao:Ldkv;

    invoke-virtual {v0}, Ldkv;->c()V

    goto :goto_8
.end method

.method public a(Ldkv;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 2322
    iget-object v0, p0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 3112
    iput-object p1, v0, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->ao:Ldkv;

    .line 2324
    iget-object v0, p0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 2325
    sget v1, Laal;->gY:I

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2327
    iget-object v0, p0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 4112
    iget-object v0, v0, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->i:Lcao;

    .line 2327
    invoke-interface {v0}, Lcao;->u_()V

    .line 2329
    iget-object v0, p0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->getActivity()Lba;

    move-result-object v0

    sget v1, Laen;->di:I

    invoke-virtual {v0, v1}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2331
    const/4 v0, 0x1

    return v0
.end method

.method public b()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .locals 1

    .prologue
    .line 11317
    iget-object v0, p0, Ldkx;->a:Ldkv;

    invoke-virtual {v0}, Ldkv;->a()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    return-object v0
.end method

.method public b(Ldkv;Landroid/view/Menu;)Z
    .locals 25

    .prologue
    .line 4336
    const/4 v2, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4337
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4336
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4340
    :cond_0
    const/4 v8, 0x0

    .line 4341
    const/4 v5, 0x0

    .line 4342
    const/4 v11, 0x1

    .line 4343
    const/4 v7, 0x1

    .line 4344
    const/4 v4, 0x1

    .line 4345
    const/4 v10, 0x1

    .line 4346
    const/4 v9, 0x0

    .line 4348
    move-object/from16 v0, p0

    iget-object v2, v0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    iget-object v2, v2, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->bB:Landroid/widget/AbsListView;

    check-cast v2, Lcom/google/android/apps/hangouts/listui/SwipeableListView;

    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v14

    .line 4349
    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    .line 4351
    move-object/from16 v0, p0

    iget-object v2, v0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    .line 5183
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->b()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 5184
    if-nez v2, :cond_4

    const/4 v2, 0x0

    move v3, v2

    .line 4351
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    iget-object v2, v2, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->bB:Landroid/widget/AbsListView;

    check-cast v2, Lcom/google/android/apps/hangouts/listui/SwipeableListView;

    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    iget-object v2, v2, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->bB:Landroid/widget/AbsListView;

    check-cast v2, Lcom/google/android/apps/hangouts/listui/SwipeableListView;

    .line 4352
    invoke-virtual {v2}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v3, v2

    .line 4353
    const/4 v2, 0x0

    .line 4354
    const/4 v6, 0x1

    .line 4355
    if-lez v3, :cond_16

    .line 4356
    const/4 v3, 0x0

    move v13, v3

    move v3, v4

    move v4, v5

    move v5, v8

    :goto_2
    if-ge v13, v15, :cond_9

    .line 4357
    invoke-virtual {v14, v13}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 4358
    add-int/lit8 v8, v2, 0x1

    .line 4359
    move-object/from16 v0, p0

    iget-object v2, v0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v14, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    .line 6112
    invoke-virtual {v2, v12}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->a(I)Ljava/lang/Object;

    move-result-object v2

    .line 4360
    instance-of v12, v2, Landroid/database/Cursor;

    if-eqz v12, :cond_14

    .line 4363
    check-cast v2, Landroid/database/Cursor;

    .line 4364
    if-eqz v2, :cond_14

    .line 4365
    const/4 v3, 0x3

    .line 4366
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 4367
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v7, 0xa

    if-ne v3, v7, :cond_5

    const/4 v3, 0x1

    .line 4370
    :goto_3
    const/16 v7, 0x1d

    .line 4371
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4370
    invoke-static {v7}, Laal;->f(I)Z

    move-result v18

    .line 4372
    if-nez v18, :cond_13

    .line 4373
    const/4 v7, 0x0

    .line 4376
    :goto_4
    const-wide/16 v20, 0x2

    cmp-long v6, v16, v20

    if-nez v6, :cond_1

    if-eqz v18, :cond_12

    .line 4380
    :cond_1
    const/4 v12, 0x0

    .line 4382
    :goto_5
    const-wide/16 v20, 0x1

    cmp-long v6, v16, v20

    if-eqz v6, :cond_2

    if-nez v18, :cond_2

    .line 4383
    const/4 v10, 0x0

    .line 4385
    :cond_2
    if-eqz v3, :cond_6

    .line 4386
    const/4 v3, 0x1

    move v4, v3

    .line 4391
    :goto_6
    const/16 v3, 0xf

    .line 4392
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 4393
    const/4 v6, 0x2

    if-ne v3, v6, :cond_7

    const/4 v11, 0x1

    .line 4396
    :goto_7
    if-nez v11, :cond_8

    const/4 v3, 0x1

    move v6, v3

    .line 4399
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    iget-object v3, v3, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->bA:Ldhp;

    check-cast v3, Lcam;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v3, v2}, Lcam;->getItemViewType(I)I

    move-result v2

    .line 4400
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_11

    .line 4402
    :cond_3
    const/4 v2, 0x1

    move v3, v8

    move v9, v4

    move v4, v2

    move v8, v12

    move v2, v7

    move v7, v6

    move v6, v11

    move/from16 v22, v10

    move v10, v5

    move/from16 v5, v22

    .line 4356
    :goto_9
    add-int/lit8 v11, v13, 0x1

    move v13, v11

    move v11, v8

    move/from16 v22, v3

    move v3, v6

    move v6, v2

    move/from16 v2, v22

    move/from16 v23, v5

    move v5, v10

    move/from16 v10, v23

    move/from16 v24, v9

    move v9, v4

    move/from16 v4, v24

    goto/16 :goto_2

    .line 5184
    :cond_4
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    move v3, v2

    goto/16 :goto_1

    .line 4367
    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    .line 4388
    :cond_6
    const/4 v3, 0x1

    move v5, v3

    goto :goto_6

    .line 4393
    :cond_7
    const/4 v11, 0x0

    goto :goto_7

    .line 4396
    :cond_8
    const/4 v3, 0x0

    move v6, v3

    goto :goto_8

    :cond_9
    move/from16 v22, v2

    move v2, v10

    move v10, v9

    move/from16 v9, v22

    move/from16 v23, v7

    move v7, v5

    move v5, v4

    move/from16 v4, v23

    .line 4409
    :goto_a
    if-eqz v2, :cond_10

    const/4 v8, 0x1

    if-le v9, v8, :cond_10

    if-nez v6, :cond_10

    .line 4410
    const/4 v2, 0x0

    move v8, v2

    .line 4414
    :goto_b
    if-eqz v7, :cond_a

    if-nez v10, :cond_a

    const/4 v2, 0x1

    move v7, v2

    .line 4415
    :goto_c
    if-eqz v5, :cond_b

    if-nez v10, :cond_b

    const/4 v2, 0x1

    move v6, v2

    .line 4416
    :goto_d
    if-eqz v4, :cond_c

    if-nez v10, :cond_c

    const/4 v2, 0x1

    move v5, v2

    .line 4417
    :goto_e
    if-eqz v3, :cond_d

    if-nez v10, :cond_d

    const/4 v2, 0x1

    move v4, v2

    .line 4418
    :goto_f
    if-eqz v11, :cond_e

    if-nez v10, :cond_e

    const/4 v2, 0x1

    move v3, v2

    .line 4419
    :goto_10
    if-eqz v8, :cond_f

    if-nez v10, :cond_f

    const/4 v2, 0x1

    .line 4421
    :goto_11
    move-object/from16 v0, p0

    iget-object v8, v0, Ldkx;->b:Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;

    invoke-virtual {v8}, Lcom/google/android/apps/hangouts/fragments/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v10, Lcom/google/android/apps/hangouts/hangout/StressMode;->aF:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 4422
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v12

    .line 4421
    invoke-virtual {v8, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ldkv;->a(Ljava/lang/CharSequence;)V

    .line 4424
    sget v8, Laen;->fl:I

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 4425
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4426
    sget v5, Laen;->fu:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 4427
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4429
    sget v4, Laen;->fq:I

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 4430
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4431
    sget v3, Laen;->fr:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4432
    sget v3, Laen;->fv:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4434
    sget v3, Laen;->fn:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4435
    sget v2, Laen;->ft:I

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 4436
    invoke-static {}, Lezc;->a()Z

    move-result v3

    .line 4435
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4438
    const/4 v2, 0x0

    return v2

    .line 4414
    :cond_a
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_c

    .line 4415
    :cond_b
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_d

    .line 4416
    :cond_c
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_e

    .line 4417
    :cond_d
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_f

    .line 4418
    :cond_e
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_10

    .line 4419
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_11

    :cond_10
    move v8, v2

    goto/16 :goto_b

    :cond_11
    move v2, v7

    move v3, v8

    move v7, v6

    move v8, v12

    move v6, v11

    move/from16 v22, v9

    move v9, v4

    move/from16 v4, v22

    move/from16 v23, v10

    move v10, v5

    move/from16 v5, v23

    goto/16 :goto_9

    :cond_12
    move v12, v11

    goto/16 :goto_5

    :cond_13
    move v7, v6

    goto/16 :goto_4

    :cond_14
    move v2, v6

    move v6, v3

    move v3, v8

    move v8, v11

    move/from16 v22, v9

    move v9, v4

    move/from16 v4, v22

    move/from16 v23, v10

    move v10, v5

    move/from16 v5, v23

    goto/16 :goto_9

    :cond_15
    move v8, v11

    move/from16 v22, v2

    move v2, v6

    move v6, v3

    move/from16 v3, v22

    move/from16 v23, v9

    move v9, v4

    move/from16 v4, v23

    move/from16 v24, v10

    move v10, v5

    move/from16 v5, v24

    goto/16 :goto_9

    :cond_16
    move v3, v4

    move v4, v7

    move v7, v8

    move/from16 v22, v2

    move v2, v10

    move v10, v9

    move/from16 v9, v22

    goto/16 :goto_a
.end method
