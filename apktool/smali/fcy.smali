.class public final Lfcy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Long;

.field public d:Z

.field public final e:Z

.field public f:J

.field public g:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 2624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2625
    iput-boolean p1, p0, Lfcy;->e:Z

    .line 2626
    invoke-direct {p0}, Lfcy;->c()V

    .line 2627
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 2684
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfcy;->a:Ljava/util/Queue;

    .line 2685
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfcy;->b:Ljava/util/Set;

    .line 2686
    const/4 v0, 0x0

    iput-object v0, p0, Lfcy;->c:Ljava/lang/Long;

    .line 2687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfcy;->d:Z

    .line 2688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lfcy;->f:J

    .line 2689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfcy;->g:Z

    .line 2690
    return-void
.end method

.method private d()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 2708
    iget-object v0, p0, Lfcy;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 2701
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfcy;->a:Ljava/util/Queue;

    .line 2702
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lfcy;->b:Ljava/util/Set;

    .line 2703
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfcy;->d:Z

    .line 2704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfcy;->g:Z

    .line 2705
    return-void
.end method

.method public a(J)V
    .locals 3

    .prologue
    .line 2697
    iget-wide v0, p0, Lfcy;->f:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lfcy;->f:J

    .line 2698
    return-void
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 10

    .prologue
    .line 2634
    sget-boolean v0, Lbhx;->j:Z

    if-eqz v0, :cond_0

    .line 2635
    if-nez p1, :cond_6

    .line 2636
    const-string v0, "null"

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[MessageListState] setNewCursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2639
    :cond_0
    monitor-enter p0

    .line 2640
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2642
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2643
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 2644
    const-string v2, "timestamp"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 2645
    iget-boolean v3, p0, Lfcy;->d:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lfcy;->e:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lfcy;->g:Z

    if-nez v3, :cond_2

    .line 2652
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2653
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2654
    iget-object v3, p0, Lfcy;->b:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-wide v8, p0, Lfcy;->f:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    .line 2655
    const/4 v3, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2659
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2662
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 2665
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lfcy;->a(J)V

    .line 2666
    iget-boolean v2, p0, Lfcy;->d:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lfcy;->e:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lfcy;->g:Z

    if-eqz v2, :cond_4

    .line 2667
    :cond_3
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lfcy;->c:Ljava/lang/Long;

    .line 2671
    :cond_4
    iget-object v1, p0, Lfcy;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 2675
    iget-object v1, p0, Lfcy;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2676
    sget-boolean v0, Lbhx;->j:Z

    if-eqz v0, :cond_5

    .line 2677
    iget-object v0, p0, Lfcy;->a:Ljava/util/Queue;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[MessageListState] newIds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2679
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfcy;->d:Z

    .line 2680
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 2636
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 2680
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;)V
    .locals 6

    .prologue
    .line 1726
    invoke-virtual {p0}, Lfcy;->b()Ljava/lang/Long;

    move-result-object v0

    .line 1727
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/apps/hangouts/views/MessageListItemWrapperView;->e()J

    move-result-wide v2

    .line 2051
    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 1727
    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 1728
    invoke-direct {p0}, Lfcy;->d()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lfcy;->c:Ljava/lang/Long;

    .line 1736
    :goto_0
    return-void

    .line 1731
    :cond_0
    const-string v0, "Babel"

    const-string v1, "[MessageCursorAdapter] onRevealFinished called when the new message queue was empty."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 3739
    iput-boolean p1, p0, Lfcy;->g:Z

    .line 3740
    return-void
.end method

.method public b()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 2712
    iget-object v0, p0, Lfcy;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public b(J)Z
    .locals 3

    .prologue
    .line 2716
    iget-object v0, p0, Lfcy;->a:Ljava/util/Queue;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(J)Z
    .locals 5

    .prologue
    .line 2720
    iget-object v0, p0, Lfcy;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfcy;->c:Ljava/lang/Long;

    .line 3051
    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 2721
    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
