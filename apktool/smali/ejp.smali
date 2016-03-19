.class final Lejp;
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
    .line 153
    iput-object p1, p0, Lejp;->a:Lejl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    .line 156
    iget-object v1, p0, Lejp;->a:Lejl;

    .line 1179
    iget-object v0, v1, Lejl;->context:Lill;

    const-class v2, Ldkb;

    invoke-static {v0, v2}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkb;

    .line 1181
    if-eqz v0, :cond_0

    .line 1182
    iget-object v2, v1, Lejl;->context:Lill;

    iget-object v3, v1, Lejl;->b:Lbfd;

    .line 1183
    invoke-virtual {v3}, Lbfd;->g()I

    move-result v3

    .line 1182
    invoke-interface {v0, v2, v3}, Ldkb;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 1184
    iget-object v1, v1, Lejl;->context:Lill;

    invoke-virtual {v1, v0}, Lill;->startActivity(Landroid/content/Intent;)V

    .line 157
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
