.class final Lbgx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbgw;


# direct methods
.method constructor <init>(Lbgw;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lbgx;->a:Lbgw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lbgx;->a:Lbgw;

    iget-object v0, v0, Lbgw;->b:Landroid/content/Context;

    const-class v1, Laxz;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxz;

    invoke-interface {v0}, Laxz;->a()V

    .line 263
    return-void
.end method
