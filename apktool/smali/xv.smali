.class Lxv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxx;


# instance fields
.field final a:Landroid/graphics/RectF;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lxv;->a:Landroid/graphics/RectF;

    return-void
.end method

.method private static d(Lxu;)Laas;
    .locals 1

    .prologue
    .line 159
    invoke-interface {p0}, Lxu;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Laas;

    return-object v0
.end method


# virtual methods
.method public a(Lxu;)F
    .locals 1

    .prologue
    .line 150
    invoke-static {p1}, Lxv;->d(Lxu;)Laas;

    move-result-object v0

    invoke-virtual {v0}, Laas;->a()F

    move-result v0

    return v0
.end method

.method a(Landroid/content/Context;IFFF)Laas;
    .locals 6

    .prologue
    .line 86
    new-instance v0, Laas;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Laas;-><init>(Landroid/content/res/Resources;IFFF)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lxw;

    invoke-direct {v0, p0}, Lxw;-><init>(Lxv;)V

    sput-object v0, Laas;->c:Laat;

    .line 72
    return-void
.end method

.method public a(Lxu;Landroid/content/Context;IFFF)V
    .locals 6

    .prologue
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 77
    invoke-virtual/range {v0 .. v5}, Lxv;->a(Landroid/content/Context;IFFF)Laas;

    move-result-object v0

    .line 79
    invoke-interface {p1}, Lxu;->N_()Z

    move-result v1

    invoke-virtual {v0, v1}, Laas;->a(Z)V

    .line 80
    invoke-interface {p1, v0}, Lxu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {p0, p1}, Lxv;->c(Lxu;)V

    .line 82
    return-void
.end method

.method public b(Lxu;)F
    .locals 1

    .prologue
    .line 155
    invoke-static {p1}, Lxv;->d(Lxu;)Laas;

    move-result-object v0

    invoke-virtual {v0}, Laas;->b()F

    move-result v0

    return v0
.end method

.method public c(Lxu;)V
    .locals 4

    .prologue
    .line 92
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 93
    invoke-static {p1}, Lxv;->d(Lxu;)Laas;

    move-result-object v0

    invoke-virtual {v0, v1}, Laas;->a(Landroid/graphics/Rect;)V

    move-object v0, p1

    .line 94
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p1}, Lxv;->b(Lxu;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v0, p1

    .line 95
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, p1}, Lxv;->a(Lxu;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 96
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v0, v2, v3, v1}, Lxu;->a(IIII)V

    .line 98
    return-void
.end method
