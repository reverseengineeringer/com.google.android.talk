.class final Lhma;
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
        "Lmic;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Llyi;)Lmik;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Lmic;

    .line 1014
    new-instance v0, Lmik;

    invoke-direct {v0}, Lmik;-><init>()V

    .line 1015
    iput-object p1, v0, Lmik;->a:Lmic;

    .line 10
    return-object v0
.end method
