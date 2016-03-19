.class public final Lww;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private b:Lvv;

.field private c:Lxp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010108

    aput v2, v0, v1

    sput-object v0, Lww;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lww;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;B)V

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;B)V
    .locals 3

    .prologue
    const v2, 0x10103c8

    .line 50
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-static {p0}, Lxp;->a(Landroid/widget/TextView;)Lxp;

    move-result-object v0

    iput-object v0, p0, Lww;->c:Lxp;

    .line 53
    iget-object v0, p0, Lww;->c:Lxp;

    invoke-virtual {v0, p2, v2}, Lxp;->a(Landroid/util/AttributeSet;I)V

    .line 54
    iget-object v0, p0, Lww;->c:Lxp;

    invoke-virtual {v0}, Lxp;->a()V

    .line 56
    sget-boolean v0, Lvv;->a:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lww;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lww;->a:[I

    invoke-static {v0, p2, v1, v2}, Lvw;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lvw;

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvw;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lww;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {v0}, Lvw;->a()V

    .line 62
    invoke-virtual {v0}, Lvw;->b()Lvv;

    move-result-object v0

    iput-object v0, p0, Lww;->b:Lvv;

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    .line 86
    iget-object v0, p0, Lww;->c:Lxp;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lww;->c:Lxp;

    invoke-virtual {v0}, Lxp;->a()V

    .line 89
    :cond_0
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lww;->b:Lvv;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lww;->b:Lvv;

    invoke-virtual {v0, p1}, Lvv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lww;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    goto :goto_0
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 78
    iget-object v0, p0, Lww;->c:Lxp;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lww;->c:Lxp;

    invoke-virtual {v0, p1, p2}, Lxp;->a(Landroid/content/Context;I)V

    .line 81
    :cond_0
    return-void
.end method
