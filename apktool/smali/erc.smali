.class public final Lerc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:I


# direct methods
.method constructor <init>(IIILjava/lang/String;II)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lerc;->a:I

    .line 76
    iput p2, p0, Lerc;->b:I

    .line 77
    iput p3, p0, Lerc;->c:I

    .line 78
    iput-object p4, p0, Lerc;->d:Ljava/lang/String;

    .line 79
    iput p5, p0, Lerc;->e:I

    .line 80
    iput p6, p0, Lerc;->f:I

    .line 81
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lerc;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lerc;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lerc;->b:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lerc;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lerc;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lerc;->b:I

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    if-ne p0, p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :cond_3
    check-cast p1, Lerc;

    .line 115
    iget v2, p0, Lerc;->a:I

    iget v3, p1, Lerc;->a:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lerc;->b:I

    iget v3, p1, Lerc;->b:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lerc;->c:I

    iget v3, p1, Lerc;->c:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lerc;->d:Ljava/lang/String;

    iget-object v3, p1, Lerc;->d:Ljava/lang/String;

    .line 118
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lerc;->e:I

    iget v3, p1, Lerc;->e:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lerc;->f:I

    iget v3, p1, Lerc;->f:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 127
    iget v0, p0, Lerc;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 128
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lerc;->b:I

    add-int/2addr v0, v1

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lerc;->c:I

    add-int/2addr v0, v1

    .line 130
    iget-object v1, p0, Lerc;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 131
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lerc;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lerc;->e:I

    add-int/2addr v0, v1

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lerc;->f:I

    add-int/2addr v0, v1

    .line 135
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 85
    const-string v0, "CellState, serviceState: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lerc;->a:I

    iget v2, p0, Lerc;->b:I

    iget v3, p0, Lerc;->c:I

    iget-object v4, p0, Lerc;->d:Ljava/lang/String;

    iget v5, p0, Lerc;->e:I

    iget v6, p0, Lerc;->f:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit16 v8, v8, 0x88

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signalLevelPercent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkOperator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
