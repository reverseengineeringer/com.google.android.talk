.class final Lbox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lbox;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lbox;->a:Lbng;

    .line 1285
    iget-boolean v0, v0, Lbng;->ba:Z

    .line 2134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 901
    iget-object v0, p0, Lbox;->a:Lbng;

    invoke-virtual {v0}, Lbng;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbox;->a:Lbng;

    .line 2285
    invoke-virtual {v0}, Lbng;->isPaused()Z

    move-result v0

    .line 901
    if-nez v0, :cond_0

    .line 902
    iget-object v0, p0, Lbox;->a:Lbng;

    invoke-virtual {v0}, Lbng;->getView()Landroid/view/View;

    move-result-object v0

    .line 903
    if-eqz v0, :cond_0

    .line 904
    iget-object v1, p0, Lbox;->a:Lbng;

    .line 3285
    invoke-virtual {v1, v0}, Lbng;->showEmptyViewProgress(Landroid/view/View;)V

    .line 907
    :cond_0
    return-void
.end method
