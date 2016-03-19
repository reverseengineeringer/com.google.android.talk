.class public final Lwu;
.super Landroid/widget/Button;
.source "SourceFile"

# interfaces
.implements Lkn;


# instance fields
.field private final a:Lvv;

.field private final b:Lwt;

.field private final c:Lxp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    sget v0, Laen;->J:I

    invoke-direct {p0, p1, p2, v0}, Lwu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-virtual {p0}, Lwu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvv;->a(Landroid/content/Context;)Lvv;

    move-result-object v0

    iput-object v0, p0, Lwu;->a:Lvv;

    .line 67
    new-instance v0, Lwt;

    iget-object v1, p0, Lwu;->a:Lvv;

    invoke-direct {v0, p0, v1}, Lwt;-><init>(Landroid/view/View;Lvv;)V

    iput-object v0, p0, Lwu;->b:Lwt;

    .line 68
    iget-object v0, p0, Lwu;->b:Lwt;

    invoke-virtual {v0, p2, p3}, Lwt;->a(Landroid/util/AttributeSet;I)V

    .line 70
    invoke-static {p0}, Lxp;->a(Landroid/widget/TextView;)Lxp;

    move-result-object v0

    iput-object v0, p0, Lwu;->c:Lxp;

    .line 71
    iget-object v0, p0, Lwu;->c:Lxp;

    invoke-virtual {v0, p2, p3}, Lxp;->a(Landroid/util/AttributeSet;I)V

    .line 72
    iget-object v0, p0, Lwu;->c:Lxp;

    invoke-virtual {v0}, Lxp;->a()V

    .line 73
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lwu;->b:Lwt;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lwu;->b:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(Landroid/content/res/ColorStateList;)V

    .line 102
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lwu;->b:Lwt;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lwu;->b:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 128
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 146
    iget-object v0, p0, Lwu;->b:Lwt;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lwu;->b:Lwt;

    invoke-virtual {v0}, Lwt;->b()V

    .line 149
    :cond_0
    iget-object v0, p0, Lwu;->c:Lxp;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lwu;->c:Lxp;

    invoke-virtual {v0}, Lxp;->a()V

    .line 152
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 165
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 171
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lwu;->b:Lwt;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lwu;->b:Lwt;

    invoke-virtual {v0}, Lwt;->a()V

    .line 89
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 78
    iget-object v0, p0, Lwu;->b:Lwt;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lwu;->b:Lwt;

    invoke-virtual {v0, p1}, Lwt;->a(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 157
    iget-object v0, p0, Lwu;->c:Lxp;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lwu;->c:Lxp;

    invoke-virtual {v0, p1, p2}, Lxp;->a(Landroid/content/Context;I)V

    .line 160
    :cond_0
    return-void
.end method
