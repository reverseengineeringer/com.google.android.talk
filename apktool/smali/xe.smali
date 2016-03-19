.class public final Lxe;
.super Landroid/widget/RadioButton;
.source "SourceFile"

# interfaces
.implements Lpz;


# instance fields
.field private a:Lvv;

.field private b:Lwx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    sget v0, Laen;->aa:I

    invoke-direct {p0, p1, p2, v0}, Lxe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-static {p1}, Lvv;->a(Landroid/content/Context;)Lvv;

    move-result-object v0

    iput-object v0, p0, Lxe;->a:Lvv;

    .line 61
    new-instance v0, Lwx;

    iget-object v1, p0, Lxe;->a:Lvv;

    invoke-direct {v0, p0, v1}, Lwx;-><init>(Landroid/widget/CompoundButton;Lvv;)V

    iput-object v0, p0, Lxe;->b:Lwx;

    .line 62
    iget-object v0, p0, Lxe;->b:Lwx;

    invoke-virtual {v0, p2, p3}, Lwx;->a(Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lxe;->b:Lwx;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lxe;->b:Lwx;

    invoke-virtual {v0, p1}, Lwx;->a(Landroid/content/res/ColorStateList;)V

    .line 97
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lxe;->b:Lwx;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lxe;->b:Lwx;

    invoke-virtual {v0, p1}, Lwx;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 120
    :cond_0
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 83
    iget-object v1, p0, Lxe;->b:Lwx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lxe;->b:Lwx;

    invoke-virtual {v1, v0}, Lwx;->a(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lxe;->a:Lvv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxe;->a:Lvv;

    invoke-virtual {v0, p1}, Lvv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lxe;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lxe;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ley;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, p0, Lxe;->b:Lwx;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lxe;->b:Lwx;

    invoke-virtual {v0}, Lwx;->a()V

    .line 71
    :cond_0
    return-void
.end method
