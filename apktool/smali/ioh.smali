.class final Lioh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liol;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Liog;


# direct methods
.method constructor <init>(Liog;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lioh;->b:Liog;

    iput-object p2, p0, Lioh;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lioz;)V
    .locals 2

    .prologue
    .line 139
    instance-of v0, p1, Lioo;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lioh;->b:Liog;

    iget-object v1, p0, Lioh;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Liog;->a(Lioz;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 141
    check-cast p1, Lioo;

    invoke-interface {p1, v0}, Lioo;->a(Landroid/os/Bundle;)V

    .line 143
    :cond_0
    return-void
.end method
