.class final Lbai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lazr;


# instance fields
.field final synthetic a:Lba;

.field final synthetic b:Lbah;


# direct methods
.method constructor <init>(Lbah;Lba;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lbai;->b:Lbah;

    iput-object p2, p0, Lbai;->a:Lba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lazo;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lbai;->a:Lba;

    new-instance v1, Lbaj;

    invoke-direct {v1, p0, p1}, Lbaj;-><init>(Lbai;Lazo;)V

    invoke-virtual {v0, v1}, Lba;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method
