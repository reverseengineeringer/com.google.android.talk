.class public final Ldcc;
.super Limg;
.source "SourceFile"


# instance fields
.field a:Laxq;

.field b:Landroid/widget/EditText;

.field private c:Ldbh;

.field private final d:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Limg;-><init>()V

    .line 89
    new-instance v0, Ldce;

    invoke-direct {v0, p0}, Ldce;-><init>(Ldcc;)V

    iput-object v0, p0, Ldcc;->d:Landroid/text/TextWatcher;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/support/v7/widget/Toolbar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v1

    invoke-virtual {p2, v0, v2, v1, v2}, Landroid/support/v7/widget/Toolbar;->setPadding(IIII)V

    .line 56
    sget v0, Laal;->of:I

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->setBackgroundResource(I)V

    .line 57
    sget v0, Laal;->oz:I

    .line 58
    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 59
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 60
    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->tS:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Ldcc;->b:Landroid/widget/EditText;

    .line 61
    iget-object v0, p0, Ldcc;->b:Landroid/widget/EditText;

    iget-object v1, p0, Ldcc;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 62
    iget-object v0, p0, Ldcc;->b:Landroid/widget/EditText;

    new-instance v1, Ldcd;

    invoke-direct {v1, p0}, Ldcd;-><init>(Ldcc;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 73
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1}, Limg;->onAttach(Landroid/app/Activity;)V

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1085
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Ldcc;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->oe:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 81
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldcc;->setHasOptionsMenu(Z)V

    .line 37
    sget v0, Laal;->oy:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Ldcc;->getChildFragmentManager()Lbg;

    move-result-object v0

    const-class v2, Ldbh;

    .line 39
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Lbg;->a(Ljava/lang/String;)Lav;

    move-result-object v0

    check-cast v0, Ldbh;

    iput-object v0, p0, Ldcc;->c:Ldbh;

    .line 40
    iget-object v0, p0, Ldcc;->c:Ldbh;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ldbh;

    invoke-direct {v0}, Ldbh;-><init>()V

    iput-object v0, p0, Ldcc;->c:Ldbh;

    .line 42
    invoke-virtual {p0}, Ldcc;->getChildFragmentManager()Lbg;

    move-result-object v0

    invoke-virtual {v0}, Lbg;->a()Lbz;

    move-result-object v0

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->tN:I

    iget-object v3, p0, Ldcc;->c:Ldbh;

    const-class v4, Ldbh;

    .line 44
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v0, v2, v3, v4}, Lbz;->a(ILav;Ljava/lang/String;)Lbz;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lbz;->b()I

    .line 47
    :cond_0
    new-instance v0, Laxq;

    invoke-direct {v0}, Laxq;-><init>()V

    iput-object v0, p0, Ldcc;->a:Laxq;

    .line 48
    iget-object v0, p0, Ldcc;->c:Ldbh;

    iget-object v2, p0, Ldcc;->a:Laxq;

    invoke-virtual {v0, v2}, Ldbh;->a(Laxq;)V

    .line 49
    return-object v1
.end method
