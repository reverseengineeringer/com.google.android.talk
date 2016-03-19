.class final Lwj;
.super Ltx;
.source "SourceFile"


# instance fields
.field final synthetic f:Lwe;


# direct methods
.method public constructor <init>(Lwe;Landroid/content/Context;Ltl;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 698
    iput-object p1, p0, Lwj;->f:Lwe;

    .line 699
    const/4 v4, 0x1

    sget v5, Laen;->F:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ltx;-><init>(Landroid/content/Context;Ltl;Landroid/view/View;ZI)V

    .line 700
    invoke-virtual {p0}, Lwj;->a()V

    .line 701
    iget-object v0, p1, Lwe;->k:Lwk;

    invoke-virtual {p0, v0}, Lwj;->a(Lua;)V

    .line 702
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 706
    invoke-super {p0}, Ltx;->onDismiss()V

    .line 707
    iget-object v0, p0, Lwj;->f:Lwe;

    .line 1052
    iget-object v0, v0, Lwe;->c:Ltl;

    .line 707
    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lwj;->f:Lwe;

    .line 2052
    iget-object v0, v0, Lwe;->c:Ltl;

    .line 708
    invoke-virtual {v0}, Ltl;->close()V

    .line 710
    :cond_0
    iget-object v0, p0, Lwj;->f:Lwe;

    .line 3052
    const/4 v1, 0x0

    iput-object v1, v0, Lwe;->h:Lwj;

    .line 711
    return-void
.end method
