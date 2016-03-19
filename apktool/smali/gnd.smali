.class public final Lgnd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;)V
    .locals 0

    .prologue
    .line 2897
    iput-object p1, p0, Lgnd;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lgne;Lgpt;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgne;",
            "Lgpt;",
            "Ljava/util/List",
            "<",
            "Lgpt;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v8, 0x1

    const/4 v5, 0x0

    move-object v7, p1

    .line 1903
    check-cast v7, Lcvb;

    .line 1905
    invoke-interface {p2}, Lgpt;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lgpt;->Q_()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldvd;->a(Ljava/lang/String;Ljava/lang/String;)Lbfd;

    move-result-object v0

    .line 1906
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lbfd;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1907
    iget-object v0, v7, Lcvb;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1908
    iget-object v0, v7, Lcvb;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1911
    iget-object v1, p0, Lgnd;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->je:I

    new-array v3, v8, [Ljava/lang/Object;

    .line 1912
    invoke-interface {p2}, Lgpt;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1911
    invoke-static {v0, v1}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1913
    iget-object v1, p0, Lgnd;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 1914
    invoke-virtual {v1}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->jL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1913
    invoke-static {v0, v1}, Lezc;->a(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1915
    iget-object v1, v7, Lcvb;->l:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1920
    :goto_0
    invoke-interface {p2}, Lgpt;->S_()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgnd;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    .line 2088
    iget-object v0, v0, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->aq:Lgpt;

    .line 1920
    if-ne p2, v0, :cond_1

    .line 1921
    :cond_0
    iget-object v0, p1, Lgne;->r:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1924
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1925
    iget-object v0, p0, Lgnd;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgpt;

    iget-object v2, v7, Lcvb;->s:Landroid/view/View;

    iget-object v3, v7, Lcvb;->d:Landroid/widget/ImageView;

    iget-object v4, v7, Lcvb;->f:Landroid/widget/ImageView;

    iget-object v5, v7, Lcvb;->c:Landroid/widget/ImageView;

    iget-object v6, v7, Lcvb;->e:Landroid/widget/ImageView;

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->a(Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;Lgpt;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 1929
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_3

    .line 1930
    iget-object v0, p0, Lgnd;->a:Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;

    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgpt;

    iget-object v2, v7, Lcvb;->t:Landroid/view/View;

    iget-object v3, v7, Lcvb;->h:Landroid/widget/ImageView;

    iget-object v4, v7, Lcvb;->j:Landroid/widget/ImageView;

    iget-object v5, v7, Lcvb;->g:Landroid/widget/ImageView;

    iget-object v6, v7, Lcvb;->i:Landroid/widget/ImageView;

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;->a(Lcom/google/android/apps/hangouts/navigation/NavigationDrawerFragment;Lgpt;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 1934
    :cond_3
    return-void

    .line 1917
    :cond_4
    iget-object v0, v7, Lcvb;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1918
    iget-object v0, v7, Lcvb;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
