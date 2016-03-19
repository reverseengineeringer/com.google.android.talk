.class final Lzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lze;


# direct methods
.method constructor <init>(Lze;)V
    .locals 0

    .prologue
    .line 1520
    iput-object p1, p0, Lzg;->a:Lze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 1523
    iget-object v8, p0, Lzg;->a:Lze;

    .line 2423
    invoke-virtual {v8}, Lze;->d()V

    .line 2425
    iget-object v9, v8, Lze;->c:Landroid/view/View;

    .line 2426
    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2429
    :cond_0
    :goto_0
    return-void

    .line 2432
    :cond_1
    invoke-virtual {v8}, Lze;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2437
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2440
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2441
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2442
    invoke-virtual {v9, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2443
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2445
    iput-boolean v10, v8, Lze;->d:Z

    .line 2446
    iput-boolean v10, v8, Lze;->e:Z

    goto :goto_0
.end method
