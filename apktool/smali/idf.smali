.class final Lidf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[C

.field private static final d:[C

.field private static final e:[C

.field private static final f:[C

.field private static final g:[C

.field private static final h:[C

.field private static final i:[C

.field private static final j:[C

.field private static final k:[C

.field private static final l:[C

.field private static final m:[C

.field private static final n:[C

.field private static final o:[C

.field private static final p:[C

.field private static final q:[C

.field private static final r:[[C


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:I

.field private G:I

.field private H:[I

.field private I:[I

.field private s:[C

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 334
    const-string v0, "http://"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->a:[C

    .line 335
    const-string v0, "https://"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->b:[C

    .line 336
    const-string v0, "lh"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->c:[C

    .line 337
    const-string v0, "ap"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->d:[C

    .line 338
    const-string v0, "sp"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->e:[C

    .line 339
    const-string v0, "bp"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->f:[C

    .line 340
    const-string v0, ".googleusercontent.com/"

    .line 341
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->g:[C

    .line 342
    const-string v0, "www.google.com/visualsearch/lh/"

    .line 343
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->h:[C

    .line 344
    const-string v0, ".google.com/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->i:[C

    .line 345
    const-string v0, ".blogger.com/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->j:[C

    .line 346
    const-string v0, ".bp.blogspot.com/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->k:[C

    .line 347
    const-string v0, ".ggpht.com/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->l:[C

    .line 348
    const-string v0, "public"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->m:[C

    .line 349
    const-string v0, "proxy"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->n:[C

    .line 350
    const-string v0, "image"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->o:[C

    .line 351
    const-string v0, "%3D"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->p:[C

    .line 352
    const-string v0, "%3d"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lidf;->q:[C

    .line 353
    const/4 v0, 0x5

    new-array v0, v0, [[C

    new-array v1, v5, [C

    const/16 v2, 0x4f

    aput-char v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [C

    const/16 v2, 0x4a

    aput-char v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v3, [C

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v5, [C

    const/16 v3, 0x55

    aput-char v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [C

    const/16 v3, 0x49

    aput-char v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lidf;->r:[[C

    return-void

    :array_0
    .array-data 2
        0x55s
        0x74s
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/16 v0, 0x7d0

    new-array v0, v0, [C

    iput-object v0, p0, Lidf;->s:[C

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lidf;->D:Z

    .line 374
    new-array v0, v1, [I

    iput-object v0, p0, Lidf;->H:[I

    .line 375
    new-array v0, v1, [I

    iput-object v0, p0, Lidf;->I:[I

    return-void
.end method

.method private static a(F)Ljava/lang/String;
    .locals 3

    .prologue
    .line 550
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 551
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cropping requires values between 0 and 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_1
    const v0, 0x477fff00    # 65535.0f

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    const-string v1, "0000"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 554
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 12

    .prologue
    const/16 v11, 0x2d

    const/4 v1, 0x0

    .line 559
    iget v5, p0, Lidf;->w:I

    .line 560
    iget v0, p0, Lidf;->w:I

    iget v2, p0, Lidf;->E:I

    add-int v7, v0, v2

    .line 561
    :goto_0
    if-ge v5, v7, :cond_5

    move v0, v1

    .line 562
    :goto_1
    sget-object v2, Lidf;->r:[[C

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 563
    const/4 v6, 0x1

    .line 565
    sget-object v2, Lidf;->r:[[C

    aget-object v8, v2, v0

    move v2, v1

    move v4, v5

    .line 567
    :goto_2
    array-length v3, v8

    if-ge v2, v3, :cond_7

    if-ge v4, v7, :cond_7

    .line 568
    add-int/lit8 v3, v2, 0x1

    aget-char v9, v8, v2

    iget-object v10, p0, Lidf;->s:[C

    add-int/lit8 v2, v4, 0x1

    aget-char v4, v10, v4

    if-eq v9, v4, :cond_6

    move v4, v2

    move v2, v1

    .line 574
    :goto_3
    if-eqz v2, :cond_1

    array-length v6, v8

    if-ne v3, v6, :cond_0

    if-eq v4, v7, :cond_1

    iget-object v3, p0, Lidf;->s:[C

    aget-char v3, v3, v4

    if-eq v3, v11, :cond_1

    :cond_0
    move v2, v1

    .line 577
    :cond_1
    if-eqz v2, :cond_3

    .line 578
    sget-object v2, Lidf;->r:[[C

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    :cond_2
    :goto_4
    if-ge v5, v7, :cond_4

    iget-object v0, p0, Lidf;->s:[C

    aget-char v0, v0, v5

    if-eq v0, v11, :cond_4

    .line 583
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 562
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 585
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 587
    :cond_5
    return-void

    :cond_6
    move v4, v2

    move v2, v3

    goto :goto_2

    :cond_7
    move v3, v2

    move v2, v6

    goto :goto_3
.end method

.method private a(I[C)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 878
    array-length v2, p2

    .line 879
    add-int v1, p1, v2

    iget v3, p0, Lidf;->t:I

    if-le v1, v3, :cond_1

    .line 887
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 882
    :goto_1
    if-ge v1, v2, :cond_2

    .line 883
    iget-object v3, p0, Lidf;->s:[C

    add-int v4, p1, v1

    aget-char v3, v3, v4

    aget-char v4, p2, v1

    if-ne v3, v4, :cond_0

    .line 882
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 887
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a([C)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 858
    iget v1, p0, Lidf;->u:I

    .line 859
    array-length v4, p1

    .line 860
    add-int v2, v1, v4

    iget v3, p0, Lidf;->t:I

    if-le v2, v3, :cond_1

    .line 871
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v1

    move v1, v0

    .line 864
    :goto_1
    if-ge v1, v4, :cond_2

    .line 865
    iget-object v5, p0, Lidf;->s:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v5, v5, v2

    add-int/lit8 v2, v1, 0x1

    aget-char v1, p1, v1

    if-ne v5, v1, :cond_0

    move v1, v2

    move v2, v3

    goto :goto_1

    .line 870
    :cond_2
    iput v2, p0, Lidf;->u:I

    .line 871
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(I[C)I
    .locals 6

    .prologue
    .line 900
    array-length v2, p2

    .line 901
    iget v0, p0, Lidf;->t:I

    sub-int v3, v0, v2

    move v0, p1

    .line 903
    :goto_0
    if-gt v0, v3, :cond_1

    .line 904
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 905
    iget-object v4, p0, Lidf;->s:[C

    add-int v5, v0, v1

    aget-char v4, v4, v5

    aget-char v5, p2, v1

    if-ne v4, v5, :cond_0

    .line 904
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 903
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 911
    :cond_1
    const/4 v0, -0x1

    :cond_2
    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x5

    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 608
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lidf;->t:I

    .line 609
    iget v0, p0, Lidf;->t:I

    const/16 v3, 0x7d0

    if-lt v0, v3, :cond_0

    .line 610
    iput-boolean v1, p0, Lidf;->D:Z

    .line 664
    :goto_0
    return-void

    .line 614
    :cond_0
    iget v0, p0, Lidf;->t:I

    iget-object v3, p0, Lidf;->s:[C

    invoke-virtual {p1, v1, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 615
    iput v1, p0, Lidf;->u:I

    .line 616
    iput-boolean v1, p0, Lidf;->A:Z

    .line 617
    iput-boolean v1, p0, Lidf;->B:Z

    .line 618
    iput-boolean v1, p0, Lidf;->C:Z

    .line 1765
    sget-object v0, Lidf;->a:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lidf;->b:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 620
    :goto_1
    iput-boolean v0, p0, Lidf;->y:Z

    .line 621
    iget-boolean v0, p0, Lidf;->y:Z

    if-nez v0, :cond_12

    .line 622
    iput-boolean v1, p0, Lidf;->D:Z

    goto :goto_0

    .line 1769
    :cond_1
    iget v0, p0, Lidf;->u:I

    iput v0, p0, Lidf;->v:I

    .line 1771
    sget-object v0, Lidf;->c:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1772
    iput-boolean v2, p0, Lidf;->A:Z

    .line 1773
    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x33

    if-lt v0, v3, :cond_9

    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x36

    if-gt v0, v3, :cond_9

    .line 1774
    iget v0, p0, Lidf;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lidf;->u:I

    .line 1776
    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    add-int/lit8 v3, v3, 0x1

    aget-char v0, v0, v3

    const/16 v3, 0x64

    if-ne v0, v3, :cond_5

    .line 1777
    iput-boolean v2, p0, Lidf;->z:Z

    .line 1778
    iget v0, p0, Lidf;->u:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lidf;->u:I

    .line 1779
    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x61

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x67

    if-le v0, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x7a

    if-ne v0, v3, :cond_4

    .line 1781
    :cond_3
    iget v0, p0, Lidf;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lidf;->u:I

    .line 1785
    sget-object v0, Lidf;->g:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 1786
    goto :goto_1

    :cond_4
    move v0, v1

    .line 1783
    goto :goto_1

    .line 1789
    :cond_5
    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    add-int/lit8 v3, v3, 0x1

    aget-char v0, v0, v3

    const/16 v3, 0x74

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    add-int/lit8 v3, v3, 0x2

    aget-char v0, v0, v3

    const/16 v3, 0x74

    if-ne v0, v3, :cond_6

    .line 1791
    iput-boolean v2, p0, Lidf;->z:Z

    .line 1792
    iget v0, p0, Lidf;->u:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lidf;->u:I

    .line 1793
    sget-object v0, Lidf;->g:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 1794
    goto/16 :goto_1

    .line 1796
    :cond_6
    sget-object v0, Lidf;->i:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1797
    iput-boolean v2, p0, Lidf;->B:Z

    .line 1849
    :cond_7
    iget v0, p0, Lidf;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lidf;->F:I

    move v0, v2

    .line 1850
    goto/16 :goto_1

    .line 1798
    :cond_8
    sget-object v0, Lidf;->g:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lidf;->l:[C

    .line 1799
    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 1800
    goto/16 :goto_1

    :cond_9
    move v0, v1

    .line 1803
    goto/16 :goto_1

    .line 1805
    :cond_a
    sget-object v0, Lidf;->e:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1806
    iput-boolean v2, p0, Lidf;->A:Z

    .line 1807
    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x31

    if-lt v0, v3, :cond_b

    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x33

    if-gt v0, v3, :cond_b

    .line 1808
    iget v0, p0, Lidf;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lidf;->u:I

    .line 1809
    sget-object v0, Lidf;->g:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lidf;->l:[C

    .line 1810
    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 1811
    goto/16 :goto_1

    :cond_b
    move v0, v1

    .line 1814
    goto/16 :goto_1

    .line 1816
    :cond_c
    sget-object v0, Lidf;->d:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1817
    iput-boolean v2, p0, Lidf;->A:Z

    .line 1818
    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x32

    if-ne v0, v3, :cond_d

    .line 1819
    iget v0, p0, Lidf;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lidf;->u:I

    .line 1820
    sget-object v0, Lidf;->g:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lidf;->l:[C

    .line 1821
    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 1822
    goto/16 :goto_1

    :cond_d
    move v0, v1

    .line 1825
    goto/16 :goto_1

    .line 1828
    :cond_e
    iput-boolean v1, p0, Lidf;->A:Z

    .line 1829
    sget-object v0, Lidf;->f:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1830
    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x30

    if-lt v0, v3, :cond_f

    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x33

    if-gt v0, v3, :cond_f

    .line 1831
    iget v0, p0, Lidf;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lidf;->u:I

    .line 1832
    sget-object v0, Lidf;->j:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 1833
    goto/16 :goto_1

    :cond_f
    move v0, v1

    .line 1836
    goto/16 :goto_1

    .line 1838
    :cond_10
    sget-object v0, Lidf;->h:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1839
    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x31

    if-lt v0, v3, :cond_11

    iget-object v0, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->u:I

    aget-char v0, v0, v3

    const/16 v3, 0x34

    if-gt v0, v3, :cond_11

    .line 1840
    iget v0, p0, Lidf;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lidf;->u:I

    .line 1841
    sget-object v0, Lidf;->k:[C

    invoke-direct {p0, v0}, Lidf;->a([C)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 1842
    goto/16 :goto_1

    :cond_11
    move v0, v1

    .line 1845
    goto/16 :goto_1

    .line 627
    :cond_12
    iget v3, p0, Lidf;->u:I

    .line 628
    iget v0, p0, Lidf;->u:I

    .line 629
    iput v1, p0, Lidf;->G:I

    .line 631
    :goto_2
    iget v4, p0, Lidf;->t:I

    if-eq v3, v4, :cond_13

    iget-object v4, p0, Lidf;->s:[C

    aget-char v4, v4, v3

    const/16 v6, 0x2f

    if-ne v4, v6, :cond_14

    .line 632
    :cond_13
    if-ne v3, v0, :cond_15

    iget v4, p0, Lidf;->t:I

    if-eq v3, v4, :cond_15

    .line 634
    add-int/lit8 v0, v3, 0x1

    .line 648
    :cond_14
    :goto_3
    iget v4, p0, Lidf;->t:I

    if-eq v3, v4, :cond_17

    .line 652
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 636
    :cond_15
    iget v4, p0, Lidf;->G:I

    const/16 v6, 0x8

    if-lt v4, v6, :cond_16

    .line 637
    iput-boolean v1, p0, Lidf;->D:Z

    goto/16 :goto_0

    .line 641
    :cond_16
    iget-object v4, p0, Lidf;->H:[I

    iget v6, p0, Lidf;->G:I

    aput v0, v4, v6

    .line 642
    iget-object v4, p0, Lidf;->I:[I

    iget v6, p0, Lidf;->G:I

    sub-int v0, v3, v0

    aput v0, v4, v6

    .line 643
    add-int/lit8 v0, v3, 0x1

    .line 644
    iget v4, p0, Lidf;->G:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lidf;->G:I

    goto :goto_3

    .line 2725
    :cond_17
    iget v0, p0, Lidf;->G:I

    if-le v0, v2, :cond_29

    iget-object v0, p0, Lidf;->I:[I

    aget v0, v0, v1

    sget-object v3, Lidf;->o:[C

    array-length v3, v3

    if-ne v0, v3, :cond_29

    iget-object v0, p0, Lidf;->H:[I

    aget v0, v0, v1

    sget-object v3, Lidf;->o:[C

    .line 2726
    invoke-direct {p0, v0, v3}, Lidf;->a(I[C)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v2

    .line 2731
    :goto_4
    if-nez v0, :cond_18

    iget v3, p0, Lidf;->G:I

    if-ne v3, v7, :cond_18

    .line 2732
    iget-object v0, p0, Lidf;->H:[I

    aget v0, v0, v8

    iput v0, p0, Lidf;->w:I

    .line 2733
    iput v1, p0, Lidf;->E:I

    :goto_5
    move v0, v2

    .line 655
    :goto_6
    if-eqz v0, :cond_1c

    .line 656
    iput-boolean v2, p0, Lidf;->C:Z

    .line 657
    iput-boolean v2, p0, Lidf;->D:Z

    goto/16 :goto_0

    .line 2734
    :cond_18
    if-eqz v0, :cond_19

    iget v3, p0, Lidf;->G:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_19

    .line 2735
    iget-object v0, p0, Lidf;->H:[I

    aget v0, v0, v7

    iput v0, p0, Lidf;->w:I

    .line 2736
    iput v1, p0, Lidf;->E:I

    goto :goto_5

    .line 2737
    :cond_19
    if-nez v0, :cond_1a

    iget v3, p0, Lidf;->G:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1a

    .line 2738
    iget-object v0, p0, Lidf;->H:[I

    aget v0, v0, v8

    iput v0, p0, Lidf;->w:I

    .line 2739
    iget-object v0, p0, Lidf;->I:[I

    aget v0, v0, v8

    iput v0, p0, Lidf;->E:I

    goto :goto_5

    .line 2740
    :cond_1a
    if-eqz v0, :cond_1b

    iget v0, p0, Lidf;->G:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1b

    .line 2741
    iget-object v0, p0, Lidf;->H:[I

    aget v0, v0, v7

    iput v0, p0, Lidf;->w:I

    .line 2742
    iget-object v0, p0, Lidf;->I:[I

    aget v0, v0, v7

    iput v0, p0, Lidf;->E:I

    goto :goto_5

    :cond_1b
    move v0, v1

    .line 2744
    goto :goto_6

    .line 3674
    :cond_1c
    iget v0, p0, Lidf;->G:I

    if-le v0, v2, :cond_28

    iget-object v0, p0, Lidf;->I:[I

    aget v0, v0, v1

    sget-object v3, Lidf;->m:[C

    array-length v3, v3

    if-ne v0, v3, :cond_1d

    iget-object v0, p0, Lidf;->H:[I

    aget v0, v0, v1

    sget-object v3, Lidf;->m:[C

    .line 3676
    invoke-direct {p0, v0, v3}, Lidf;->a(I[C)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    iget-object v0, p0, Lidf;->I:[I

    aget v0, v0, v1

    sget-object v3, Lidf;->n:[C

    array-length v3, v3

    if-ne v0, v3, :cond_28

    iget-object v0, p0, Lidf;->H:[I

    aget v0, v0, v1

    sget-object v3, Lidf;->n:[C

    .line 3678
    invoke-direct {p0, v0, v3}, Lidf;->a(I[C)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_1e
    move v0, v2

    .line 3684
    :goto_7
    if-nez v0, :cond_20

    iget v3, p0, Lidf;->G:I

    if-ne v3, v2, :cond_20

    .line 3685
    iget-object v0, p0, Lidf;->H:[I

    aget v3, v0, v1

    .line 3686
    iget-object v0, p0, Lidf;->I:[I

    aget v0, v0, v1

    :goto_8
    move v4, v3

    .line 3891
    :goto_9
    iget v6, p0, Lidf;->t:I

    if-ge v4, v6, :cond_23

    .line 3892
    iget-object v6, p0, Lidf;->s:[C

    aget-char v6, v6, v4

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_22

    .line 3694
    :goto_a
    iput v4, p0, Lidf;->x:I

    .line 3695
    iget v4, p0, Lidf;->x:I

    if-eq v4, v5, :cond_24

    .line 3696
    iget v4, p0, Lidf;->x:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lidf;->w:I

    .line 3706
    :cond_1f
    :goto_b
    iget v4, p0, Lidf;->x:I

    if-eq v4, v5, :cond_26

    .line 3707
    iget v4, p0, Lidf;->w:I

    sub-int v3, v4, v3

    sub-int/2addr v0, v3

    iput v0, p0, Lidf;->E:I

    :goto_c
    move v0, v2

    .line 658
    :goto_d
    if-eqz v0, :cond_27

    .line 659
    iput-boolean v1, p0, Lidf;->C:Z

    .line 660
    iput-boolean v2, p0, Lidf;->D:Z

    goto/16 :goto_0

    .line 3687
    :cond_20
    if-eqz v0, :cond_21

    iget v0, p0, Lidf;->G:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_21

    .line 3688
    iget-object v0, p0, Lidf;->H:[I

    aget v3, v0, v2

    .line 3689
    iget-object v0, p0, Lidf;->I:[I

    aget v0, v0, v2

    goto :goto_8

    :cond_21
    move v0, v1

    .line 3691
    goto :goto_d

    .line 3891
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_23
    move v4, v5

    .line 3896
    goto :goto_a

    .line 3698
    :cond_24
    sget-object v4, Lidf;->p:[C

    invoke-direct {p0, v3, v4}, Lidf;->b(I[C)I

    move-result v4

    iput v4, p0, Lidf;->x:I

    .line 3699
    iget v4, p0, Lidf;->x:I

    if-ne v4, v5, :cond_25

    .line 3700
    sget-object v4, Lidf;->q:[C

    invoke-direct {p0, v3, v4}, Lidf;->b(I[C)I

    move-result v4

    iput v4, p0, Lidf;->x:I

    .line 3702
    :cond_25
    iget v4, p0, Lidf;->x:I

    if-eq v4, v5, :cond_1f

    .line 3703
    iget v4, p0, Lidf;->x:I

    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lidf;->w:I

    goto :goto_b

    .line 3709
    :cond_26
    add-int/2addr v0, v3

    iput v0, p0, Lidf;->x:I

    .line 3710
    iget v0, p0, Lidf;->x:I

    iput v0, p0, Lidf;->w:I

    .line 3711
    iput v1, p0, Lidf;->E:I

    goto :goto_c

    .line 662
    :cond_27
    iput-boolean v1, p0, Lidf;->D:Z

    goto/16 :goto_0

    :cond_28
    move v0, v1

    goto :goto_7

    :cond_29
    move v0, v1

    goto/16 :goto_4
.end method

.method private b(Ljava/lang/StringBuilder;)V
    .locals 5

    .prologue
    const/16 v4, 0x2d

    .line 590
    iget v1, p0, Lidf;->w:I

    .line 591
    iget v0, p0, Lidf;->w:I

    iget v2, p0, Lidf;->E:I

    add-int/2addr v2, v0

    .line 592
    :goto_0
    if-ge v1, v2, :cond_4

    .line 593
    iget-object v0, p0, Lidf;->s:[C

    aget-char v0, v0, v1

    const/16 v3, 0x66

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    .line 594
    :goto_1
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lidf;->s:[C

    aget-char v3, v3, v1

    if-eq v3, v4, :cond_2

    .line 595
    if-eqz v0, :cond_0

    .line 596
    iget-object v3, p0, Lidf;->s:[C

    aget-char v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 593
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 600
    :cond_2
    if-eqz v0, :cond_3

    .line 601
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 604
    goto :goto_0

    .line 605
    :cond_4
    return-void
.end method


# virtual methods
.method declared-synchronized a(Ljava/lang/String;IIIIIILandroid/graphics/RectF;II)Ljava/lang/String;
    .locals 7

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lidf;->b(Ljava/lang/String;)V

    .line 392
    iget-boolean v1, p0, Lidf;->D:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 393
    const/4 v1, 0x0

    .line 396
    :goto_0
    monitor-exit p0

    return-object v1

    .line 1402
    :cond_0
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    iget v1, p0, Lidf;->t:I

    add-int/lit8 v1, v1, 0x32

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1403
    const/4 v1, 0x0

    .line 1405
    and-int/lit16 v2, p2, 0x2000

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    move v3, v2

    .line 1406
    :goto_1
    and-int/lit16 v2, p2, 0x80

    if-eqz v2, :cond_1c

    const/4 v2, 0x1

    .line 1407
    :goto_2
    iget-boolean v5, p0, Lidf;->A:Z

    if-eqz v5, :cond_2

    if-gtz p9, :cond_1

    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 1408
    :cond_1
    iget-object v1, p0, Lidf;->s:[C

    const/4 v5, 0x0

    iget v6, p0, Lidf;->v:I

    invoke-virtual {v4, v1, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1409
    iget-boolean v1, p0, Lidf;->B:Z

    if-nez v1, :cond_1d

    if-eqz v2, :cond_1d

    iget-boolean v1, p0, Lidf;->z:Z

    if-nez v1, :cond_1d

    .line 1410
    sget-object v1, Lidf;->e:[C

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1412
    rem-int/lit8 v1, p9, 0x3

    add-int/lit8 v1, v1, 0x31

    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1422
    :goto_3
    iget v1, p0, Lidf;->v:I

    add-int/lit8 v1, v1, 0x3

    .line 1423
    iget-object v2, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->F:I

    sub-int/2addr v3, v1

    invoke-virtual {v4, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1424
    iget v1, p0, Lidf;->F:I

    .line 1428
    :cond_2
    iget-boolean v2, p0, Lidf;->C:Z

    if-eqz v2, :cond_1f

    .line 1429
    iget-object v2, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->w:I

    sub-int/2addr v3, v1

    invoke-virtual {v4, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1435
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1464
    if-nez p3, :cond_3

    if-nez p4, :cond_4

    if-nez p5, :cond_4

    .line 1465
    :cond_3
    const/16 v2, 0x73

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1467
    :cond_4
    if-eqz p4, :cond_5

    .line 1468
    const/16 v2, 0x77

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1470
    :cond_5
    if-eqz p5, :cond_6

    .line 1471
    const/16 v2, 0x68

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1473
    :cond_6
    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_7

    .line 1474
    const-string v2, "rw-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    :cond_7
    and-int/lit16 v2, p2, 0x4000

    if-eqz v2, :cond_8

    .line 1477
    const-string v2, "rwa-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    :cond_8
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_9

    .line 1480
    const-string v2, "c-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    :cond_9
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_a

    .line 1483
    const-string v2, "d-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1485
    :cond_a
    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_b

    .line 1486
    const-string v2, "k-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    :cond_b
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_c

    .line 1489
    const-string v2, "no-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    :cond_c
    and-int/lit8 v2, p2, 0x40

    if-eqz v2, :cond_d

    .line 1492
    const-string v2, "nu-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    :cond_d
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_e

    .line 1495
    const-string v2, "p-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    :cond_e
    and-int/lit16 v2, p2, 0x1000

    if-eqz v2, :cond_f

    .line 1498
    const-string v2, "lf-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    :cond_f
    and-int/lit16 v2, p2, 0x100

    if-eqz v2, :cond_10

    .line 1501
    const-string v2, "fSoften=0,25,0-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    :cond_10
    and-int/lit16 v2, p2, 0x200

    if-eqz v2, :cond_11

    .line 1504
    const-string v2, "ip-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1506
    :cond_11
    and-int/lit16 v2, p2, 0x800

    if-eqz v2, :cond_12

    .line 1507
    const-string v2, "rj-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1509
    :cond_12
    const v2, 0x8000

    and-int/2addr v2, p2

    if-eqz v2, :cond_13

    .line 1510
    const-string v2, "fBoxBlur=2,24,24-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    :cond_13
    const/high16 v2, 0x10000

    and-int/2addr v2, p2

    if-eqz v2, :cond_14

    .line 1513
    const-string v2, "al-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    :cond_14
    const/high16 v2, 0x20000

    and-int/2addr v2, p2

    if-eqz v2, :cond_15

    .line 1516
    const-string v2, "rh-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1519
    :cond_15
    const/4 v2, -0x1

    if-eq p6, v2, :cond_16

    const/4 v2, -0x1

    if-eq p7, v2, :cond_16

    .line 1520
    packed-switch p6, :pswitch_data_0

    .line 1528
    :goto_5
    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1531
    :cond_16
    and-int/lit16 v2, p2, 0x400

    if-eqz v2, :cond_17

    if-eqz p8, :cond_17

    .line 1533
    const-string v2, "fcrop64=1,"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    iget v2, p8, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Lidf;->a(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    iget v2, p8, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Lidf;->a(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1536
    iget v2, p8, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Lidf;->a(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    iget v2, p8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Lidf;->a(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    const/16 v2, 0x2d

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1541
    :cond_17
    if-ltz p10, :cond_18

    .line 1542
    const/16 v2, 0x61

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1441
    :cond_18
    invoke-direct {p0, v4}, Lidf;->a(Ljava/lang/StringBuilder;)V

    .line 1444
    invoke-direct {p0, v4}, Lidf;->b(Ljava/lang/StringBuilder;)V

    .line 1446
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v1, :cond_19

    .line 1448
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1451
    :cond_19
    iget-boolean v1, p0, Lidf;->C:Z

    if-eqz v1, :cond_1a

    iget v1, p0, Lidf;->E:I

    if-nez v1, :cond_1a

    .line 1452
    const/16 v1, 0x2f

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1456
    :cond_1a
    iget-object v1, p0, Lidf;->s:[C

    iget v2, p0, Lidf;->w:I

    iget v3, p0, Lidf;->E:I

    add-int/2addr v2, v3

    iget v3, p0, Lidf;->t:I

    iget v5, p0, Lidf;->w:I

    iget v6, p0, Lidf;->E:I

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    invoke-virtual {v4, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1459
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1405
    :cond_1b
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_1

    .line 1406
    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1413
    :cond_1d
    if-eqz v3, :cond_1e

    iget-boolean v1, p0, Lidf;->z:Z

    if-nez v1, :cond_1e

    .line 1415
    sget-object v1, Lidf;->d:[C

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 390
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1417
    :cond_1e
    :try_start_2
    sget-object v1, Lidf;->c:[C

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 1420
    rem-int/lit8 v1, p9, 0x4

    add-int/lit8 v1, v1, 0x33

    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1431
    :cond_1f
    iget-object v2, p0, Lidf;->s:[C

    iget v3, p0, Lidf;->x:I

    sub-int/2addr v3, v1

    invoke-virtual {v4, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1432
    const/16 v1, 0x3d

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 1522
    :pswitch_0
    const/16 v2, 0x76

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 1525
    :pswitch_1
    const/16 v2, 0x6c

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 1520
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method declared-synchronized a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lidf;->b(Ljava/lang/String;)V

    .line 383
    iget-boolean v0, p0, Lidf;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
