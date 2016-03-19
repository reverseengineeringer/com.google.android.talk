.class public Lcom/google/android/libraries/componentview/core/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/google/android/libraries/componentview/core/Utils;->a:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 68
    sget v0, Lcom/google/android/libraries/componentview/core/Utils;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/google/android/libraries/componentview/core/Utils;->a:F

    .line 71
    :cond_0
    sget v0, Lcom/google/android/libraries/componentview/core/Utils;->a:F

    return v0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/high16 v5, 0x437f0000    # 255.0f

    .line 126
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 127
    array-length v0, v1

    if-eq v0, v3, :cond_0

    array-length v0, v1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The given color is not an rgb or rgba color."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    array-length v0, v1

    if-ne v0, v3, :cond_1

    .line 131
    const/16 v0, 0xff

    :goto_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 132
    invoke-static {v2}, Lcom/google/android/libraries/componentview/core/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 133
    invoke-static {v3}, Lcom/google/android/libraries/componentview/core/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x2

    aget-object v1, v1, v4

    .line 134
    invoke-static {v1}, Lcom/google/android/libraries/componentview/core/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 130
    invoke-static {v0, v2, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    .line 131
    :cond_1
    aget-object v0, v1, v3

    invoke-static {v0}, Lcom/google/android/libraries/componentview/core/Utils;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method public static a([BF)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 176
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 177
    const/16 v1, 0xa0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 178
    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 179
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 180
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/android/libraries/componentview/core/ComponentInterface;)Lcom/google/android/libraries/componentview/core/ComponentInterface;
    .locals 2

    .prologue
    move-object v0, p0

    .line 244
    :goto_0
    instance-of v1, v0, Lcom/google/android/libraries/componentview/core/WrapperComponent;

    if-eqz v1, :cond_0

    .line 245
    check-cast v0, Lcom/google/android/libraries/componentview/core/WrapperComponent;

    invoke-interface {v0}, Lcom/google/android/libraries/componentview/core/WrapperComponent;->c()Lcom/google/android/libraries/componentview/core/ComponentInterface;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
