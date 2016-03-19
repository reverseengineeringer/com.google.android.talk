.class final Lfxt;
.super Ljava/lang/Object;

# interfaces
.implements Lfxw;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lfxs;


# direct methods
.method constructor <init>(Lfxs;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lfxt;->b:Lfxs;

    iput-object p2, p0, Lfxt;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 0
    iget-object v0, p0, Lfxt;->b:Lfxs;

    .line 1000
    iget-object v0, v0, Lfxs;->a:Lfxr;

    .line 0
    iget-object v1, p0, Lfxt;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lfxr;->a(Landroid/os/Bundle;)V

    return-void
.end method
