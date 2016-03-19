.class final Lgmg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfin",
        "<",
        "Lglp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgmf;


# direct methods
.method constructor <init>(Lgmf;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lgmg;->a:Lgmf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lfim;)V
    .locals 1

    .prologue
    .line 58
    check-cast p1, Lglp;

    .line 1061
    iget-object v0, p0, Lgmg;->a:Lgmf;

    invoke-virtual {v0, p1}, Lgmf;->a(Lglp;)V

    .line 58
    return-void
.end method
