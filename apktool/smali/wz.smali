.class public final Lwz;
.super Landroid/widget/ImageButton;
.source "SourceFile"

# interfaces
.implements Lkn;


# instance fields
.field private a:Lwt;

.field private b:Lxa;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    sget v0, Laen;->W:I

    invoke-direct {p0, p1, p2, v0}, Lwz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-static {p1}, Lvv;->a(Landroid/content/Context;)Lvv;

    move-result-object v0

    .line 64
    new-instance v1, Lwt;

    invoke-direct {v1, p0, v0}, Lwt;-><init>(Landroid/view/View;Lvv;)V

    iput-object v1, p0, Lwz;->a:Lwt;

    .line 65
    iget-object v1, p0, Lwz;->a:Lwt;

    invoke-virtual {v1, p2, p3}, Lwt;->a(Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v1, Lxa;

    invoke-direct {v1, p0, v0}, Lxa;-><init>(Landroid/widget/ImageView;Lvv;)V

    iput-object v1, p0, Lwz;->b:Lxa;

    .line 68
    iget-object v0, p0, Lwz;->b:Lxa;

    invoke-virtual {v0, p2, p3}, Lxa;->a(Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lwz;->a:Lwt;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lwz;->a:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(Landroid/content/res/ColorStateList;)V

    .line 104
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lwz;->a:Lwt;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lwz;->a:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 130
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 148
    iget-object v0, p0, Lwz;->a:Lwt;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lwz;->a:Lwt;

    invoke-virtual {v0}, Lwt;->b()V

    .line 151
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lwz;->a:Lwt;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lwz;->a:Lwt;

    invoke-virtual {v0}, Lwt;->a()V

    .line 91
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 80
    iget-object v0, p0, Lwz;->a:Lwt;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lwz;->a:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lwz;->b:Lxa;

    invoke-virtual {v0, p1}, Lxa;->a(I)V

    .line 75
    return-void
.end method
