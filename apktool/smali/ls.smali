.class public final Lls;
.super Lii;
.source "SourceFile"


# instance fields
.field final synthetic b:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 2851
    iput-object p1, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Lii;-><init>()V

    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2903
    iget-object v1, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    .line 10091
    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->b:Lkh;

    .line 2903
    if-eqz v1, :cond_0

    iget-object v1, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    .line 11091
    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->b:Lkh;

    .line 2903
    invoke-virtual {v1}, Lkh;->b()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Lmy;)V
    .locals 2

    .prologue
    .line 2869
    invoke-super {p0, p1, p2}, Lii;->a(Landroid/view/View;Lmy;)V

    .line 2870
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmy;->b(Ljava/lang/CharSequence;)V

    .line 2871
    invoke-direct {p0}, Lls;->b()Z

    move-result v0

    invoke-virtual {p2, v0}, Lmy;->i(Z)V

    .line 2872
    iget-object v0, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2873
    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Lmy;->a(I)V

    .line 2875
    :cond_0
    iget-object v0, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2876
    const/16 v0, 0x2000

    invoke-virtual {p2, v0}, Lmy;->a(I)V

    .line 2878
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2882
    invoke-super {p0, p1, p2, p3}, Lii;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2899
    :goto_0
    return v0

    .line 2885
    :cond_0
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    .line 2899
    goto :goto_0

    .line 2887
    :sswitch_0
    iget-object v2, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2888
    iget-object v1, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    .line 8091
    iget v2, v2, Landroid/support/v4/view/ViewPager;->c:I

    .line 2888
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->b(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2891
    goto :goto_0

    .line 2893
    :sswitch_1
    iget-object v2, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2894
    iget-object v1, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    .line 9091
    iget v2, v2, Landroid/support/v4/view/ViewPager;->c:I

    .line 2894
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->b(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2897
    goto :goto_0

    .line 2885
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    .line 2855
    invoke-super {p0, p1, p2}, Lii;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2856
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3560
    new-instance v0, Lnq;

    sget-object v1, Lnq;->a:Lnt;

    invoke-virtual {v1}, Lnt;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lnq;-><init>(Ljava/lang/Object;)V

    .line 2858
    invoke-direct {p0}, Lls;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnq;->a(Z)V

    .line 2859
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    .line 4091
    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->b:Lkh;

    .line 2859
    if-eqz v1, :cond_0

    .line 2861
    iget-object v1, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    .line 5091
    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->b:Lkh;

    .line 2861
    invoke-virtual {v1}, Lkh;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lnq;->a(I)V

    .line 2862
    iget-object v1, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    .line 6091
    iget v1, v1, Landroid/support/v4/view/ViewPager;->c:I

    .line 2862
    invoke-virtual {v0, v1}, Lnq;->b(I)V

    .line 2863
    iget-object v1, p0, Lls;->b:Landroid/support/v4/view/ViewPager;

    .line 7091
    iget v1, v1, Landroid/support/v4/view/ViewPager;->c:I

    .line 2863
    invoke-virtual {v0, v1}, Lnq;->c(I)V

    .line 2865
    :cond_0
    return-void
.end method
