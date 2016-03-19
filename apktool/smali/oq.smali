.class public Loq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lqi;

.field public final b:Landroid/support/v4/widget/DrawerLayout;

.field public c:Lqk;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Z

.field public f:Z

.field public final g:I

.field public final h:I

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 6

    .prologue
    .line 2150
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Loq;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;IIB)V

    .line 2152
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;IIB)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Lqk;",
            ">(",
            "Landroid/support/v4/widget/DrawerLayout;",
            "IB)V"
        }
    .end annotation

    .prologue
    .line 3193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3119
    const/4 v0, 0x1

    iput-boolean v0, p0, Loq;->e:Z

    .line 3127
    const/4 v0, 0x0

    iput-boolean v0, p0, Loq;->i:Z

    .line 3206
    instance-of v0, p1, Lqj;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 3207
    check-cast v0, Lqj;

    invoke-interface {v0}, Lqj;->b()Lqi;

    move-result-object v0

    iput-object v0, p0, Loq;->a:Lqi;

    .line 3216
    :goto_0
    iput-object p2, p0, Loq;->b:Landroid/support/v4/widget/DrawerLayout;

    .line 3217
    iput p3, p0, Loq;->g:I

    .line 3218
    iput p4, p0, Loq;->h:I

    .line 3220
    new-instance v0, Lse;

    iget-object v1, p0, Loq;->a:Lqi;

    invoke-interface {v1}, Lqi;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lse;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Loq;->c:Lqk;

    .line 3226
    invoke-virtual {p0}, Loq;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Loq;->d:Landroid/graphics/drawable/Drawable;

    .line 3227
    return-void

    .line 3208
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 3209
    new-instance v0, Lqn;

    .line 3553
    invoke-direct {v0, p1}, Lqn;-><init>(Landroid/app/Activity;)V

    .line 3209
    iput-object v0, p0, Loq;->a:Lqi;

    goto :goto_0

    .line 3210
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 3211
    new-instance v0, Lqm;

    .line 4502
    invoke-direct {v0, p1}, Lqm;-><init>(Landroid/app/Activity;)V

    .line 3211
    iput-object v0, p0, Loq;->a:Lqi;

    goto :goto_0

    .line 3213
    :cond_2
    new-instance v0, Lql;

    invoke-direct {v0, p1}, Lql;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Loq;->a:Lqi;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 5239
    iget-object v0, p0, Loq;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5240
    iget-object v0, p0, Loq;->c:Lqk;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lqk;->a(F)V

    .line 5244
    :goto_0
    iget-boolean v0, p0, Loq;->e:Z

    if-eqz v0, :cond_0

    .line 5245
    iget-object v0, p0, Loq;->c:Lqk;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Loq;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Loq;->h:I

    :goto_1
    invoke-virtual {p0, v0, v1}, Loq;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 5249
    :cond_0
    return-void

    .line 5242
    :cond_1
    iget-object v0, p0, Loq;->c:Lqk;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lqk;->a(F)V

    goto :goto_0

    .line 5245
    :cond_2
    iget v1, p0, Loq;->g:I

    goto :goto_1
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 1420
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 5450
    iget-boolean v0, p0, Loq;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Loq;->a:Lqi;

    invoke-interface {v0}, Lqi;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5454
    const/4 v0, 0x1

    iput-boolean v0, p0, Loq;->i:Z

    .line 5456
    :cond_0
    iget-object v0, p0, Loq;->a:Lqi;

    invoke-interface {v0, p1, p2}, Lqi;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 5457
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1390
    iget-object v0, p0, Loq;->c:Lqk;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lqk;->a(F)V

    .line 1391
    iget-boolean v0, p0, Loq;->e:Z

    if-eqz v0, :cond_0

    .line 1392
    iget v0, p0, Loq;->h:I

    invoke-virtual {p0, v0}, Loq;->b(I)V

    .line 1394
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 3

    .prologue
    .line 1378
    iget-object v0, p0, Loq;->c:Lqk;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Lqk;->a(F)V

    .line 1379
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 5277
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Loq;->e:Z

    if-eqz v0, :cond_0

    .line 5278
    invoke-virtual {p0}, Loq;->c()V

    .line 5279
    const/4 v0, 0x1

    .line 5281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 5261
    iget-boolean v0, p0, Loq;->f:Z

    if-nez v0, :cond_0

    .line 5262
    invoke-virtual {p0}, Loq;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Loq;->d:Landroid/graphics/drawable/Drawable;

    .line 5264
    :cond_0
    invoke-virtual {p0}, Loq;->a()V

    .line 5265
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 5460
    iget-object v0, p0, Loq;->a:Lqi;

    invoke-interface {v0, p1}, Lqi;->a(I)V

    .line 5461
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1405
    iget-object v0, p0, Loq;->c:Lqk;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lqk;->a(F)V

    .line 1406
    iget-boolean v0, p0, Loq;->e:Z

    if-eqz v0, :cond_0

    .line 1407
    iget v0, p0, Loq;->g:I

    invoke-virtual {p0, v0}, Loq;->b(I)V

    .line 1409
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 5285
    iget-object v0, p0, Loq;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5286
    iget-object v0, p0, Loq;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->d()V

    .line 5290
    :goto_0
    return-void

    .line 5288
    :cond_0
    iget-object v0, p0, Loq;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->c()V

    goto :goto_0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 5464
    iget-object v0, p0, Loq;->a:Lqi;

    invoke-interface {v0}, Lqi;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
