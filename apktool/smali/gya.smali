.class final Lgya;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfih;


# instance fields
.field final synthetic a:Lgxo;

.field final synthetic b:Lgxy;


# direct methods
.method constructor <init>(Lgxy;Lgxo;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lgya;->b:Lgxy;

    iput-object p2, p0, Lgya;->a:Lgxo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lgya;->a:Lgxo;

    iget-object v1, p0, Lgya;->b:Lgxy;

    invoke-virtual {v1, p1}, Lgxy;->a(Lcom/google/android/gms/common/ConnectionResult;)Lgxf;

    move-result-object v1

    invoke-interface {v0, v1}, Lgxo;->a(Lgxf;)V

    .line 126
    return-void
.end method
