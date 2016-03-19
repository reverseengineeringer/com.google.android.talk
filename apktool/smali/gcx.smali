.class public final Lgcx;
.super Lfir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfir;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic i:Lgll;

.field final synthetic j:Lglg;


# direct methods
.method public constructor <init>(Lglg;Lfic;Ljava/lang/String;Ljava/lang/String;Lgll;)V
    .locals 1

    iput-object p1, p0, Lgcx;->j:Lglg;

    iput-object p3, p0, Lgcx;->a:Ljava/lang/String;

    iput-object p4, p0, Lgcx;->b:Ljava/lang/String;

    iput-object p5, p0, Lgcx;->i:Lgll;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lfir;-><init>(Lfic;C)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/google/android/gms/common/api/Status;)Lfim;
    .locals 1

    .prologue
    .line 2000
    new-instance v0, Lgcy;

    invoke-direct {v0, p0, p1}, Lgcy;-><init>(Lgcx;Lcom/google/android/gms/common/api/Status;)V

    .line 0
    return-object v0
.end method

.method protected synthetic a(Lfia;)V
    .locals 3

    .prologue
    .line 0
    check-cast p1, Lgot;

    .line 1000
    iget-object v0, p0, Lgcx;->a:Ljava/lang/String;

    iget-object v1, p0, Lgcx;->b:Ljava/lang/String;

    iget-object v2, p0, Lgcx;->i:Lgll;

    invoke-virtual {p1, p0, v0, v1, v2}, Lgot;->a(Lfis;Ljava/lang/String;Ljava/lang/String;Lgll;)V

    .line 0
    return-void
.end method
