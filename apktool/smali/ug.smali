.class public Lug;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final a:Luh;

.field public final b:Landroid/content/Context;

.field public c:Landroid/support/v7/widget/ActionMenuView;

.field public d:Lwe;

.field public e:I

.field public f:Lmd;

.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lug;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lug;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Luh;

    invoke-direct {v0, p0}, Luh;-><init>(Lug;)V

    iput-object v0, p0, Lug;->a:Luh;

    .line 65
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Laen;->t:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lug;->b:Landroid/content/Context;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iput-object p1, p0, Lug;->b:Landroid/content/Context;

    goto :goto_0
.end method

.method public static a(IIZ)I
    .locals 1

    .prologue
    .line 260
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int v0, p0, p1

    goto :goto_0
.end method

.method static synthetic a(Lug;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lug;I)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 2

    .prologue
    .line 250
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p2, v0

    .line 256
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;IIIZ)I
    .locals 4

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 266
    sub-int v2, p4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    .line 268
    if-eqz p5, :cond_1

    .line 269
    sub-int v3, p2, v0

    add-int/2addr v1, v2

    invoke-virtual {p1, v3, v2, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 274
    :goto_0
    if-eqz p5, :cond_0

    neg-int v0, v0

    :cond_0
    return v0

    .line 271
    :cond_1
    add-int v3, p2, v0

    add-int/2addr v1, v2

    invoke-virtual {p1, p2, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public a(IJ)Lmd;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lug;->f:Lmd;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lug;->f:Lmd;

    invoke-virtual {v0}, Lmd;->b()V

    .line 167
    :cond_0
    if-nez p1, :cond_2

    .line 168
    invoke-virtual {p0}, Lug;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-static {p0, v1}, Lks;->c(Landroid/view/View;F)V

    .line 3447
    :cond_1
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v0

    .line 171
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lmd;->a(F)Lmd;

    move-result-object v0

    .line 172
    invoke-virtual {v0, p2, p3}, Lmd;->a(J)Lmd;

    .line 173
    iget-object v1, p0, Lug;->a:Luh;

    invoke-virtual {v1, v0, p1}, Luh;->a(Lmd;I)Luh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmd;->a(Lmn;)Lmd;

    .line 179
    :goto_0
    return-object v0

    .line 4447
    :cond_2
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p0}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v0

    .line 176
    invoke-virtual {v0, v1}, Lmd;->a(F)Lmd;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p2, p3}, Lmd;->a(J)Lmd;

    .line 178
    iget-object v1, p0, Lug;->a:Luh;

    invoke-virtual {v1, v0, p1}, Luh;->a(Lmd;I)Luh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmd;->a(Lmn;)Lmd;

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lug;->e:I

    .line 145
    invoke-virtual {p0}, Lug;->requestLayout()V

    .line 146
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lug;->d:Lwe;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lug;->d:Lwe;

    invoke-virtual {v0}, Lwe;->e()Z

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 77
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lug;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lsb;->a:[I

    sget v3, Laen;->v:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    sget v1, Lsb;->j:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lug;->a(I)V

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    iget-object v0, p0, Lug;->d:Lwe;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lug;->d:Lwe;

    invoke-virtual {v0}, Lwe;->c()V

    .line 90
    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    invoke-static {p1}, Ljx;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 124
    if-ne v0, v4, :cond_0

    .line 125
    iput-boolean v2, p0, Lug;->h:Z

    .line 128
    :cond_0
    iget-boolean v1, p0, Lug;->h:Z

    if-nez v1, :cond_1

    .line 129
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 130
    if-ne v0, v4, :cond_1

    if-nez v1, :cond_1

    .line 131
    iput-boolean v3, p0, Lug;->h:Z

    .line 135
    :cond_1
    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 137
    :cond_2
    iput-boolean v2, p0, Lug;->h:Z

    .line 140
    :cond_3
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 99
    invoke-static {p1}, Ljx;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 100
    if-nez v0, :cond_0

    .line 101
    iput-boolean v3, p0, Lug;->g:Z

    .line 104
    :cond_0
    iget-boolean v1, p0, Lug;->g:Z

    if-nez v1, :cond_1

    .line 105
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 106
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 107
    iput-boolean v2, p0, Lug;->g:Z

    .line 111
    :cond_1
    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 112
    :cond_2
    iput-boolean v3, p0, Lug;->g:Z

    .line 115
    :cond_3
    return v2
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lug;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 191
    iget-object v0, p0, Lug;->f:Lmd;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lug;->f:Lmd;

    invoke-virtual {v0}, Lmd;->b()V

    .line 194
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 196
    :cond_1
    return-void
.end method
