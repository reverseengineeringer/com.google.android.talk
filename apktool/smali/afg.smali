.class public final Lafg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laez;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Z

.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput p5, p0, Lafg;->f:I

    .line 745
    iput-object p1, p0, Lafg;->a:Ljava/lang/String;

    .line 746
    iput-object p2, p0, Lafg;->b:Ljava/lang/String;

    .line 747
    iput-object p3, p0, Lafg;->c:Ljava/lang/String;

    .line 748
    iput-object p4, p0, Lafg;->e:Ljava/lang/String;

    .line 749
    iput-boolean p6, p0, Lafg;->d:Z

    .line 750
    return-void
.end method


# virtual methods
.method public final a()Lafb;
    .locals 1

    .prologue
    .line 842
    sget-object v0, Lafb;->e:Lafb;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    iget-object v1, p0, Lafg;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    iget-object v1, p0, Lafg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    :cond_0
    iget-object v1, p0, Lafg;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 759
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 760
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    :cond_1
    iget-object v1, p0, Lafg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_2
    iget-object v1, p0, Lafg;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 766
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 767
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    :cond_3
    iget-object v1, p0, Lafg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lafg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lafg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 862
    iget v0, p0, Lafg;->f:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 809
    if-ne p0, p1, :cond_1

    .line 819
    :cond_0
    :goto_0
    return v0

    .line 812
    :cond_1
    instance-of v2, p1, Lafg;

    if-nez v2, :cond_2

    move v0, v1

    .line 813
    goto :goto_0

    .line 815
    :cond_2
    check-cast p1, Lafg;

    .line 816
    iget v2, p0, Lafg;->f:I

    iget v3, p1, Lafg;->f:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lafg;->a:Ljava/lang/String;

    iget-object v3, p1, Lafg;->a:Ljava/lang/String;

    .line 817
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lafg;->b:Ljava/lang/String;

    iget-object v3, p1, Lafg;->b:Ljava/lang/String;

    .line 818
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lafg;->c:Ljava/lang/String;

    iget-object v3, p1, Lafg;->c:Ljava/lang/String;

    .line 819
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lafg;->d:Z

    iget-boolean v3, p1, Lafg;->d:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 825
    iget v0, p0, Lafg;->f:I

    .line 826
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lafg;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lafg;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 827
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lafg;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lafg;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 828
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lafg;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lafg;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 829
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lafg;->d:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    :goto_2
    add-int/2addr v0, v1

    .line 830
    return v0

    :cond_1
    move v0, v1

    .line 826
    goto :goto_0

    :cond_2
    move v0, v1

    .line 827
    goto :goto_1

    .line 829
    :cond_3
    const/16 v0, 0x4d5

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 835
    const-string v0, "type: %d, organization: %s, department: %s, title: %s, isPrimary: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lafg;->f:I

    .line 836
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lafg;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lafg;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lafg;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lafg;->d:Z

    .line 837
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 835
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
