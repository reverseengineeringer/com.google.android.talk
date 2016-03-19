.class final Lbnz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 3579
    iput-object p1, p0, Lbnz;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    .prologue
    .line 3604
    iget-object v0, p0, Lbnz;->a:Lbng;

    .line 4285
    iget v0, v0, Lbng;->aM:I

    .line 3604
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3605
    iget-object v0, p0, Lbnz;->a:Lbng;

    .line 5285
    iput p3, v0, Lbng;->aM:I

    .line 3611
    :cond_0
    iget-object v0, p0, Lbnz;->a:Lbng;

    .line 6524
    invoke-virtual {v0}, Lbng;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laal;->jB:I

    .line 6525
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6539
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 3611
    :goto_0
    if-eqz v0, :cond_1

    .line 3612
    iget-object v0, p0, Lbnz;->a:Lbng;

    .line 7285
    iget-object v0, v0, Lbng;->aO:Lbks;

    .line 3612
    iget-object v1, p0, Lbnz;->a:Lbng;

    .line 8285
    iget v1, v1, Lbng;->aM:I

    .line 3612
    invoke-interface {v0, v1}, Lbks;->a(I)V

    .line 3614
    :cond_1
    return-void

    .line 6539
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
