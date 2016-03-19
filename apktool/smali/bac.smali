.class final Lbac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lazr;


# instance fields
.field final synthetic a:Lbaa;

.field final synthetic b:Lbab;


# direct methods
.method constructor <init>(Lbab;Lbaa;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lbac;->b:Lbab;

    iput-object p2, p0, Lbac;->a:Lbaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lazo;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lbac;->b:Lbab;

    .line 1035
    iget-object v0, v0, Lbab;->b:Lba;

    .line 50
    new-instance v1, Lbad;

    invoke-direct {v1, p0, p1}, Lbad;-><init>(Lbac;Lazo;)V

    invoke-virtual {v0, v1}, Lba;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
