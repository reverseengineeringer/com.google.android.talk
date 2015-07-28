.class Lcom/google/android/talk/ChatView$DeltaCursor;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeltaCursor"
.end annotation


# instance fields
.field private mColumnNames:[Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDateColumn:I

.field private mDeltaColumn:I

.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;Landroid/database/Cursor;)V
    .locals 6
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, -0x1

    .line 2491
    iput-object p1, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2488
    iput v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    .line 2489
    iput v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    .line 2492
    iput-object p2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    .line 2494
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 2495
    .local v0, "columnNames":[Ljava/lang/String;
    array-length v2, v0

    .line 2497
    .local v2, "len":I
    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    .line 2499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2500
    iget-object v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    aget-object v4, v0, v1

    aput-object v4, v3, v1

    .line 2501
    iget-object v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2502
    iput v1, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    .line 2499
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2506
    :cond_1
    iput v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    .line 2507
    iget-object v3, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    iget v4, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    const-string v5, "delta"

    aput-object v5, v3, v4

    .line 2508
    return-void
.end method

.method private checkPosition()V
    .locals 3

    .prologue
    .line 2668
    iget-object v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 2669
    .local v1, "pos":I
    iget-object v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2671
    .local v0, "count":I
    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    if-ne v0, v1, :cond_1

    .line 2672
    :cond_0
    new-instance v2, Landroid/database/CursorIndexOutOfBoundsException;

    invoke-direct {v2, v1, v0}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v2

    .line 2674
    :cond_1
    return-void
.end method

.method private getDeltaValue()J
    .locals 7

    .prologue
    .line 2791
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 2796
    .local v0, "pos":I
    invoke-virtual {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_0

    .line 2797
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2798
    .local v1, "t1":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2806
    .local v3, "t2":J
    :goto_0
    sub-long v5, v3, v1

    return-wide v5

    .line 2800
    .end local v1    # "t1":J
    .end local v3    # "t2":J
    :cond_0
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2801
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2802
    .restart local v3    # "t2":J
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2803
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    iget v6, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDateColumn:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .restart local v1    # "t1":J
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 2614
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2615
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 7
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    const/4 v6, 0x0

    .line 2701
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2703
    iget v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v5, :cond_2

    .line 2704
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v3

    .line 2705
    .local v3, "value":J
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2706
    .local v2, "strValue":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2707
    .local v1, "len":I
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 2708
    .local v0, "data":[C
    if-eqz v0, :cond_0

    array-length v5, v0

    if-ge v5, v1, :cond_1

    .line 2709
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iput-object v5, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 2713
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 2717
    .end local v0    # "data":[C
    .end local v1    # "len":I
    .end local v2    # "strValue":Ljava/lang/String;
    .end local v3    # "value":J
    :goto_1
    return-void

    .line 2711
    .restart local v0    # "data":[C
    .restart local v1    # "len":I
    .restart local v2    # "strValue":Ljava/lang/String;
    .restart local v3    # "value":J
    :cond_1
    invoke-virtual {v2, v6, v1, v0, v6}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    .line 2715
    .end local v0    # "data":[C
    .end local v1    # "len":I
    .end local v2    # "strValue":Ljava/lang/String;
    .end local v3    # "value":J
    :cond_2
    iget-object v5, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    goto :goto_1
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 2605
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 2678
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2680
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2681
    const/4 v0, 0x0

    .line 2684
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 2572
    const-string v0, "delta"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2573
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    .line 2576
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2581
    const-string v0, "delta"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2582
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    .line 2585
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 2590
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2591
    const-string v0, "delta"

    .line 2594
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2664
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 2765
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2767
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2768
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    long-to-double v0, v0

    .line 2771
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 2754
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2756
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2757
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    long-to-float v0, v0

    .line 2760
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    goto :goto_0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 2732
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2734
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2735
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 2738
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 2743
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2745
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2746
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    .line 2749
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 2721
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2723
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2724
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 2727
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 2689
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2691
    iget v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v2, :cond_0

    .line 2692
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->getDeltaValue()J

    move-result-wide v0

    .line 2693
    .local v0, "value":J
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 2696
    .end local v0    # "value":J
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 2776
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 2567
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 2619
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 2552
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 2781
    invoke-direct {p0}, Lcom/google/android/talk/ChatView$DeltaCursor;->checkPosition()V

    .line 2783
    iget v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mDeltaColumn:I

    if-ne p1, v0, :cond_0

    .line 2784
    const/4 v0, 0x0

    .line 2787
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    goto :goto_0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 2532
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 2537
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 2547
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2625
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 2634
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2635
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 2645
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2630
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 2639
    iget-object v0, p0, Lcom/google/android/talk/ChatView$DeltaCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2640
    return-void
.end method
