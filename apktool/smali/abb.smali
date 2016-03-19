.class public final Labb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltz;


# instance fields
.field a:Ltl;

.field public b:Ltp;

.field final synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 1949
    iput-object p1, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ltl;)V
    .locals 2

    .prologue
    .line 1956
    iget-object v0, p0, Labb;->a:Ltl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labb;->b:Ltp;

    if-eqz v0, :cond_0

    .line 1957
    iget-object v0, p0, Labb;->a:Ltl;

    iget-object v1, p0, Labb;->b:Ltp;

    invoke-virtual {v0, v1}, Ltl;->b(Ltp;)Z

    .line 1959
    :cond_0
    iput-object p2, p0, Labb;->a:Ltl;

    .line 1960
    return-void
.end method

.method public a(Ltl;Z)V
    .locals 0

    .prologue
    .line 2002
    return-void
.end method

.method public a(Lue;)Z
    .locals 1

    .prologue
    .line 1997
    const/4 v0, 0x0

    return v0
.end method

.method public b(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1970
    iget-object v1, p0, Labb;->b:Ltp;

    if-eqz v1, :cond_1

    .line 1973
    iget-object v1, p0, Labb;->a:Ltl;

    if-eqz v1, :cond_0

    .line 1974
    iget-object v1, p0, Labb;->a:Ltl;

    invoke-virtual {v1}, Ltl;->size()I

    move-result v2

    move v1, v0

    .line 1975
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1976
    iget-object v3, p0, Labb;->a:Ltl;

    invoke-virtual {v3, v1}, Ltl;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1977
    iget-object v4, p0, Labb;->b:Ltp;

    if-ne v3, v4, :cond_2

    .line 1978
    const/4 v0, 0x1

    .line 1984
    :cond_0
    if-nez v0, :cond_1

    .line 1986
    iget-object v0, p0, Labb;->b:Ltp;

    invoke-virtual {p0, v0}, Labb;->c(Ltp;)Z

    .line 1989
    :cond_1
    return-void

    .line 1975
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 2006
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ltp;)Z
    .locals 8

    .prologue
    const v7, 0x800003

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2011
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    .line 3053
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 3054
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Laen;->ag:I

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/ImageButton;

    .line 3056
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/ImageButton;

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3057
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/ImageButton;

    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3058
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->r()Labc;

    move-result-object v1

    .line 3059
    iget v2, v0, Landroid/support/v7/widget/Toolbar;->e:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v2, v7

    iput v2, v1, Labc;->a:I

    .line 3060
    iput v6, v1, Labc;->b:I

    .line 3061
    iget-object v2, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3062
    iget-object v1, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/ImageButton;

    new-instance v2, Laba;

    invoke-direct {v2, v0}, Laba;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2012
    :cond_0
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    .line 3120
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/ImageButton;

    .line 2012
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 2013
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    .line 4120
    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/ImageButton;

    .line 2013
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2015
    :cond_1
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Ltp;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    .line 2016
    iput-object p1, p0, Labb;->b:Ltp;

    .line 2017
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_2

    .line 2018
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->r()Labc;

    move-result-object v0

    .line 2019
    iget-object v1, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    .line 5120
    iget v1, v1, Landroid/support/v7/widget/Toolbar;->e:I

    .line 2019
    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v7

    iput v1, v0, Labc;->a:I

    .line 2020
    iput v6, v0, Labc;->b:I

    .line 2021
    iget-object v1, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2022
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2025
    :cond_2
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->t()V

    .line 2026
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2027
    invoke-virtual {p1, v5}, Ltp;->e(Z)V

    .line 2029
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    instance-of v0, v0, Lwd;

    if-eqz v0, :cond_3

    .line 2030
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    check-cast v0, Lwd;

    invoke-interface {v0}, Lwd;->a()V

    .line 2033
    :cond_3
    return v5
.end method

.method public c(Ltp;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2040
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    instance-of v0, v0, Lwd;

    if-eqz v0, :cond_0

    .line 2041
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    check-cast v0, Lwd;

    invoke-interface {v0}, Lwd;->b()V

    .line 2044
    :cond_0
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2045
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    .line 6120
    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/ImageButton;

    .line 2045
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2046
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    iput-object v2, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    .line 2048
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->u()V

    .line 2049
    iput-object v2, p0, Labb;->b:Ltp;

    .line 2050
    iget-object v0, p0, Labb;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2051
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltp;->e(Z)V

    .line 2053
    const/4 v0, 0x1

    return v0
.end method
