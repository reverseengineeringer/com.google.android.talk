.class public Lbtp;
.super Limg;
.source "SourceFile"

# interfaces
.implements Lbmv;


# instance fields
.field private a:Lhsc;

.field private final b:Lhsb;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Limg;-><init>()V

    .line 30
    new-instance v0, Lbtq;

    invoke-direct {v0, p0}, Lbtq;-><init>(Lbtp;)V

    iput-object v0, p0, Lbtp;->b:Lhsb;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lbtp;->binder:Lilh;

    const-class v1, Lbpq;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpq;

    invoke-interface {v0}, Lbpq;->i()V

    .line 56
    iget-object v0, p0, Lbtp;->binder:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 57
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 58
    sget-object v1, Lbhh;->a:Lbhh;

    invoke-static {v0, v1}, Laal;->a(Lbfd;Lbhh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1075
    iget-object v0, p0, Lbtp;->binder:Lilh;

    const-class v1, Lhpu;

    .line 1076
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    const/16 v1, 0x794

    .line 1075
    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 1078
    iget-object v0, p0, Lbtp;->binder:Lilh;

    const-class v1, Lcrv;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrv;

    .line 1079
    invoke-virtual {p0}, Lbtp;->getActivity()Lba;

    move-result-object v1

    invoke-interface {v0, v1}, Lcrv;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1080
    iget-object v1, p0, Lbtp;->a:Lhsc;

    sget v2, Laal;->jV:I

    invoke-virtual {v1, v2, v0}, Lhsc;->a(ILandroid/content/Intent;)V

    .line 63
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachBinder(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 39
    invoke-super {p0, p1}, Limg;->onAttachBinder(Landroid/os/Bundle;)V

    .line 41
    iget-object v0, p0, Lbtp;->binder:Lilh;

    const-class v1, Lhsc;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhsc;

    sget v1, Laal;->jV:I

    iget-object v2, p0, Lbtp;->b:Lhsb;

    .line 42
    invoke-virtual {v0, v1, v2}, Lhsc;->a(ILhsb;)Lhsc;

    move-result-object v0

    iput-object v0, p0, Lbtp;->a:Lhsc;

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method
