.class final Lcty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lctx;


# direct methods
.method constructor <init>(Lctx;ILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1137
    iput-object p1, p0, Lcty;->c:Lctx;

    iput p2, p0, Lcty;->a:I

    iput-object p3, p0, Lcty;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1140
    iget-object v0, p0, Lcty;->c:Lctx;

    iget-object v0, v0, Lctx;->b:Lctt;

    .line 2080
    iget-object v0, v0, Lctt;->d:Landroid/content/Context;

    .line 1140
    const-class v1, Leat;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leat;

    iget v1, p0, Lcty;->a:I

    .line 1141
    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    iget-object v2, p0, Lcty;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Leat;->a(Lbfd;Ljava/util/ArrayList;)I

    move-result v0

    .line 1143
    iget-object v1, p0, Lcty;->c:Lctx;

    .line 2122
    invoke-virtual {v1, v0}, Lctx;->a(I)V

    .line 1144
    return-void
.end method
