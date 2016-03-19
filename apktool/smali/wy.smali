.class public final Lwy;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Lkn;


# instance fields
.field private a:Lvv;

.field private b:Lwt;

.field private c:Lxp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 58
    sget v0, Laen;->U:I

    invoke-direct {p0, p1, p2, v0}, Lwy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 62
    invoke-static {p1}, Lvs;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-virtual {p0}, Lwy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvv;->a(Landroid/content/Context;)Lvv;

    move-result-object v0

    iput-object v0, p0, Lwy;->a:Lvv;

    .line 65
    new-instance v0, Lwt;

    iget-object v1, p0, Lwy;->a:Lvv;

    invoke-direct {v0, p0, v1}, Lwt;-><init>(Landroid/view/View;Lvv;)V

    iput-object v0, p0, Lwy;->b:Lwt;

    .line 66
    iget-object v0, p0, Lwy;->b:Lwt;

    invoke-virtual {v0, p2, p3}, Lwt;->a(Landroid/util/AttributeSet;I)V

    .line 68
    invoke-static {p0}, Lxp;->a(Landroid/widget/TextView;)Lxp;

    move-result-object v0

    iput-object v0, p0, Lwy;->c:Lxp;

    .line 69
    iget-object v0, p0, Lwy;->c:Lxp;

    invoke-virtual {v0, p2, p3}, Lxp;->a(Landroid/util/AttributeSet;I)V

    .line 70
    iget-object v0, p0, Lwy;->c:Lxp;

    invoke-virtual {v0}, Lxp;->a()V

    .line 71
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lwy;->b:Lwt;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lwy;->b:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(Landroid/content/res/ColorStateList;)V

    .line 100
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lwy;->b:Lwt;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lwy;->b:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    .line 144
    iget-object v0, p0, Lwy;->b:Lwt;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lwy;->b:Lwt;

    invoke-virtual {v0}, Lwt;->b()V

    .line 147
    :cond_0
    iget-object v0, p0, Lwy;->c:Lxp;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lwy;->c:Lxp;

    invoke-virtual {v0}, Lxp;->a()V

    .line 150
    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object v0, p0, Lwy;->b:Lwt;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lwy;->b:Lwt;

    invoke-virtual {v0}, Lwt;->a()V

    .line 87
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 76
    iget-object v0, p0, Lwy;->b:Lwt;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lwy;->b:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 155
    iget-object v0, p0, Lwy;->c:Lxp;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lwy;->c:Lxp;

    invoke-virtual {v0, p1, p2}, Lxp;->a(Landroid/content/Context;I)V

    .line 158
    :cond_0
    return-void
.end method
