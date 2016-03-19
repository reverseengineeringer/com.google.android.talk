.class public Lfcl;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# instance fields
.field private d:Z

.field private e:Lfcm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfcl;->d:Z

    .line 24
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lfcl;->c(I)V

    .line 26
    new-instance v0, Lfcm;

    .line 1054
    invoke-direct {v0}, Lfcm;-><init>()V

    .line 26
    iput-object v0, p0, Lfcl;->e:Lfcm;

    .line 27
    iget-object v0, p0, Lfcl;->e:Lfcm;

    invoke-super {p0, v0}, Landroid/support/v4/view/ViewPager;->a(Llt;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Llt;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method has been disabled, please use addOnPageChangeListener instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Llt;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lfcl;->e:Lfcm;

    .line 2058
    iget-object v0, v0, Lfcm;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, Lfcl;->d:Z

    .line 52
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lfcl;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lfcl;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
