.class public final Labm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/app/ActionBar;


# direct methods
.method public constructor <init>(Landroid/app/ActionBar;)V
    .locals 0

    .prologue
    .line 2027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2028
    iput-object p1, p0, Labm;->a:Landroid/app/ActionBar;

    .line 2029
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Labm;->a:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1034
    return-void
.end method

.method public a(Labn;)V
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Labm;->a:Landroid/app/ActionBar;

    new-instance v1, Labo;

    invoke-direct {v1, p0, p1}, Labo;-><init>(Labm;Labn;)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 1039
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Labm;->a:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1074
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Labm;->a:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1054
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1043
    iget-object v0, p0, Labm;->a:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1044
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Labm;->a:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1059
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Labm;->a:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1064
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Labm;->a:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 1069
    return-void
.end method
