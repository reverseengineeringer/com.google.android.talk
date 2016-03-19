.class public Lxr;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lkn;


# instance fields
.field private a:Lvv;

.field private b:Lwt;

.field private c:Lxp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lxr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lxr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-virtual {p0}, Lxr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvv;->a(Landroid/content/Context;)Lvv;

    move-result-object v0

    iput-object v0, p0, Lxr;->a:Lvv;

    .line 64
    new-instance v0, Lwt;

    iget-object v1, p0, Lxr;->a:Lvv;

    invoke-direct {v0, p0, v1}, Lwt;-><init>(Landroid/view/View;Lvv;)V

    iput-object v0, p0, Lxr;->b:Lwt;

    .line 65
    iget-object v0, p0, Lxr;->b:Lwt;

    invoke-virtual {v0, p2, p3}, Lwt;->a(Landroid/util/AttributeSet;I)V

    .line 67
    invoke-static {p0}, Lxp;->a(Landroid/widget/TextView;)Lxp;

    move-result-object v0

    iput-object v0, p0, Lxr;->c:Lxp;

    .line 68
    iget-object v0, p0, Lxr;->c:Lxp;

    invoke-virtual {v0, p2, p3}, Lxp;->a(Landroid/util/AttributeSet;I)V

    .line 69
    iget-object v0, p0, Lxr;->c:Lxp;

    invoke-virtual {v0}, Lxp;->a()V

    .line 70
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lxr;->b:Lwt;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lxr;->b:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(Landroid/content/res/ColorStateList;)V

    .line 99
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lxr;->b:Lwt;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lxr;->b:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 125
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 151
    iget-object v0, p0, Lxr;->b:Lwt;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lxr;->b:Lwt;

    invoke-virtual {v0}, Lwt;->b()V

    .line 154
    :cond_0
    iget-object v0, p0, Lxr;->c:Lxp;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lxr;->c:Lxp;

    invoke-virtual {v0}, Lxp;->a()V

    .line 157
    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object v0, p0, Lxr;->b:Lwt;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lxr;->b:Lwt;

    invoke-virtual {v0}, Lwt;->a()V

    .line 86
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 75
    iget-object v0, p0, Lxr;->b:Lwt;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lxr;->b:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 143
    iget-object v0, p0, Lxr;->c:Lxp;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lxr;->c:Lxp;

    invoke-virtual {v0, p1, p2}, Lxp;->a(Landroid/content/Context;I)V

    .line 146
    :cond_0
    return-void
.end method
