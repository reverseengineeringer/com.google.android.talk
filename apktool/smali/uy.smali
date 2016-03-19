.class public final Luy;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Luy;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 269
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 270
    iget-object v0, p0, Luy;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    .line 1521
    iget-object v1, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Luz;

    invoke-virtual {v1}, Luz;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1522
    iget-object v1, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1527
    :goto_0
    iget-object v1, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Luz;

    invoke-virtual {v1}, Luz;->c()I

    move-result v1

    .line 1528
    iget-object v2, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Luz;

    invoke-virtual {v2}, Luz;->d()I

    move-result v2

    .line 1529
    if-eq v1, v5, :cond_0

    if-le v1, v5, :cond_3

    if-lez v2, :cond_3

    .line 1530
    :cond_0
    iget-object v1, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1531
    iget-object v1, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Luz;

    invoke-virtual {v1}, Luz;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1532
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1533
    iget-object v3, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1534
    iget v3, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->l:I

    if-eqz v3, :cond_1

    .line 1535
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1536
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->l:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1538
    iget-object v2, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1544
    :cond_1
    :goto_1
    iget-object v1, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 1545
    iget-object v1, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lys;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lys;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void

    .line 1524
    :cond_2
    iget-object v1, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 1541
    :cond_3
    iget-object v1, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->e:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 1547
    :cond_4
    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->b:Lys;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lys;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
