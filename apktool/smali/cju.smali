.class final Lcju;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field static final a:[[F

.field static final b:[[F

.field static final c:[I


# instance fields
.field private d:[Landroid/widget/ImageView;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lcju;->a:[[F

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_8

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_a

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    sput-object v0, Lcju;->b:[[F

    .line 46
    new-array v0, v3, [I

    sget v1, Laen;->de:I

    aput v1, v0, v4

    sget v1, Laen;->df:I

    aput v1, v0, v5

    sget v1, Laen;->dg:I

    aput v1, v0, v6

    sput-object v0, Lcju;->c:[I

    return-void

    .line 21
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3ecccccd    # 0.4f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f19999a    # 0.6f
        0x3ecccccd    # 0.4f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f19999a    # 0.6f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f19999a    # 0.6f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 32
    :array_6
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3e800000    # 0.25f
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
    .end array-data

    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0}, Lcju;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Laal;->fW:I

    invoke-static {v0, v1, p2}, Lcju;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    sget-object v0, Lcju;->c:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcju;->d:[Landroid/widget/ImageView;

    move v1, v2

    .line 61
    :goto_0
    sget-object v0, Lcju;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 62
    iget-object v3, p0, Lcju;->d:[Landroid/widget/ImageView;

    sget-object v0, Lcju;->c:[I

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v3, v1

    .line 61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_0
    iput v2, p0, Lcju;->e:I

    .line 67
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-static {p1}, Lezc;->e(I)I

    move-result v1

    .line 76
    iget v2, p0, Lcju;->e:I

    if-eq v1, v2, :cond_1

    .line 1088
    sget-object v2, Lcju;->b:[[F

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v0, v2}, Lhbs;->a(III)V

    .line 1089
    :goto_0
    iget-object v2, p0, Lcju;->d:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1090
    iget-object v2, p0, Lcju;->d:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    sget-object v3, Lcju;->a:[[F

    aget-object v3, v3, v1

    aget v3, v3, v0

    sget-object v4, Lcju;->b:[[F

    aget-object v4, v4, v1

    aget v4, v4, v0

    .line 1103
    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1104
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1105
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1106
    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x96

    .line 1107
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1108
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1089
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iput v1, p0, Lcju;->e:I

    .line 80
    :cond_1
    return-void
.end method
