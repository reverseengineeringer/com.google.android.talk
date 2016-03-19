.class final Lboa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsb;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lboa;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lboa;->a:Lbng;

    .line 1285
    iget-object v0, v0, Lbng;->context:Lill;

    .line 379
    invoke-static {v0, p1, p2}, Laal;->a(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 380
    return-void
.end method
