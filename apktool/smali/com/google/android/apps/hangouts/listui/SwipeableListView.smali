.class public Lcom/google/android/apps/hangouts/listui/SwipeableListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Lcrp;


# instance fields
.field private a:Lcrk;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Lcrr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 18
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->b:Z

    .line 20
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->c:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->a(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->b:Z

    .line 20
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->c:Z

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->a(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->b:Z

    .line 20
    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->c:Z

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->a(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 67
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v5, v0

    .line 68
    new-instance v0, Lcrk;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcrk;-><init>(Landroid/content/res/Resources;Landroid/view/VelocityTracker;Lcrp;FF)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->a:Lcrk;

    .line 70
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->getChildCount()I

    move-result v2

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v3, v0

    .line 142
    const/4 v0, 0x0

    move v1, v0

    .line 144
    :goto_0
    if-ge v1, v2, :cond_1

    .line 145
    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 153
    :goto_1
    return-object v0

    .line 144
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcrq;I)V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 194
    iput p2, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->d:I

    .line 197
    invoke-interface {p1, p2}, Lcrq;->a(I)V

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->e:Lcrr;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->e:Lcrr;

    invoke-virtual {v0, p1}, Lcrr;->a(Lcrq;)V

    .line 201
    :cond_0
    return-void
.end method

.method public a(Lcrr;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->e:Lcrr;

    .line 62
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->b:Z

    .line 86
    return-void
.end method

.method public a(Lcrq;)Z
    .locals 1

    .prologue
    .line 158
    invoke-interface {p1}, Lcrq;->b()Z

    move-result v0

    return v0
.end method

.method public b(Lcrq;)V
    .locals 1

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Lcrq;->c()V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->e:Lcrr;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->e:Lcrr;

    invoke-virtual {v0, p1}, Lcrr;->b(Lcrq;)V

    .line 169
    :cond_0
    return-void
.end method

.method public b(Lcrq;I)V
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->d:I

    if-eq v0, p2, :cond_0

    .line 206
    invoke-interface {p1, p2}, Lcrq;->a(I)V

    .line 207
    iput p2, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->d:I

    .line 209
    :cond_0
    return-void
.end method

.method public c(Lcrq;)V
    .locals 1

    .prologue
    .line 214
    invoke-interface {p1}, Lcrq;->d()V

    .line 215
    iget-object v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->e:Lcrr;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->e:Lcrr;

    invoke-virtual {v0, p1}, Lcrr;->b(Lcrq;)V

    .line 218
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/widget/ListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 76
    iget-object v1, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->a:Lcrk;

    invoke-virtual {v1, v0}, Lcrk;->a(F)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->a:Lcrk;

    invoke-virtual {v1, v0}, Lcrk;->b(F)V

    .line 79
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v1, 0x1

    .line 90
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->b:Z

    if-eqz v0, :cond_4

    .line 101
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->c:Z

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->a:Lcrk;

    invoke-virtual {v0, p1}, Lcrk;->b(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 126
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 129
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->c:Z

    .line 133
    :cond_1
    :goto_1
    return v0

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->a:Lcrk;

    invoke-virtual {v0, p1}, Lcrk;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    iput-boolean v1, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->c:Z

    .line 115
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 117
    invoke-super {p0, v0}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/hangouts/listui/SwipeableListView;->a:Lcrk;

    invoke-virtual {v0, p1}, Lcrk;->b(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 133
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method
