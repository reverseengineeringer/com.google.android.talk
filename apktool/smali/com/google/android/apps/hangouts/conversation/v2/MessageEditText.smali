.class public Lcom/google/android/apps/hangouts/conversation/v2/MessageEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field private a:Lbqw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1039
    invoke-static {p1}, Lexa;->d(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/conversation/v2/MessageEditText;->setShowSoftInputOnFocus(Z)V

    .line 35
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lbqw;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/apps/hangouts/conversation/v2/MessageEditText;->a:Lbqw;

    .line 47
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 54
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/conversation/v2/MessageEditText;->a:Lbqw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/conversation/v2/MessageEditText;->a:Lbqw;

    .line 56
    invoke-virtual {v1}, Lbqw;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/EditText;->performClick()Z

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/MessageEditText;->a:Lbqw;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/MessageEditText;->a:Lbqw;

    invoke-virtual {v0}, Lbqw;->b()Z

    move-result v0

    goto :goto_0
.end method
