.class final Lejn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijh;


# instance fields
.field final synthetic a:Lejl;


# direct methods
.method constructor <init>(Lejl;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lejn;->a:Lejl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lejn;->a:Lejl;

    invoke-virtual {v0}, Lejl;->getActivity()Lba;

    move-result-object v0

    const-class v1, Lhba;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iget-object v1, p0, Lejn;->a:Lejl;

    .line 1038
    iget-object v1, v1, Lejl;->b:Lbfd;

    .line 103
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0xb59

    .line 104
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    .line 105
    iget-object v0, p0, Lejn;->a:Lejl;

    invoke-virtual {v0}, Lejl;->getActivity()Lba;

    move-result-object v0

    iget-object v1, p0, Lejn;->a:Lejl;

    .line 2038
    iget-object v1, v1, Lejl;->b:Lbfd;

    .line 105
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-static {v1}, Laal;->d(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lba;->startActivity(Landroid/content/Intent;)V

    .line 106
    const/4 v0, 0x1

    return v0
.end method
