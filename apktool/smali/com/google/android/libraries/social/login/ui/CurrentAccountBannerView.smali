.class public final Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 73
    iput-boolean v1, p0, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->d:Z

    .line 75
    iget-boolean v0, p0, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->e:Z

    if-eqz v0, :cond_0

    .line 76
    iput-boolean v2, p0, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->e:Z

    .line 77
    iget-object v0, p0, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {p0}, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2068
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 3034
    if-eqz v0, :cond_1

    .line 3035
    const-string v3, "accessibility"

    .line 3036
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 3196
    sget-object v3, Lmv;->a:Lmx;

    invoke-virtual {v3, v0}, Lmx;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    .line 2068
    :goto_0
    if-eqz v0, :cond_2

    move v0, v1

    .line 1096
    :goto_1
    if-nez v0, :cond_0

    .line 1102
    new-instance v0, Licp;

    invoke-direct {v0, p0}, Licp;-><init>(Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;)V

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 81
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 3039
    goto :goto_0

    :cond_2
    move v0, v2

    .line 2068
    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->d:Z

    .line 87
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 40
    sget v0, Laal;->uH:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->b:Landroid/widget/TextView;

    .line 41
    sget v0, Laal;->uG:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/libraries/social/login/ui/CurrentAccountBannerView;->c:Landroid/widget/TextView;

    .line 42
    return-void
.end method
