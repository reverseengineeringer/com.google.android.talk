.class public final Luf;
.super Lud;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgk;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lud;-><init>(Landroid/content/Context;Lgi;)V

    .line 34
    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 1

    .prologue
    .line 6038
    iget-object v0, p0, Luf;->d:Ljava/lang/Object;

    check-cast v0, Lgk;

    .line 73
    invoke-interface {v0}, Lgk;->clearHeader()V

    .line 74
    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 9038
    iget-object v0, p0, Luf;->d:Ljava/lang/Object;

    check-cast v0, Lgk;

    .line 90
    invoke-interface {v0}, Lgk;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Luf;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 3038
    iget-object v0, p0, Luf;->d:Ljava/lang/Object;

    check-cast v0, Lgk;

    .line 55
    invoke-interface {v0, p1}, Lgk;->setHeaderIcon(I)Landroid/view/SubMenu;

    .line 56
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 4038
    iget-object v0, p0, Luf;->d:Ljava/lang/Object;

    check-cast v0, Lgk;

    .line 61
    invoke-interface {v0, p1}, Lgk;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 62
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Luf;->d:Ljava/lang/Object;

    check-cast v0, Lgk;

    .line 43
    invoke-interface {v0, p1}, Lgk;->setHeaderTitle(I)Landroid/view/SubMenu;

    .line 44
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 2038
    iget-object v0, p0, Luf;->d:Ljava/lang/Object;

    check-cast v0, Lgk;

    .line 49
    invoke-interface {v0, p1}, Lgk;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 50
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 5038
    iget-object v0, p0, Luf;->d:Ljava/lang/Object;

    check-cast v0, Lgk;

    .line 67
    invoke-interface {v0, p1}, Lgk;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    .line 68
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 7038
    iget-object v0, p0, Luf;->d:Ljava/lang/Object;

    check-cast v0, Lgk;

    .line 78
    invoke-interface {v0, p1}, Lgk;->setIcon(I)Landroid/view/SubMenu;

    .line 79
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 8038
    iget-object v0, p0, Luf;->d:Ljava/lang/Object;

    check-cast v0, Lgk;

    .line 84
    invoke-interface {v0, p1}, Lgk;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 85
    return-object p0
.end method
