.class public final Lgmp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;)V
    .locals 0

    .prologue
    .line 5746
    iput-object p1, p0, Lgmp;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgmq;Lgpt;)V
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1755
    iget-object v0, p0, Lgmp;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1800
    :goto_0
    return-void

    .line 1759
    :cond_0
    iget-object v0, p0, Lgmp;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 2088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->context:Lill;

    .line 1759
    invoke-virtual {v0}, Lill;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1760
    check-cast p1, Lcuy;

    .line 1762
    invoke-interface {p2}, Lgpt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lgpt;->Q_()Ljava/lang/String;

    move-result-object v4

    .line 1761
    invoke-static {v0, v4}, Ldvd;->a(Ljava/lang/String;Ljava/lang/String;)Lbfd;

    move-result-object v4

    .line 1764
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lbfd;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1765
    :goto_1
    if-eqz v0, :cond_3

    .line 1766
    iget-object v5, p1, Lcuy;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1770
    :goto_2
    invoke-interface {p2}, Lgpt;->S_()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1771
    iget-object v5, p1, Lcuy;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1772
    iget-object v5, p1, Lcuy;->d:Landroid/widget/TextView;

    invoke-interface {p2}, Lgpt;->V_()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1779
    iget-object v5, p1, Lcuy;->e:Landroid/widget/ImageView;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 1780
    invoke-static {}, Lbfq;->b()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1779
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1783
    :cond_1
    invoke-static {v4}, Ldvd;->d(Lbfd;)Z

    move-result v4

    .line 1784
    if-eqz v4, :cond_4

    .line 1785
    iget-object v5, p1, Lcuy;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1787
    iget-object v5, p1, Lcuy;->d:Landroid/widget/TextView;

    iget-object v6, p0, Lgmp;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 3088
    iget-object v6, v6, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->context:Lill;

    .line 1787
    sget v7, Laal;->hN:I

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1789
    sget v5, Lcom/google/android/apps/hangouts/hangout/StressMode;->gu:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p1, Lcuy;->d:Landroid/widget/TextView;

    .line 1790
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v1, v2

    .line 1789
    invoke-virtual {v3, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1791
    iget-object v2, p1, Lcuy;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1798
    :goto_3
    iget-object v1, p1, Lcuy;->a:Landroid/view/View;

    iget-object v2, p0, Lgmp;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 1799
    invoke-interface {p2}, Lgpt;->a()Ljava/lang/String;

    move-result-object v3

    .line 5088
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->a(Ljava/lang/CharSequence;ZZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1798
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 1764
    goto :goto_1

    .line 1768
    :cond_3
    iget-object v5, p1, Lcuy;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1793
    :cond_4
    iget-object v1, p1, Lcuy;->c:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1795
    iget-object v1, p1, Lcuy;->d:Landroid/widget/TextView;

    iget-object v2, p0, Lgmp;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 4088
    iget-object v2, v2, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->context:Lill;

    .line 1795
    sget v3, Laal;->hO:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_3
.end method
