.class final Lcue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcud;


# direct methods
.method constructor <init>(Lcud;ILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcue;->c:Lcud;

    iput p2, p0, Lcue;->a:I

    iput-object p3, p0, Lcue;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcue;->c:Lcud;

    .line 1295
    iget-object v0, v0, Lcud;->c:Landroid/content/Context;

    .line 316
    const-class v1, Leat;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leat;

    iget v1, p0, Lcue;->a:I

    .line 317
    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    iget-object v2, p0, Lcue;->b:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Leat;->a(Lbfd;Ljava/util/ArrayList;)I

    move-result v0

    .line 319
    iget-object v1, p0, Lcue;->c:Lcud;

    .line 2295
    invoke-virtual {v1, v0}, Lcud;->a(I)V

    .line 320
    return-void
.end method
