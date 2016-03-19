.class final Lxt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxx;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c(Lxu;)F
    .locals 1

    .prologue
    .line 67
    invoke-interface {p0}, Lxu;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Laar;

    invoke-virtual {v0}, Laar;->b()F

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lxu;)F
    .locals 2

    .prologue
    .line 57
    invoke-static {p1}, Lxt;->c(Lxu;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public a(Lxu;Landroid/content/Context;IFFF)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    new-instance v0, Laar;

    invoke-direct {v0, p3, p4}, Laar;-><init>(IF)V

    .line 27
    invoke-interface {p1, v0}, Lxu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v0, p1

    .line 28
    check-cast v0, Landroid/view/View;

    .line 29
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 30
    invoke-virtual {v0, p5}, Landroid/view/View;->setElevation(F)V

    .line 1045
    invoke-interface {p1}, Lxu;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Laar;

    invoke-interface {p1}, Lxu;->a()Z

    move-result v1

    invoke-interface {p1}, Lxu;->N_()Z

    move-result v2

    invoke-virtual {v0, p6, v1, v2}, Laar;->a(FZZ)V

    .line 1082
    invoke-interface {p1}, Lxu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1083
    invoke-interface {p1, v3, v3, v3, v3}, Lxu;->a(IIII)V

    .line 1084
    :goto_0
    return-void

    .line 2052
    :cond_0
    invoke-interface {p1}, Lxu;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Laar;

    invoke-virtual {v0}, Laar;->a()F

    move-result v0

    .line 1087
    invoke-static {p1}, Lxt;->c(Lxu;)F

    move-result v1

    .line 1088
    invoke-interface {p1}, Lxu;->N_()Z

    move-result v2

    invoke-static {v0, v1, v2}, Laas;->b(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 1090
    invoke-interface {p1}, Lxu;->N_()Z

    move-result v3

    invoke-static {v0, v1, v3}, Laas;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1092
    invoke-interface {p1, v2, v0, v2, v0}, Lxu;->a(IIII)V

    goto :goto_0
.end method

.method public b(Lxu;)F
    .locals 2

    .prologue
    .line 62
    invoke-static {p1}, Lxt;->c(Lxu;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method
