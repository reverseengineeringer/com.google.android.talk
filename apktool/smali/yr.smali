.class public Lyr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/util/SparseIntArray;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lyr;->a:Landroid/util/SparseIntArray;

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyr;->b:Z

    return-void
.end method


# virtual methods
.method a(I)I
    .locals 4

    .prologue
    .line 792
    const/4 v1, 0x0

    .line 793
    iget-object v0, p0, Lyr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 795
    :goto_0
    if-gt v1, v0, :cond_1

    .line 796
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 797
    iget-object v3, p0, Lyr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 798
    if-ge v3, p1, :cond_0

    .line 799
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 801
    :cond_0
    add-int/lit8 v0, v2, -0x1

    .line 803
    goto :goto_0

    .line 804
    :cond_1
    add-int/lit8 v0, v1, -0x1

    .line 805
    if-ltz v0, :cond_2

    iget-object v1, p0, Lyr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 806
    iget-object v1, p0, Lyr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 808
    :goto_1
    return v0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public a(II)I
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 762
    if-ne v3, p2, :cond_1

    .line 788
    :cond_0
    :goto_0
    return v1

    .line 768
    :cond_1
    iget-boolean v0, p0, Lyr;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lyr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 769
    invoke-virtual {p0, p1}, Lyr;->a(I)I

    move-result v0

    .line 770
    if-ltz v0, :cond_5

    .line 771
    iget-object v2, p0, Lyr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 772
    add-int/lit8 v0, v0, 0x1

    :goto_1
    move v4, v0

    move v0, v2

    move v2, v4

    .line 775
    :goto_2
    if-ge v2, p1, :cond_4

    .line 777
    add-int/lit8 v0, v0, 0x1

    .line 778
    if-ne v0, p2, :cond_3

    move v0, v1

    .line 775
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 780
    :cond_3
    if-le v0, p2, :cond_2

    move v0, v3

    .line 782
    goto :goto_3

    .line 785
    :cond_4
    add-int/lit8 v2, v0, 0x1

    if-gt v2, p2, :cond_0

    move v1, v0

    .line 786
    goto :goto_0

    :cond_5
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method public a()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lyr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 713
    return-void
.end method

.method b(II)I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 725
    iget-boolean v0, p0, Lyr;->b:Z

    if-nez v0, :cond_1

    .line 726
    invoke-virtual {p0, p1, p2}, Lyr;->a(II)I

    move-result v0

    .line 734
    :cond_0
    :goto_0
    return v0

    .line 728
    :cond_1
    iget-object v0, p0, Lyr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 729
    if-ne v0, v1, :cond_0

    .line 732
    invoke-virtual {p0, p1, p2}, Lyr;->a(II)I

    move-result v0

    .line 733
    iget-object v1, p0, Lyr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public c(II)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    move v3, v2

    move v0, v2

    move v1, v2

    .line 825
    :goto_0
    if-ge v3, p1, :cond_2

    .line 827
    add-int/lit8 v1, v1, 0x1

    .line 828
    if-ne v1, p2, :cond_1

    .line 830
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 825
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 831
    :cond_1
    if-le v1, p2, :cond_0

    .line 833
    const/4 v1, 0x1

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 837
    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-le v1, p2, :cond_3

    .line 838
    add-int/lit8 v0, v0, 0x1

    .line 840
    :cond_3
    return v0
.end method
