.class final Lbsj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcbd;


# instance fields
.field final synthetic a:Lbsi;


# direct methods
.method constructor <init>(Lbsi;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lbsj;->a:Lbsi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lbsj;->a:Lbsi;

    .line 3024
    iget-object v0, v0, Lbsi;->binder:Lilh;

    .line 62
    const-class v1, Lbvc;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvc;

    const/16 v1, 0x90f

    invoke-virtual {v0, v1}, Lbvc;->a(I)V

    .line 63
    iget-object v0, p0, Lbsj;->a:Lbsi;

    .line 4024
    iget-object v0, v0, Lbsi;->a:Lbpp;

    .line 63
    invoke-interface {v0}, Lbpp;->O()V

    .line 64
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lbsj;->a:Lbsi;

    .line 1024
    iget-object v0, v0, Lbsi;->binder:Lilh;

    .line 56
    const-class v1, Lbvc;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvc;

    const/16 v1, 0x90e

    invoke-virtual {v0, v1}, Lbvc;->a(I)V

    .line 57
    iget-object v0, p0, Lbsj;->a:Lbsi;

    .line 2024
    iget-object v0, v0, Lbsi;->a:Lbpp;

    .line 57
    invoke-interface {v0, p1}, Lbpp;->a(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lbsj;->a:Lbsi;

    .line 5024
    iget-object v0, v0, Lbsi;->binder:Lilh;

    .line 73
    const-class v1, Lbvc;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvc;

    const/16 v1, 0x910

    invoke-virtual {v0, v1}, Lbvc;->a(I)V

    .line 75
    iget-object v0, p0, Lbsj;->a:Lbsi;

    .line 6024
    iget-object v0, v0, Lbsi;->a:Lbpp;

    .line 75
    invoke-interface {v0}, Lbpp;->V()Z

    .line 76
    return-void
.end method
