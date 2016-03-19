.class public Lhtg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private constructor <init>(Lhtg;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget v0, p1, Lhtg;->a:F

    iput v0, p0, Lhtg;->a:F

    .line 34
    iget v0, p1, Lhtg;->b:F

    iput v0, p0, Lhtg;->b:F

    .line 35
    iget v0, p1, Lhtg;->c:F

    iput v0, p0, Lhtg;->c:F

    .line 36
    iget v0, p1, Lhtg;->d:F

    iput v0, p0, Lhtg;->d:F

    .line 37
    iget v0, p1, Lhtg;->e:F

    iput v0, p0, Lhtg;->e:F

    .line 38
    iget v0, p1, Lhtg;->f:F

    iput v0, p0, Lhtg;->f:F

    .line 39
    iget v0, p1, Lhtg;->g:F

    iput v0, p0, Lhtg;->g:F

    .line 40
    iget v0, p1, Lhtg;->h:F

    iput v0, p0, Lhtg;->h:F

    .line 41
    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 4

    .prologue
    .line 50
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 51
    iget v0, p0, Lhtg;->a:F

    .line 66
    :goto_0
    return v0

    .line 52
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 53
    iget v0, p0, Lhtg;->g:F

    goto :goto_0

    .line 57
    :cond_1
    iget v0, p0, Lhtg;->a:F

    iget v1, p0, Lhtg;->c:F

    .line 1098
    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 58
    iget v1, p0, Lhtg;->c:F

    iget v2, p0, Lhtg;->e:F

    .line 2098
    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 59
    iget v2, p0, Lhtg;->e:F

    iget v3, p0, Lhtg;->g:F

    .line 3098
    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 4098
    sub-float v3, v1, v0

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    .line 5098
    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 6098
    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 66
    goto :goto_0
.end method

.method public a()Lhtg;
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lhtg;

    invoke-direct {v0, p0}, Lhtg;-><init>(Lhtg;)V

    return-object v0
.end method

.method public b(F)F
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 78
    iget v0, p0, Lhtg;->b:F

    .line 93
    :goto_0
    return v0

    .line 79
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 80
    iget v0, p0, Lhtg;->h:F

    goto :goto_0

    .line 84
    :cond_1
    iget v0, p0, Lhtg;->b:F

    iget v1, p0, Lhtg;->d:F

    .line 7098
    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 85
    iget v1, p0, Lhtg;->d:F

    iget v2, p0, Lhtg;->f:F

    .line 8098
    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 86
    iget v2, p0, Lhtg;->f:F

    iget v3, p0, Lhtg;->h:F

    .line 9098
    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 10098
    sub-float v3, v1, v0

    mul-float/2addr v3, p1

    add-float/2addr v0, v3

    .line 11098
    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 12098
    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 93
    goto :goto_0
.end method

.method public c(F)F
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const v8, 0x358637bd    # 1.0E-6f

    .line 109
    iget v2, p0, Lhtg;->a:F

    sub-float v2, p1, v2

    iget v3, p0, Lhtg;->g:F

    iget v5, p0, Lhtg;->a:F

    sub-float/2addr v3, v5

    div-float/2addr v2, v3

    .line 110
    cmpg-float v3, v2, v1

    if-gtz v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    cmpl-float v3, v2, v0

    if-ltz v3, :cond_2

    move v1, v0

    .line 113
    goto :goto_0

    :cond_2
    move v5, v4

    move v3, v1

    move v10, v1

    move v1, v2

    move v2, v10

    .line 120
    :goto_1
    const/16 v6, 0x8

    if-ge v5, v6, :cond_4

    .line 121
    invoke-virtual {p0, v1}, Lhtg;->a(F)F

    move-result v3

    .line 122
    add-float v6, v1, v8

    invoke-virtual {p0, v6}, Lhtg;->a(F)F

    move-result v6

    sub-float/2addr v6, v3

    div-float/2addr v6, v8

    .line 123
    sub-float v7, v3, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 125
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_4

    .line 128
    cmpg-float v7, v3, p1

    if-gez v7, :cond_3

    move v2, v1

    .line 133
    :goto_2
    sub-float v7, v3, p1

    div-float v6, v7, v6

    sub-float v6, v1, v6

    .line 120
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v6

    goto :goto_1

    :cond_3
    move v0, v1

    .line 131
    goto :goto_2

    :cond_4
    move v10, v4

    move v4, v1

    move v1, v0

    move v0, v10

    .line 139
    :goto_3
    sub-float v5, v3, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_6

    const/16 v5, 0x8

    if-ge v0, v5, :cond_6

    .line 140
    cmpg-float v3, v3, p1

    if-gez v3, :cond_5

    .line 142
    add-float v2, v4, v1

    div-float/2addr v2, v9

    move v10, v4

    move v4, v2

    move v2, v10

    .line 147
    :goto_4
    invoke-virtual {p0, v4}, Lhtg;->a(F)F

    move-result v3

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 145
    :cond_5
    add-float v1, v4, v2

    div-float/2addr v1, v9

    move v10, v4

    move v4, v1

    move v1, v10

    goto :goto_4

    :cond_6
    move v1, v4

    .line 149
    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0}, Lhtg;->a()Lhtg;

    move-result-object v0

    return-object v0
.end method
