.class public final Lol;
.super Lii;
.source "SourceFile"


# instance fields
.field final synthetic b:Landroid/support/v4/widget/DrawerLayout;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1

    .prologue
    .line 2005
    iput-object p1, p0, Lol;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-direct {p0}, Lii;-><init>()V

    .line 2006
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lol;->c:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lmy;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 3090
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    .line 2010
    if-eqz v0, :cond_1

    .line 2011
    invoke-super {p0, p1, p2}, Lii;->a(Landroid/view/View;Lmy;)V

    .line 2030
    :cond_0
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmy;->b(Ljava/lang/CharSequence;)V

    .line 2035
    invoke-virtual {p2, v2}, Lmy;->a(Z)V

    .line 2036
    invoke-virtual {p2, v2}, Lmy;->b(Z)V

    .line 2037
    sget-object v0, Lmz;->a:Lmz;

    invoke-virtual {p2, v0}, Lmy;->a(Lmz;)Z

    .line 2038
    sget-object v0, Lmz;->b:Lmz;

    invoke-virtual {p2, v0}, Lmy;->a(Lmz;)Z

    .line 2039
    return-void

    .line 3304
    :cond_1
    sget-object v0, Lmy;->a:Lnc;

    iget-object v1, p2, Lmy;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lnc;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4238
    if-eqz v1, :cond_4

    .line 4239
    new-instance v0, Lmy;

    invoke-direct {v0, v1}, Lmy;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    .line 2017
    :goto_0
    invoke-super {p0, p1, v1}, Lii;->a(Landroid/view/View;Lmy;)V

    .line 2019
    invoke-virtual {p2, p1}, Lmy;->a(Landroid/view/View;)V

    .line 5206
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p1}, Llc;->o(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    .line 2021
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 2022
    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Lmy;->c(Landroid/view/View;)V

    .line 6098
    :cond_2
    iget-object v0, p0, Lol;->c:Landroid/graphics/Rect;

    .line 6100
    invoke-virtual {v1, v0}, Lmy;->a(Landroid/graphics/Rect;)V

    .line 6101
    invoke-virtual {p2, v0}, Lmy;->b(Landroid/graphics/Rect;)V

    .line 6103
    invoke-virtual {v1, v0}, Lmy;->c(Landroid/graphics/Rect;)V

    .line 6104
    invoke-virtual {p2, v0}, Lmy;->d(Landroid/graphics/Rect;)V

    .line 6106
    invoke-virtual {v1}, Lmy;->e()Z

    move-result v0

    invoke-virtual {p2, v0}, Lmy;->c(Z)V

    .line 6107
    invoke-virtual {v1}, Lmy;->k()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmy;->a(Ljava/lang/CharSequence;)V

    .line 6108
    invoke-virtual {v1}, Lmy;->l()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmy;->b(Ljava/lang/CharSequence;)V

    .line 6109
    invoke-virtual {v1}, Lmy;->m()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmy;->c(Ljava/lang/CharSequence;)V

    .line 6111
    invoke-virtual {v1}, Lmy;->j()Z

    move-result v0

    invoke-virtual {p2, v0}, Lmy;->h(Z)V

    .line 6112
    invoke-virtual {v1}, Lmy;->h()Z

    move-result v0

    invoke-virtual {p2, v0}, Lmy;->f(Z)V

    .line 6113
    invoke-virtual {v1}, Lmy;->c()Z

    move-result v0

    invoke-virtual {p2, v0}, Lmy;->a(Z)V

    .line 6114
    invoke-virtual {v1}, Lmy;->d()Z

    move-result v0

    invoke-virtual {p2, v0}, Lmy;->b(Z)V

    .line 6115
    invoke-virtual {v1}, Lmy;->f()Z

    move-result v0

    invoke-virtual {p2, v0}, Lmy;->d(Z)V

    .line 6116
    invoke-virtual {v1}, Lmy;->g()Z

    move-result v0

    invoke-virtual {p2, v0}, Lmy;->e(Z)V

    .line 6117
    invoke-virtual {v1}, Lmy;->i()Z

    move-result v0

    invoke-virtual {p2, v0}, Lmy;->g(Z)V

    .line 6119
    invoke-virtual {v1}, Lmy;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Lmy;->a(I)V

    .line 2025
    invoke-virtual {v1}, Lmy;->n()V

    .line 2027
    check-cast p1, Landroid/view/ViewGroup;

    .line 7082
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v0, v2

    .line 7083
    :goto_1
    if-ge v0, v1, :cond_0

    .line 7084
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7090
    invoke-static {v3}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v4

    .line 7085
    if-eqz v4, :cond_3

    .line 7086
    invoke-virtual {p2, v3}, Lmy;->b(Landroid/view/View;)V

    .line 7083
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4241
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 9090
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->b:Z

    .line 2075
    if-nez v0, :cond_0

    .line 10090
    invoke-static {p2}, Landroid/support/v4/widget/DrawerLayout;->l(Landroid/view/View;)Z

    move-result v0

    .line 2075
    if-eqz v0, :cond_1

    .line 2076
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lii;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 2078
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    .prologue
    .line 2055
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 2056
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 2057
    iget-object v1, p0, Lol;->b:Landroid/support/v4/widget/DrawerLayout;

    .line 8090
    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->g()Landroid/view/View;

    move-result-object v1

    .line 2058
    if-eqz v1, :cond_0

    .line 2059
    iget-object v2, p0, Lol;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->e(Landroid/view/View;)I

    move-result v1

    .line 2060
    iget-object v2, p0, Lol;->b:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/DrawerLayout;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2061
    if-eqz v1, :cond_0

    .line 2062
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2066
    :cond_0
    const/4 v0, 0x1

    .line 2069
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lii;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 2043
    invoke-super {p0, p1, p2}, Lii;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2045
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2046
    return-void
.end method
