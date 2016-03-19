.class final Lgmj;
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
.field final synthetic a:Lgmi;


# direct methods
.method constructor <init>(Lgmi;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lgmj;->a:Lgmi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lfim;)V
    .locals 1

    .prologue
    .line 50
    check-cast p1, Lglp;

    .line 1053
    iget-object v0, p0, Lgmj;->a:Lgmi;

    invoke-virtual {v0, p1}, Lgmi;->a(Lglp;)V

    .line 50
    return-void
.end method
