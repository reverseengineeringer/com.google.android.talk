.class final Lbhu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leys;

.field final synthetic b:Lbhs;


# direct methods
.method constructor <init>(Lbhs;Leys;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lbhu;->b:Lbhs;

    iput-object p2, p0, Lbhu;->a:Leys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 434
    const-class v1, Leit;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leit;

    iget-object v1, p0, Lbhu;->b:Lbhs;

    iget-object v2, p0, Lbhu;->a:Leys;

    .line 435
    invoke-virtual {v0, v1, v2}, Leit;->a(Lejc;Lejb;)V

    .line 436
    return-void
.end method
