.class final Lbol;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbps;

.field final synthetic b:Lbng;


# direct methods
.method constructor <init>(Lbng;Lbps;)V
    .locals 0

    .prologue
    .line 5564
    iput-object p1, p0, Lbol;->b:Lbng;

    iput-object p2, p0, Lbol;->a:Lbps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5567
    iget-object v0, p0, Lbol;->a:Lbps;

    iget-object v1, p0, Lbol;->b:Lbng;

    .line 6285
    iget-object v1, v1, Lbng;->context:Lill;

    .line 5567
    invoke-virtual {v0, v1}, Lbps;->a(Landroid/content/Context;)V

    .line 5568
    return-void
.end method
