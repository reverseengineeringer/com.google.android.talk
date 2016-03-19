.class final Lhlt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhlv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhlv",
        "<",
        "Lmhw;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;)Lmik;
    .locals 1

    .prologue
    .line 9
    check-cast p1, Lmhw;

    .line 1013
    new-instance v0, Lmik;

    invoke-direct {v0}, Lmik;-><init>()V

    .line 1014
    iput-object p1, v0, Lmik;->g:Lmhw;

    .line 9
    return-object v0
.end method
