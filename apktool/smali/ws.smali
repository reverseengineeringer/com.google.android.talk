.class public Lws;
.super Landroid/widget/AutoCompleteTextView;
.source "SourceFile"

# interfaces
.implements Lkn;


# static fields
.field private static final a:[I


# instance fields
.field private b:Lvv;

.field private c:Lwt;

.field private d:Lxp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Lws;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lws;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 64
    sget v0, Laen;->I:I

    invoke-direct {p0, p1, p2, v0}, Lws;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-static {p1}, Lvs;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-virtual {p0}, Lws;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lws;->a:[I

    invoke-static {v0, p2, v1, p3}, Lvw;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lvw;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lvw;->b()Lvv;

    move-result-object v1

    iput-object v1, p0, Lws;->b:Lvv;

    .line 73
    invoke-virtual {v0, v2}, Lvw;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0, v2}, Lvw;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lws;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    :cond_0
    invoke-virtual {v0}, Lvw;->a()V

    .line 78
    new-instance v0, Lwt;

    iget-object v1, p0, Lws;->b:Lvv;

    invoke-direct {v0, p0, v1}, Lwt;-><init>(Landroid/view/View;Lvv;)V

    iput-object v0, p0, Lws;->c:Lwt;

    .line 79
    iget-object v0, p0, Lws;->c:Lwt;

    invoke-virtual {v0, p2, p3}, Lwt;->a(Landroid/util/AttributeSet;I)V

    .line 81
    invoke-static {p0}, Lxp;->a(Landroid/widget/TextView;)Lxp;

    move-result-object v0

    iput-object v0, p0, Lws;->d:Lxp;

    .line 82
    iget-object v0, p0, Lws;->d:Lxp;

    invoke-virtual {v0, p2, p3}, Lxp;->a(Landroid/util/AttributeSet;I)V

    .line 83
    iget-object v0, p0, Lws;->d:Lxp;

    invoke-virtual {v0}, Lxp;->a()V

    .line 84
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lws;->c:Lwt;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lws;->c:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(Landroid/content/res/ColorStateList;)V

    .line 122
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lws;->c:Lwt;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lws;->c:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 148
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->drawableStateChanged()V

    .line 166
    iget-object v0, p0, Lws;->c:Lwt;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lws;->c:Lwt;

    invoke-virtual {v0}, Lwt;->b()V

    .line 169
    :cond_0
    iget-object v0, p0, Lws;->d:Lxp;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lws;->d:Lxp;

    invoke-virtual {v0}, Lxp;->a()V

    .line 172
    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v0, p0, Lws;->c:Lwt;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lws;->c:Lwt;

    invoke-virtual {v0}, Lwt;->a()V

    .line 109
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    .line 98
    iget-object v0, p0, Lws;->c:Lwt;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lws;->c:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(I)V

    .line 101
    :cond_0
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lws;->b:Lvv;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lws;->b:Lvv;

    invoke-virtual {v0, p1}, Lvv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lws;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setDropDownBackgroundResource(I)V

    goto :goto_0
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 177
    iget-object v0, p0, Lws;->d:Lxp;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lws;->d:Lxp;

    invoke-virtual {v0, p1, p2}, Lxp;->a(Landroid/content/Context;I)V

    .line 180
    :cond_0
    return-void
.end method
