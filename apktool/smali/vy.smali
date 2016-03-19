.class final Lvy;
.super Lmo;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Lvf;

.field private c:Z


# direct methods
.method constructor <init>(Lvf;I)V
    .locals 1

    .prologue
    .line 595
    iput-object p1, p0, Lvy;->b:Lvf;

    iput p2, p0, Lvy;->a:I

    invoke-direct {p0}, Lmo;-><init>()V

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvy;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lvy;->b:Lvf;

    .line 1058
    iget-object v0, v0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    .line 600
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 601
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 605
    iget-boolean v0, p0, Lvy;->c:Z

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lvy;->b:Lvf;

    .line 2058
    iget-object v0, v0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    .line 606
    iget v1, p0, Lvy;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 608
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvy;->c:Z

    .line 613
    return-void
.end method
