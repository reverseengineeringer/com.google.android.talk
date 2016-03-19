.class final Lckn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcgn;

.field final synthetic b:Lhkx;

.field final synthetic c:Lckh;


# direct methods
.method constructor <init>(Lckh;Lcgn;Lhkx;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lckn;->c:Lckh;

    iput-object p2, p0, Lckn;->a:Lcgn;

    iput-object p3, p0, Lckn;->b:Lhkx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 192
    iget-object v0, p0, Lckn;->a:Lcgn;

    iget-object v1, p0, Lckn;->b:Lhkx;

    invoke-virtual {v1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v1

    .line 2045
    new-instance v2, Lcfv;

    invoke-direct {v2}, Lcfv;-><init>()V

    .line 2048
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2049
    const-string v4, "key_participant_id"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    invoke-virtual {v2, v3}, Lcfv;->setArguments(Landroid/os/Bundle;)V

    .line 1226
    invoke-virtual {v0}, Lcgn;->e()Lbg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lcfv;->a(Lbg;Ljava/lang/String;)V

    .line 193
    return-void
.end method
