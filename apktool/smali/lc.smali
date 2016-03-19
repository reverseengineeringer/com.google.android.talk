.class public Llc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lmd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 11461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11465
    const/4 v0, 0x0

    iput-object v0, p0, Llc;->c:Ljava/util/WeakHashMap;

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 12060
    invoke-direct {p0}, Llc;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 10109
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 10036
    goto :goto_0
.end method

.method public B(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 4829
    const/4 v0, 0x0

    return v0
.end method

.method public C(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 11838
    const/4 v0, 0x0

    return v0
.end method

.method public D(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 8968
    instance-of v0, p1, Lkc;

    if-eqz v0, :cond_0

    .line 8969
    check-cast p1, Lkc;

    invoke-interface {p1}, Lkc;->stopNestedScroll()V

    .line 8971
    :cond_0
    return-void
.end method

.method public E(Landroid/view/View;)F
    .locals 2

    .prologue
    .line 10031
    invoke-virtual {p0, p1}, Llc;->C(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Llc;->B(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public a(II)I
    .locals 1

    .prologue
    .line 10026
    or-int v0, p1, p2

    return v0
.end method

.method public a(III)I
    .locals 1

    .prologue
    .line 3581
    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3477
    const/4 v0, 0x2

    return v0
.end method

.method a()J
    .locals 2

    .prologue
    .line 11520
    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public a(Landroid/view/View;Lmq;)Lmq;
    .locals 0

    .prologue
    .line 6878
    return-object p2
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 4743
    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 11057
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 3621
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    .line 3622
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 3542
    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 7041
    instance-of v0, p1, Lkn;

    if-eqz v0, :cond_0

    .line 7042
    check-cast p1, Lkn;

    invoke-interface {p1, p2}, Lkn;->a(Landroid/content/res/ColorStateList;)V

    .line 6923
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 8053
    instance-of v0, p1, Lkn;

    if-eqz v0, :cond_0

    .line 8054
    check-cast p1, Lkn;

    invoke-interface {p1, p2}, Lkn;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 7928
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lii;)V
    .locals 0

    .prologue
    .line 3484
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 3514
    invoke-virtual {p0}, Llc;->a()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3515
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 3

    .prologue
    .line 3517
    invoke-virtual {p0}, Llc;->a()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3518
    return-void
.end method

.method public a(Landroid/view/View;Lkg;)V
    .locals 0

    .prologue
    .line 6874
    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 6889
    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1469
    instance-of v2, p1, Lkm;

    if-eqz v2, :cond_3

    check-cast p1, Lkm;

    .line 1936
    invoke-interface {p1}, Lkm;->computeHorizontalScrollOffset()I

    move-result v2

    .line 1937
    invoke-interface {p1}, Lkm;->computeHorizontalScrollRange()I

    move-result v3

    invoke-interface {p1}, Lkm;->computeHorizontalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1939
    if-eqz v3, :cond_2

    .line 1940
    if-gez p2, :cond_1

    .line 1941
    if-lez v2, :cond_0

    move v2, v0

    .line 1469
    :goto_0
    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1941
    goto :goto_0

    .line 1943
    :cond_1
    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1469
    goto :goto_1
.end method

.method public b(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 3538
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public b(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 4748
    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 6894
    return-void
.end method

.method public b(Landroid/view/View;I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2473
    instance-of v2, p1, Lkm;

    if-eqz v2, :cond_3

    check-cast p1, Lkm;

    .line 2948
    invoke-interface {p1}, Lkm;->computeVerticalScrollOffset()I

    move-result v2

    .line 2949
    invoke-interface {p1}, Lkm;->computeVerticalScrollRange()I

    move-result v3

    invoke-interface {p1}, Lkm;->computeVerticalScrollExtent()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2951
    if-eqz v3, :cond_2

    .line 2952
    if-gez p2, :cond_1

    .line 2953
    if-lez v2, :cond_0

    move v2, v0

    .line 2473
    :goto_0
    if-eqz v2, :cond_3

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 2953
    goto :goto_0

    .line 2955
    :cond_1
    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2473
    goto :goto_1
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3544
    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 4753
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 3527
    return-void
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3586
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 3768
    return-void
.end method

.method public d(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 3607
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3596
    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 3773
    return-void
.end method

.method public f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 3677
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 4825
    return-void
.end method

.method public g(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 3682
    const/4 v0, 0x0

    return v0
.end method

.method public h(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 6868
    return-void
.end method

.method public i(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 11041
    const/4 v0, 0x0

    return v0
.end method

.method public j(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3488
    const/4 v0, 0x0

    return v0
.end method

.method public k(Landroid/view/View;)Lmd;
    .locals 1

    .prologue
    .line 3732
    new-instance v0, Lmd;

    invoke-direct {v0, p1}, Lmd;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public l(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3502
    const/4 v0, 0x0

    return v0
.end method

.method public m(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3508
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 3509
    return-void
.end method

.method public n(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3523
    const/4 v0, 0x0

    return v0
.end method

.method public o(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 3568
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public p(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3722
    invoke-static {p1}, Laal;->b(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public q(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3727
    invoke-static {p1}, Laal;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public r(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 5821
    return-void
.end method

.method public s(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 5857
    const/4 v0, 0x0

    return v0
.end method

.method public t(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 6660
    const/4 v0, 0x1

    return v0
.end method

.method public u(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3558
    const/4 v0, 0x0

    return v0
.end method

.method public v(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3611
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public w(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3616
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public x(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 5816
    const/4 v0, 0x0

    return v0
.end method

.method public y(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 6898
    const/4 v0, 0x0

    return v0
.end method

.method public z(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 9059
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 9021
    goto :goto_0
.end method
