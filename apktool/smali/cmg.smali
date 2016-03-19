.class final Lcmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcme;


# direct methods
.method constructor <init>(Lcme;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcmg;->a:Lcme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcmg;->a:Lcme;

    .line 1029
    const/4 v1, 0x0

    iput-object v1, v0, Lcme;->e:Lcls;

    .line 132
    iget-object v0, p0, Lcmg;->a:Lcme;

    iget-object v1, p0, Lcmg;->a:Lcme;

    .line 2029
    iget-object v1, v1, Lcme;->c:Lcln;

    .line 132
    invoke-interface {v1}, Lcln;->a()Lkhk;

    move-result-object v1

    .line 3029
    invoke-virtual {v0, v1}, Lcme;->a(Lkhk;)V

    .line 133
    return-void
.end method
