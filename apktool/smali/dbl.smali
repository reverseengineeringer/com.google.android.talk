.class final Ldbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field final synthetic a:Ldbh;


# direct methods
.method constructor <init>(Ldbh;)V
    .locals 0

    .prologue
    .line 817
    iput-object p1, p0, Ldbl;->a:Ldbh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 820
    instance-of v0, p2, Lfce;

    if-eqz v0, :cond_0

    .line 821
    const/16 v0, 0xc9

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->fF:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 824
    check-cast p2, Lfce;

    .line 825
    invoke-virtual {p2}, Lfce;->a()Lbdy;

    move-result-object v0

    .line 826
    iget-object v1, p0, Ldbl;->a:Ldbh;

    .line 1100
    iput-object v0, v1, Ldbh;->al:Lbdy;

    .line 827
    invoke-virtual {v0}, Lbdy;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    const/16 v0, 0xc8

    sget v1, Lcom/google/android/apps/hangouts/hangout/StressMode;->fn:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 830
    sget v0, Lcom/google/android/apps/hangouts/hangout/StressMode;->fj:I

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 834
    :cond_0
    return-void
.end method
