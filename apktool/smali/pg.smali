.class public final Lpg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lqr;


# direct methods
.method public constructor <init>(Lqr;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3544
    iput-object p1, p0, Lpg;->c:Lqr;

    iput-object p2, p0, Lpg;->a:Landroid/view/View;

    iput-object p3, p0, Lpg;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/widget/NestedScrollView;)V
    .locals 5

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1549
    iget-object v3, p0, Lpg;->a:Landroid/view/View;

    iget-object v4, p0, Lpg;->b:Landroid/view/View;

    .line 2701
    if-eqz v3, :cond_0

    .line 2702
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lks;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2705
    :cond_0
    if-eqz v4, :cond_1

    .line 2706
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lks;->b(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1550
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2702
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2706
    goto :goto_1
.end method
