.class final Lbtq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsb;


# instance fields
.field final synthetic a:Lbtp;


# direct methods
.method constructor <init>(Lbtp;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lbtq;->a:Lbtp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lbtq;->a:Lbtp;

    .line 1026
    iget-object v0, v0, Lbtp;->context:Lill;

    .line 33
    invoke-static {v0, p1, p2}, Laal;->a(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 34
    return-void
.end method
