.class final Lbxc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbxb;


# direct methods
.method constructor <init>(Lbxb;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lbxc;->a:Lbxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lbxc;->a:Lbxb;

    iget-object v0, v0, Lbxb;->a:Lbwy;

    .line 1077
    iget-object v0, v0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    .line 458
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->setPressed(Z)V

    .line 459
    iget-object v0, p0, Lbxc;->a:Lbxb;

    iget-object v0, v0, Lbxb;->a:Lbwy;

    .line 2077
    iget-object v0, v0, Lbwy;->g:Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;

    .line 459
    invoke-virtual {v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->performClick()Z

    .line 460
    return-void
.end method
