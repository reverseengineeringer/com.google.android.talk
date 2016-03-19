.class public Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;
.super Lcom/google/android/libraries/hangouts/video/internal/Stats;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 721
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/Stats;-><init>()V

    .line 714
    iput v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->c:I

    .line 715
    iput v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->d:I

    .line 716
    iput v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->e:I

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->f:Z

    .line 718
    iput v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->g:I

    .line 722
    iput p1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->a:I

    .line 723
    iput p2, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->b:I

    .line 724
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 739
    iput-boolean p1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->f:Z

    .line 740
    return-void
.end method

.method public addTo(Ljuk;)V
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Ljuk;->f:Ljava/lang/Integer;

    .line 749
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Ljuk;->j:Ljava/lang/Integer;

    .line 750
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Ljuk;->k:Ljava/lang/Integer;

    .line 751
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Ljuk;->o:Ljava/lang/Integer;

    .line 752
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Ljuk;->p:Ljava/lang/Integer;

    .line 753
    iget-boolean v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Ljuk;->q:Ljava/lang/Boolean;

    .line 754
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Ljuk;->r:Ljava/lang/Integer;

    .line 755
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 727
    iput p1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->c:I

    .line 728
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 731
    iput p1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->d:I

    .line 732
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 735
    iput p1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->e:I

    .line 736
    return-void
.end method

.method public e(I)V
    .locals 0

    .prologue
    .line 743
    iput p1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->g:I

    .line 744
    return-void
.end method

.method public print(Ljava/io/PrintWriter;Lcom/google/android/libraries/hangouts/video/internal/Stats$AggregatePrintStats;)V
    .locals 9

    .prologue
    .line 764
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->a:I

    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->b:I

    iget v2, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->c:I

    iget v3, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->e:I

    iget v4, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->d:I

    iget-boolean v5, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->f:Z

    iget v6, p0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;->g:I

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x66

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, " -- GlobalStats -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    return-void
.end method
